¯
Î¤
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.22v2.8.2-0-g2ea19cbb5758ïÐ

embedding_35/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ôu *(
shared_nameembedding_35/embeddings

+embedding_35/embeddings/Read/ReadVariableOpReadVariableOpembedding_35/embeddings*
_output_shapes
:	ôu *
dtype0
z
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_69/kernel
s
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes

: *
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
_output_shapes
:*
dtype0
z
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_70/kernel
s
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes

:*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_33/lstm_cell_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *,
shared_namelstm_33/lstm_cell_33/kernel

/lstm_33/lstm_cell_33/kernel/Read/ReadVariableOpReadVariableOplstm_33/lstm_cell_33/kernel*
_output_shapes
:	 *
dtype0
§
%lstm_33/lstm_cell_33/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *6
shared_name'%lstm_33/lstm_cell_33/recurrent_kernel
 
9lstm_33/lstm_cell_33/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_33/lstm_cell_33/recurrent_kernel*
_output_shapes
:	 *
dtype0

lstm_33/lstm_cell_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_33/lstm_cell_33/bias

-lstm_33/lstm_cell_33/bias/Read/ReadVariableOpReadVariableOplstm_33/lstm_cell_33/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_35/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ôu */
shared_name Adam/embedding_35/embeddings/m

2Adam/embedding_35/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_35/embeddings/m*
_output_shapes
:	ôu *
dtype0

Adam/dense_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_69/kernel/m

*Adam/dense_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/m
y
(Adam/dense_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/m*
_output_shapes
:*
dtype0

Adam/dense_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_70/kernel/m

*Adam/dense_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_70/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_70/bias/m
y
(Adam/dense_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_70/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_33/lstm_cell_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_33/lstm_cell_33/kernel/m

6Adam/lstm_33/lstm_cell_33/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_33/lstm_cell_33/kernel/m*
_output_shapes
:	 *
dtype0
µ
,Adam/lstm_33/lstm_cell_33/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_33/lstm_cell_33/recurrent_kernel/m
®
@Adam/lstm_33/lstm_cell_33/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_33/lstm_cell_33/recurrent_kernel/m*
_output_shapes
:	 *
dtype0

 Adam/lstm_33/lstm_cell_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_33/lstm_cell_33/bias/m

4Adam/lstm_33/lstm_cell_33/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_33/lstm_cell_33/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding_35/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ôu */
shared_name Adam/embedding_35/embeddings/v

2Adam/embedding_35/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_35/embeddings/v*
_output_shapes
:	ôu *
dtype0

Adam/dense_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_69/kernel/v

*Adam/dense_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/v
y
(Adam/dense_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/v*
_output_shapes
:*
dtype0

Adam/dense_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_70/kernel/v

*Adam/dense_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_70/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_70/bias/v
y
(Adam/dense_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_70/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_33/lstm_cell_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_33/lstm_cell_33/kernel/v

6Adam/lstm_33/lstm_cell_33/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_33/lstm_cell_33/kernel/v*
_output_shapes
:	 *
dtype0
µ
,Adam/lstm_33/lstm_cell_33/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *=
shared_name.,Adam/lstm_33/lstm_cell_33/recurrent_kernel/v
®
@Adam/lstm_33/lstm_cell_33/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_33/lstm_cell_33/recurrent_kernel/v*
_output_shapes
:	 *
dtype0

 Adam/lstm_33/lstm_cell_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_33/lstm_cell_33/bias/v

4Adam/lstm_33/lstm_cell_33/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_33/lstm_cell_33/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
E
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÔD
valueÊDBÇD BÀD

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¥
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses* 
¦

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
¥
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses* 
¦

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
ä
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratem'm(m6m7mCmDmEmv'v(v6v7vCvDvEv*
<
0
C1
D2
E3
'4
(5
66
77*
<
0
C1
D2
E3
'4
(5
66
77*
* 
°
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Kserving_default* 
ke
VARIABLE_VALUEembedding_35/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
ã
Q
state_size

Ckernel
Drecurrent_kernel
Ebias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V_random_generator
W__call__
*X&call_and_return_all_conditional_losses*
* 

C0
D1
E2*

C0
D1
E2*
* 


Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_69/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_69/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
* 
* 
* 

inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_70/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_70/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_33/lstm_cell_33/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_33/lstm_cell_33/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_33/lstm_cell_33/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

s0
t1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1
E2*

C0
D1
E2*
* 

unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
R	variables
Strainable_variables
Tregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	ztotal
	{count
|	variables
}	keras_api*
K
	~total
	count

_fn_kwargs
	variables
	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

z0
{1*

|	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

	variables*

VARIABLE_VALUEAdam/embedding_35/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_69/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_69/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_70/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_70/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_33/lstm_cell_33/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_33/lstm_cell_33/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_33/lstm_cell_33/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_35/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_69/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_69/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_70/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_70/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_33/lstm_cell_33/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_33/lstm_cell_33/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_33/lstm_cell_33/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_embedding_35_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCall"serving_default_embedding_35_inputembedding_35/embeddingslstm_33/lstm_cell_33/kernel%lstm_33/lstm_cell_33/recurrent_kernellstm_33/lstm_cell_33/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_211843
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Í
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_35/embeddings/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOp#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_33/lstm_cell_33/kernel/Read/ReadVariableOp9lstm_33/lstm_cell_33/recurrent_kernel/Read/ReadVariableOp-lstm_33/lstm_cell_33/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/embedding_35/embeddings/m/Read/ReadVariableOp*Adam/dense_69/kernel/m/Read/ReadVariableOp(Adam/dense_69/bias/m/Read/ReadVariableOp*Adam/dense_70/kernel/m/Read/ReadVariableOp(Adam/dense_70/bias/m/Read/ReadVariableOp6Adam/lstm_33/lstm_cell_33/kernel/m/Read/ReadVariableOp@Adam/lstm_33/lstm_cell_33/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_33/lstm_cell_33/bias/m/Read/ReadVariableOp2Adam/embedding_35/embeddings/v/Read/ReadVariableOp*Adam/dense_69/kernel/v/Read/ReadVariableOp(Adam/dense_69/bias/v/Read/ReadVariableOp*Adam/dense_70/kernel/v/Read/ReadVariableOp(Adam/dense_70/bias/v/Read/ReadVariableOp6Adam/lstm_33/lstm_cell_33/kernel/v/Read/ReadVariableOp@Adam/lstm_33/lstm_cell_33/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_33/lstm_cell_33/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_212790
´
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_35/embeddingsdense_69/kerneldense_69/biasdense_70/kerneldense_70/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_33/lstm_cell_33/kernel%lstm_33/lstm_cell_33/recurrent_kernellstm_33/lstm_cell_33/biastotalcounttotal_1count_1Adam/embedding_35/embeddings/mAdam/dense_69/kernel/mAdam/dense_69/bias/mAdam/dense_70/kernel/mAdam/dense_70/bias/m"Adam/lstm_33/lstm_cell_33/kernel/m,Adam/lstm_33/lstm_cell_33/recurrent_kernel/m Adam/lstm_33/lstm_cell_33/bias/mAdam/embedding_35/embeddings/vAdam/dense_69/kernel/vAdam/dense_69/bias/vAdam/dense_70/kernel/vAdam/dense_70/bias/v"Adam/lstm_33/lstm_cell_33/kernel/v,Adam/lstm_33/lstm_cell_33/recurrent_kernel/v Adam/lstm_33/lstm_cell_33/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_212899­¬
8
Ð
while_body_211186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	 H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	 F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_33_biasadd_readvariableop_resource:	¢)while/lstm_cell_33/BiasAdd/ReadVariableOp¢(while/lstm_cell_33/MatMul/ReadVariableOp¢*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0º
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¡
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ð

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
8
Ð
while_body_212249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	 H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	 F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_33_biasadd_readvariableop_resource:	¢)while/lstm_cell_33/BiasAdd/ReadVariableOp¢(while/lstm_cell_33/MatMul/ReadVariableOp¢*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0º
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¡
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ð

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Ý

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212668

inputs
states_0
states_11
matmul_readvariableop_resource:	 3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
¡
G
+__inference_dropout_68_layer_call_fn_212528

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_68_layer_call_and_return_conditional_losses_211009`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

I__inference_sequential_35_layer_call_and_return_conditional_losses_211402
embedding_35_input&
embedding_35_211379:	ôu !
lstm_33_211382:	 !
lstm_33_211384:	 
lstm_33_211386:	!
dense_69_211390: 
dense_69_211392:!
dense_70_211396:
dense_70_211398:
identity¢ dense_69/StatefulPartitionedCall¢ dense_70/StatefulPartitionedCall¢$embedding_35/StatefulPartitionedCall¢lstm_33/StatefulPartitionedCallù
$embedding_35/StatefulPartitionedCallStatefulPartitionedCallembedding_35_inputembedding_35_211379*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_35_layer_call_and_return_conditional_losses_210826¥
lstm_33/StatefulPartitionedCallStatefulPartitionedCall-embedding_35/StatefulPartitionedCall:output:0lstm_33_211382lstm_33_211384lstm_33_211386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_210972Þ
dropout_67/PartitionedCallPartitionedCall(lstm_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_67_layer_call_and_return_conditional_losses_210985
 dense_69/StatefulPartitionedCallStatefulPartitionedCall#dropout_67/PartitionedCall:output:0dense_69_211390dense_69_211392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_210998ß
dropout_68/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_68_layer_call_and_return_conditional_losses_211009
 dense_70/StatefulPartitionedCallStatefulPartitionedCall#dropout_68/PartitionedCall:output:0dense_70_211396dense_70_211398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_211022x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
NoOpNoOp!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall%^embedding_35/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_35_input
ù

"__inference__traced_restore_212899
file_prefix;
(assignvariableop_embedding_35_embeddings:	ôu 4
"assignvariableop_1_dense_69_kernel: .
 assignvariableop_2_dense_69_bias:4
"assignvariableop_3_dense_70_kernel:.
 assignvariableop_4_dense_70_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: B
/assignvariableop_10_lstm_33_lstm_cell_33_kernel:	 L
9assignvariableop_11_lstm_33_lstm_cell_33_recurrent_kernel:	 <
-assignvariableop_12_lstm_33_lstm_cell_33_bias:	#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: E
2assignvariableop_17_adam_embedding_35_embeddings_m:	ôu <
*assignvariableop_18_adam_dense_69_kernel_m: 6
(assignvariableop_19_adam_dense_69_bias_m:<
*assignvariableop_20_adam_dense_70_kernel_m:6
(assignvariableop_21_adam_dense_70_bias_m:I
6assignvariableop_22_adam_lstm_33_lstm_cell_33_kernel_m:	 S
@assignvariableop_23_adam_lstm_33_lstm_cell_33_recurrent_kernel_m:	 C
4assignvariableop_24_adam_lstm_33_lstm_cell_33_bias_m:	E
2assignvariableop_25_adam_embedding_35_embeddings_v:	ôu <
*assignvariableop_26_adam_dense_69_kernel_v: 6
(assignvariableop_27_adam_dense_69_bias_v:<
*assignvariableop_28_adam_dense_70_kernel_v:6
(assignvariableop_29_adam_dense_70_bias_v:I
6assignvariableop_30_adam_lstm_33_lstm_cell_33_kernel_v:	 S
@assignvariableop_31_adam_lstm_33_lstm_cell_33_recurrent_kernel_v:	 C
4assignvariableop_32_adam_lstm_33_lstm_cell_33_bias_v:	
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9º
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*à
valueÖBÓ"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_embedding_35_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_69_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_69_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_70_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_70_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_33_lstm_cell_33_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_33_lstm_cell_33_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_33_lstm_cell_33_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_embedding_35_embeddings_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_69_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_69_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_70_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_70_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_33_lstm_cell_33_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adam_lstm_33_lstm_cell_33_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_33_lstm_cell_33_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_embedding_35_embeddings_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_69_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_69_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_70_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_70_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_33_lstm_cell_33_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_33_lstm_cell_33_recurrent_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_33_lstm_cell_33_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¨J

C__inference_lstm_33_layer_call_and_return_conditional_losses_211270

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	 @
-lstm_cell_33_matmul_1_readvariableop_resource:	 ;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity¢#lstm_cell_33/BiasAdd/ReadVariableOp¢"lstm_cell_33/MatMul/ReadVariableOp¢$lstm_cell_33/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_211186*
condR
while_cond_211185*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ØA
Ð

lstm_33_while_body_211541,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3+
'lstm_33_while_lstm_33_strided_slice_1_0g
clstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0:	 P
=lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 K
<lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0:	
lstm_33_while_identity
lstm_33_while_identity_1
lstm_33_while_identity_2
lstm_33_while_identity_3
lstm_33_while_identity_4
lstm_33_while_identity_5)
%lstm_33_while_lstm_33_strided_slice_1e
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorL
9lstm_33_while_lstm_cell_33_matmul_readvariableop_resource:	 N
;lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource:	 I
:lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource:	¢1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp¢0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp¢2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp
?lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Î
1lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0lstm_33_while_placeholderHlstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0­
0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp;lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Ò
!lstm_33/while/lstm_cell_33/MatMulMatMul8lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp=lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¹
#lstm_33/while/lstm_cell_33/MatMul_1MatMullstm_33_while_placeholder_2:lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_33/while/lstm_cell_33/addAddV2+lstm_33/while/lstm_cell_33/MatMul:product:0-lstm_33/while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp<lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_33/while/lstm_cell_33/BiasAddBiasAdd"lstm_33/while/lstm_cell_33/add:z:09lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_33/while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_33/while/lstm_cell_33/splitSplit3lstm_33/while/lstm_cell_33/split/split_dim:output:0+lstm_33/while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
"lstm_33/while/lstm_cell_33/SigmoidSigmoid)lstm_33/while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$lstm_33/while/lstm_cell_33/Sigmoid_1Sigmoid)lstm_33/while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/while/lstm_cell_33/mulMul(lstm_33/while/lstm_cell_33/Sigmoid_1:y:0lstm_33_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/while/lstm_cell_33/ReluRelu)lstm_33/while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
 lstm_33/while/lstm_cell_33/mul_1Mul&lstm_33/while/lstm_cell_33/Sigmoid:y:0-lstm_33/while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¥
 lstm_33/while/lstm_cell_33/add_1AddV2"lstm_33/while/lstm_cell_33/mul:z:0$lstm_33/while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$lstm_33/while/lstm_cell_33/Sigmoid_2Sigmoid)lstm_33/while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!lstm_33/while/lstm_cell_33/Relu_1Relu$lstm_33/while/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
 lstm_33/while/lstm_cell_33/mul_2Mul(lstm_33/while/lstm_cell_33/Sigmoid_2:y:0/lstm_33/while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ å
2lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_33_while_placeholder_1lstm_33_while_placeholder$lstm_33/while/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_33/while/addAddV2lstm_33_while_placeholderlstm_33/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_33/while/add_1AddV2(lstm_33_while_lstm_33_while_loop_counterlstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_33/while/IdentityIdentitylstm_33/while/add_1:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 
lstm_33/while/Identity_1Identity.lstm_33_while_lstm_33_while_maximum_iterations^lstm_33/while/NoOp*
T0*
_output_shapes
: q
lstm_33/while/Identity_2Identitylstm_33/while/add:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: ±
lstm_33/while/Identity_3IdentityBlstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_33/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_33/while/Identity_4Identity$lstm_33/while/lstm_cell_33/mul_2:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/while/Identity_5Identity$lstm_33/while/lstm_cell_33/add_1:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ð
lstm_33/while/NoOpNoOp2^lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp1^lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp3^lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_33_while_identitylstm_33/while/Identity:output:0"=
lstm_33_while_identity_1!lstm_33/while/Identity_1:output:0"=
lstm_33_while_identity_2!lstm_33/while/Identity_2:output:0"=
lstm_33_while_identity_3!lstm_33/while/Identity_3:output:0"=
lstm_33_while_identity_4!lstm_33/while/Identity_4:output:0"=
lstm_33_while_identity_5!lstm_33/while/Identity_5:output:0"P
%lstm_33_while_lstm_33_strided_slice_1'lstm_33_while_lstm_33_strided_slice_1_0"z
:lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource<lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0"|
;lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource=lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0"x
9lstm_33_while_lstm_cell_33_matmul_readvariableop_resource;lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0"È
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2f
1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp2d
0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp2h
2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 


õ
D__inference_dense_70_layer_call_and_return_conditional_losses_211022

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
Ñ
.__inference_sequential_35_layer_call_fn_211376
embedding_35_input
unknown:	ôu 
	unknown_0:	 
	unknown_1:	 
	unknown_2:	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCallembedding_35_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_35_layer_call_and_return_conditional_losses_211336o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_35_input
ù"
ã
while_body_210731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_33_210755_0:	 .
while_lstm_cell_33_210757_0:	 *
while_lstm_cell_33_210759_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_33_210755:	 ,
while_lstm_cell_33_210757:	 (
while_lstm_cell_33_210759:	¢*while/lstm_cell_33/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0³
*while/lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_33_210755_0while_lstm_cell_33_210757_0while_lstm_cell_33_210759_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210672Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_33/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_33/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/Identity_5Identity3while/lstm_cell_33/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y

while/NoOpNoOp+^while/lstm_cell_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_33_210755while_lstm_cell_33_210755_0"8
while_lstm_cell_33_210757while_lstm_cell_33_210757_0"8
while_lstm_cell_33_210759while_lstm_cell_33_210759_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_33/StatefulPartitionedCall*while/lstm_cell_33/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
Õ

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210672

inputs

states
states_11
matmul_readvariableop_resource:	 3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
«

-__inference_embedding_35_layer_call_fn_211850

inputs
unknown:	ôu 
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_35_layer_call_and_return_conditional_losses_210826s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷
µ
(__inference_lstm_33_layer_call_fn_211904

inputs
unknown:	 
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_211270o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
H
è
__inference__traced_save_212790
file_prefix6
2savev2_embedding_35_embeddings_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_33_lstm_cell_33_kernel_read_readvariableopD
@savev2_lstm_33_lstm_cell_33_recurrent_kernel_read_readvariableop8
4savev2_lstm_33_lstm_cell_33_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_embedding_35_embeddings_m_read_readvariableop5
1savev2_adam_dense_69_kernel_m_read_readvariableop3
/savev2_adam_dense_69_bias_m_read_readvariableop5
1savev2_adam_dense_70_kernel_m_read_readvariableop3
/savev2_adam_dense_70_bias_m_read_readvariableopA
=savev2_adam_lstm_33_lstm_cell_33_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_33_lstm_cell_33_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_33_lstm_cell_33_bias_m_read_readvariableop=
9savev2_adam_embedding_35_embeddings_v_read_readvariableop5
1savev2_adam_dense_69_kernel_v_read_readvariableop3
/savev2_adam_dense_69_bias_v_read_readvariableop5
1savev2_adam_dense_70_kernel_v_read_readvariableop3
/savev2_adam_dense_70_bias_v_read_readvariableopA
=savev2_adam_lstm_33_lstm_cell_33_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_33_lstm_cell_33_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_33_lstm_cell_33_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ·
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*à
valueÖBÓ"B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B É
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_35_embeddings_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_33_lstm_cell_33_kernel_read_readvariableop@savev2_lstm_33_lstm_cell_33_recurrent_kernel_read_readvariableop4savev2_lstm_33_lstm_cell_33_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_embedding_35_embeddings_m_read_readvariableop1savev2_adam_dense_69_kernel_m_read_readvariableop/savev2_adam_dense_69_bias_m_read_readvariableop1savev2_adam_dense_70_kernel_m_read_readvariableop/savev2_adam_dense_70_bias_m_read_readvariableop=savev2_adam_lstm_33_lstm_cell_33_kernel_m_read_readvariableopGsavev2_adam_lstm_33_lstm_cell_33_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_33_lstm_cell_33_bias_m_read_readvariableop9savev2_adam_embedding_35_embeddings_v_read_readvariableop1savev2_adam_dense_69_kernel_v_read_readvariableop/savev2_adam_dense_69_bias_v_read_readvariableop1savev2_adam_dense_70_kernel_v_read_readvariableop/savev2_adam_dense_70_bias_v_read_readvariableop=savev2_adam_lstm_33_lstm_cell_33_kernel_v_read_readvariableopGsavev2_adam_lstm_33_lstm_cell_33_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_33_lstm_cell_33_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesñ
î: :	ôu : :::: : : : : :	 :	 :: : : : :	ôu : ::::	 :	 ::	ôu : ::::	 :	 :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ôu :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :%!

_output_shapes
:	 :%!

_output_shapes
:	 :!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ôu :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	 :%!

_output_shapes
:	 :!

_output_shapes	
::%!

_output_shapes
:	ôu :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	 :% !

_output_shapes
:	 :!!

_output_shapes	
::"

_output_shapes
: 
Ð	
Å
.__inference_sequential_35_layer_call_fn_211455

inputs
unknown:	ôu 
	unknown_0:	 
	unknown_1:	 
	unknown_2:	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_35_layer_call_and_return_conditional_losses_211029o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_67_layer_call_and_return_conditional_losses_211111

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ý

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212636

inputs
states_0
states_11
matmul_readvariableop_resource:	 3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
R

'sequential_35_lstm_33_while_body_210359H
Dsequential_35_lstm_33_while_sequential_35_lstm_33_while_loop_counterN
Jsequential_35_lstm_33_while_sequential_35_lstm_33_while_maximum_iterations+
'sequential_35_lstm_33_while_placeholder-
)sequential_35_lstm_33_while_placeholder_1-
)sequential_35_lstm_33_while_placeholder_2-
)sequential_35_lstm_33_while_placeholder_3G
Csequential_35_lstm_33_while_sequential_35_lstm_33_strided_slice_1_0
sequential_35_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_33_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_35_lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0:	 ^
Ksequential_35_lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 Y
Jsequential_35_lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0:	(
$sequential_35_lstm_33_while_identity*
&sequential_35_lstm_33_while_identity_1*
&sequential_35_lstm_33_while_identity_2*
&sequential_35_lstm_33_while_identity_3*
&sequential_35_lstm_33_while_identity_4*
&sequential_35_lstm_33_while_identity_5E
Asequential_35_lstm_33_while_sequential_35_lstm_33_strided_slice_1
}sequential_35_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_33_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_35_lstm_33_while_lstm_cell_33_matmul_readvariableop_resource:	 \
Isequential_35_lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource:	 W
Hsequential_35_lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource:	¢?sequential_35/lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp¢>sequential_35/lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp¢@sequential_35/lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp
Msequential_35/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
?sequential_35/lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_35_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_33_tensorarrayunstack_tensorlistfromtensor_0'sequential_35_lstm_33_while_placeholderVsequential_35/lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0É
>sequential_35/lstm_33/while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOpIsequential_35_lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0ü
/sequential_35/lstm_33/while/lstm_cell_33/MatMulMatMulFsequential_35/lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_35/lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
@sequential_35/lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOpKsequential_35_lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0ã
1sequential_35/lstm_33/while/lstm_cell_33/MatMul_1MatMul)sequential_35_lstm_33_while_placeholder_2Hsequential_35/lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
,sequential_35/lstm_33/while/lstm_cell_33/addAddV29sequential_35/lstm_33/while/lstm_cell_33/MatMul:product:0;sequential_35/lstm_33/while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
?sequential_35/lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOpJsequential_35_lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0é
0sequential_35/lstm_33/while/lstm_cell_33/BiasAddBiasAdd0sequential_35/lstm_33/while/lstm_cell_33/add:z:0Gsequential_35/lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
8sequential_35/lstm_33/while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
.sequential_35/lstm_33/while/lstm_cell_33/splitSplitAsequential_35/lstm_33/while/lstm_cell_33/split/split_dim:output:09sequential_35/lstm_33/while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split¦
0sequential_35/lstm_33/while/lstm_cell_33/SigmoidSigmoid7sequential_35/lstm_33/while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
2sequential_35/lstm_33/while/lstm_cell_33/Sigmoid_1Sigmoid7sequential_35/lstm_33/while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
,sequential_35/lstm_33/while/lstm_cell_33/mulMul6sequential_35/lstm_33/while/lstm_cell_33/Sigmoid_1:y:0)sequential_35_lstm_33_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-sequential_35/lstm_33/while/lstm_cell_33/ReluRelu7sequential_35/lstm_33/while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ú
.sequential_35/lstm_33/while/lstm_cell_33/mul_1Mul4sequential_35/lstm_33/while/lstm_cell_33/Sigmoid:y:0;sequential_35/lstm_33/while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ï
.sequential_35/lstm_33/while/lstm_cell_33/add_1AddV20sequential_35/lstm_33/while/lstm_cell_33/mul:z:02sequential_35/lstm_33/while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
2sequential_35/lstm_33/while/lstm_cell_33/Sigmoid_2Sigmoid7sequential_35/lstm_33/while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
/sequential_35/lstm_33/while/lstm_cell_33/Relu_1Relu2sequential_35/lstm_33/while/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Þ
.sequential_35/lstm_33/while/lstm_cell_33/mul_2Mul6sequential_35/lstm_33/while/lstm_cell_33/Sigmoid_2:y:0=sequential_35/lstm_33/while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
@sequential_35/lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_35_lstm_33_while_placeholder_1'sequential_35_lstm_33_while_placeholder2sequential_35/lstm_33/while/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_35/lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_35/lstm_33/while/addAddV2'sequential_35_lstm_33_while_placeholder*sequential_35/lstm_33/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_35/lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_35/lstm_33/while/add_1AddV2Dsequential_35_lstm_33_while_sequential_35_lstm_33_while_loop_counter,sequential_35/lstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_35/lstm_33/while/IdentityIdentity%sequential_35/lstm_33/while/add_1:z:0!^sequential_35/lstm_33/while/NoOp*
T0*
_output_shapes
: Â
&sequential_35/lstm_33/while/Identity_1IdentityJsequential_35_lstm_33_while_sequential_35_lstm_33_while_maximum_iterations!^sequential_35/lstm_33/while/NoOp*
T0*
_output_shapes
: 
&sequential_35/lstm_33/while/Identity_2Identity#sequential_35/lstm_33/while/add:z:0!^sequential_35/lstm_33/while/NoOp*
T0*
_output_shapes
: Û
&sequential_35/lstm_33/while/Identity_3IdentityPsequential_35/lstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_35/lstm_33/while/NoOp*
T0*
_output_shapes
: :éèÒ»
&sequential_35/lstm_33/while/Identity_4Identity2sequential_35/lstm_33/while/lstm_cell_33/mul_2:z:0!^sequential_35/lstm_33/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ »
&sequential_35/lstm_33/while/Identity_5Identity2sequential_35/lstm_33/while/lstm_cell_33/add_1:z:0!^sequential_35/lstm_33/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¨
 sequential_35/lstm_33/while/NoOpNoOp@^sequential_35/lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp?^sequential_35/lstm_33/while/lstm_cell_33/MatMul/ReadVariableOpA^sequential_35/lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_35_lstm_33_while_identity-sequential_35/lstm_33/while/Identity:output:0"Y
&sequential_35_lstm_33_while_identity_1/sequential_35/lstm_33/while/Identity_1:output:0"Y
&sequential_35_lstm_33_while_identity_2/sequential_35/lstm_33/while/Identity_2:output:0"Y
&sequential_35_lstm_33_while_identity_3/sequential_35/lstm_33/while/Identity_3:output:0"Y
&sequential_35_lstm_33_while_identity_4/sequential_35/lstm_33/while/Identity_4:output:0"Y
&sequential_35_lstm_33_while_identity_5/sequential_35/lstm_33/while/Identity_5:output:0"
Hsequential_35_lstm_33_while_lstm_cell_33_biasadd_readvariableop_resourceJsequential_35_lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0"
Isequential_35_lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resourceKsequential_35_lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0"
Gsequential_35_lstm_33_while_lstm_cell_33_matmul_readvariableop_resourceIsequential_35_lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0"
Asequential_35_lstm_33_while_sequential_35_lstm_33_strided_slice_1Csequential_35_lstm_33_while_sequential_35_lstm_33_strided_slice_1_0"
}sequential_35_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_33_tensorarrayunstack_tensorlistfromtensorsequential_35_lstm_33_while_tensorarrayv2read_tensorlistgetitem_sequential_35_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2
?sequential_35/lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp?sequential_35/lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp2
>sequential_35/lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp>sequential_35/lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp2
@sequential_35/lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp@sequential_35/lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
8
Ð
while_body_212106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	 H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	 F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_33_biasadd_readvariableop_resource:	¢)while/lstm_cell_33/BiasAdd/ReadVariableOp¢(while/lstm_cell_33/MatMul/ReadVariableOp¢*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0º
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¡
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ð

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_212391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212391___redundant_placeholder04
0while_while_cond_212391___redundant_placeholder14
0while_while_cond_212391___redundant_placeholder24
0while_while_cond_212391___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Ù
d
F__inference_dropout_68_layer_call_and_return_conditional_losses_212538

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨J

C__inference_lstm_33_layer_call_and_return_conditional_losses_210972

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	 @
-lstm_cell_33_matmul_1_readvariableop_resource:	 ;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity¢#lstm_cell_33/BiasAdd/ReadVariableOp¢"lstm_cell_33/MatMul/ReadVariableOp¢$lstm_cell_33/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_210888*
condR
while_cond_210887*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¥	
¦
H__inference_embedding_35_layer_call_and_return_conditional_losses_210826

inputs*
embedding_lookup_210820:	ôu 
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
embedding_lookupResourceGatherembedding_lookup_210820Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/210820*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¢
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/210820*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ð
while_body_212392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	 H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	 F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_33_biasadd_readvariableop_resource:	¢)while/lstm_cell_33/BiasAdd/ReadVariableOp¢(while/lstm_cell_33/MatMul/ReadVariableOp¢*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0º
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¡
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ð

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_210730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_210730___redundant_placeholder04
0while_while_cond_210730___redundant_placeholder14
0while_while_cond_210730___redundant_placeholder24
0while_while_cond_210730___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
¥	
¦
H__inference_embedding_35_layer_call_and_return_conditional_losses_211860

inputs*
embedding_lookup_211854:	ôu 
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
embedding_lookupResourceGatherembedding_lookup_211854Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/211854*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0¢
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/211854*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

)__inference_dense_69_layer_call_fn_212512

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_210998o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Â

)__inference_dense_70_layer_call_fn_212559

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_211022o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8
Ð
while_body_211963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	 H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	 F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_33_biasadd_readvariableop_resource:	¢)while/lstm_cell_33/BiasAdd/ReadVariableOp¢(while/lstm_cell_33/MatMul/ReadVariableOp¢*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0º
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¡
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ð

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
¡
G
+__inference_dropout_67_layer_call_fn_212481

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_67_layer_call_and_return_conditional_losses_210985`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Å
Ò
I__inference_sequential_35_layer_call_and_return_conditional_losses_211336

inputs&
embedding_35_211313:	ôu !
lstm_33_211316:	 !
lstm_33_211318:	 
lstm_33_211320:	!
dense_69_211324: 
dense_69_211326:!
dense_70_211330:
dense_70_211332:
identity¢ dense_69/StatefulPartitionedCall¢ dense_70/StatefulPartitionedCall¢"dropout_67/StatefulPartitionedCall¢"dropout_68/StatefulPartitionedCall¢$embedding_35/StatefulPartitionedCall¢lstm_33/StatefulPartitionedCallí
$embedding_35/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_35_211313*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_35_layer_call_and_return_conditional_losses_210826¥
lstm_33/StatefulPartitionedCallStatefulPartitionedCall-embedding_35/StatefulPartitionedCall:output:0lstm_33_211316lstm_33_211318lstm_33_211320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_211270î
"dropout_67/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_67_layer_call_and_return_conditional_losses_211111
 dense_69/StatefulPartitionedCallStatefulPartitionedCall+dropout_67/StatefulPartitionedCall:output:0dense_69_211324dense_69_211326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_210998
"dropout_68/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0#^dropout_67/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_68_layer_call_and_return_conditional_losses_211078
 dense_70/StatefulPartitionedCallStatefulPartitionedCall+dropout_68/StatefulPartitionedCall:output:0dense_70_211330dense_70_211332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_211022x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall#^dropout_67/StatefulPartitionedCall#^dropout_68/StatefulPartitionedCall%^embedding_35/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2H
"dropout_67/StatefulPartitionedCall"dropout_67/StatefulPartitionedCall2H
"dropout_68/StatefulPartitionedCall"dropout_68/StatefulPartitionedCall2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


õ
D__inference_dense_69_layer_call_and_return_conditional_losses_212523

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÝJ

C__inference_lstm_33_layer_call_and_return_conditional_losses_212047
inputs_0>
+lstm_cell_33_matmul_readvariableop_resource:	 @
-lstm_cell_33_matmul_1_readvariableop_resource:	 ;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity¢#lstm_cell_33/BiasAdd/ReadVariableOp¢"lstm_cell_33/MatMul/ReadVariableOp¢$lstm_cell_33/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_211963*
condR
while_cond_211962*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
Ù
d
F__inference_dropout_67_layer_call_and_return_conditional_losses_210985

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ô	
Ñ
.__inference_sequential_35_layer_call_fn_211048
embedding_35_input
unknown:	ôu 
	unknown_0:	 
	unknown_1:	 
	unknown_2:	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCallembedding_35_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_35_layer_call_and_return_conditional_losses_211029o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_35_input
µ
Ã
while_cond_211962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_211962___redundant_placeholder04
0while_while_cond_211962___redundant_placeholder14
0while_while_cond_211962___redundant_placeholder24
0while_while_cond_211962___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
÷
µ
(__inference_lstm_33_layer_call_fn_211893

inputs
unknown:	 
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_210972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
È

I__inference_sequential_35_layer_call_and_return_conditional_losses_211029

inputs&
embedding_35_210827:	ôu !
lstm_33_210973:	 !
lstm_33_210975:	 
lstm_33_210977:	!
dense_69_210999: 
dense_69_211001:!
dense_70_211023:
dense_70_211025:
identity¢ dense_69/StatefulPartitionedCall¢ dense_70/StatefulPartitionedCall¢$embedding_35/StatefulPartitionedCall¢lstm_33/StatefulPartitionedCallí
$embedding_35/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_35_210827*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_35_layer_call_and_return_conditional_losses_210826¥
lstm_33/StatefulPartitionedCallStatefulPartitionedCall-embedding_35/StatefulPartitionedCall:output:0lstm_33_210973lstm_33_210975lstm_33_210977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_210972Þ
dropout_67/PartitionedCallPartitionedCall(lstm_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_67_layer_call_and_return_conditional_losses_210985
 dense_69/StatefulPartitionedCallStatefulPartitionedCall#dropout_67/PartitionedCall:output:0dense_69_210999dense_69_211001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_210998ß
dropout_68/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_68_layer_call_and_return_conditional_losses_211009
 dense_70/StatefulPartitionedCallStatefulPartitionedCall#dropout_68/PartitionedCall:output:0dense_70_211023dense_70_211025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_211022x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
NoOpNoOp!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall%^embedding_35/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
ö
-__inference_lstm_cell_33_layer_call_fn_212604

inputs
states_0
states_1
unknown:	 
	unknown_0:	 
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210672o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1
8

C__inference_lstm_33_layer_call_and_return_conditional_losses_210609

inputs&
lstm_cell_33_210527:	 &
lstm_cell_33_210529:	 "
lstm_cell_33_210531:	
identity¢$lstm_cell_33/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskõ
$lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_33_210527lstm_cell_33_210529lstm_cell_33_210531*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210526n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_33_210527lstm_cell_33_210529lstm_cell_33_210531*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_210540*
condR
while_cond_210539*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
NoOpNoOp%^lstm_cell_33/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2L
$lstm_cell_33/StatefulPartitionedCall$lstm_cell_33/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_67_layer_call_and_return_conditional_losses_212491

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_68_layer_call_and_return_conditional_losses_211009

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ã
lstm_33_while_cond_211705,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3.
*lstm_33_while_less_lstm_33_strided_slice_1D
@lstm_33_while_lstm_33_while_cond_211705___redundant_placeholder0D
@lstm_33_while_lstm_33_while_cond_211705___redundant_placeholder1D
@lstm_33_while_lstm_33_while_cond_211705___redundant_placeholder2D
@lstm_33_while_lstm_33_while_cond_211705___redundant_placeholder3
lstm_33_while_identity

lstm_33/while/LessLesslstm_33_while_placeholder*lstm_33_while_less_lstm_33_strided_slice_1*
T0*
_output_shapes
: [
lstm_33/while/IdentityIdentitylstm_33/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_33_while_identitylstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ù"
ã
while_body_210540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_33_210564_0:	 .
while_lstm_cell_33_210566_0:	 *
while_lstm_cell_33_210568_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_33_210564:	 ,
while_lstm_cell_33_210566:	 (
while_lstm_cell_33_210568:	¢*while/lstm_cell_33/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0³
*while/lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_33_210564_0while_lstm_cell_33_210566_0while_lstm_cell_33_210568_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210526Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_33/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_33/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/Identity_5Identity3while/lstm_cell_33/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y

while/NoOpNoOp+^while/lstm_cell_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_33_210564while_lstm_cell_33_210564_0"8
while_lstm_cell_33_210566while_lstm_cell_33_210566_0"8
while_lstm_cell_33_210568while_lstm_cell_33_210568_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2X
*while/lstm_cell_33/StatefulPartitionedCall*while/lstm_cell_33/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 


õ
D__inference_dense_69_layer_call_and_return_conditional_losses_210998

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ð	
Å
.__inference_sequential_35_layer_call_fn_211476

inputs
unknown:	ôu 
	unknown_0:	 
	unknown_1:	 
	unknown_2:	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_35_layer_call_and_return_conditional_losses_211336o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
d
+__inference_dropout_68_layer_call_fn_212533

inputs
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_68_layer_call_and_return_conditional_losses_211078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ã
lstm_33_while_cond_211540,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3.
*lstm_33_while_less_lstm_33_strided_slice_1D
@lstm_33_while_lstm_33_while_cond_211540___redundant_placeholder0D
@lstm_33_while_lstm_33_while_cond_211540___redundant_placeholder1D
@lstm_33_while_lstm_33_while_cond_211540___redundant_placeholder2D
@lstm_33_while_lstm_33_while_cond_211540___redundant_placeholder3
lstm_33_while_identity

lstm_33/while/LessLesslstm_33_while_placeholder*lstm_33_while_less_lstm_33_strided_slice_1*
T0*
_output_shapes
: [
lstm_33/while/IdentityIdentitylstm_33/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_33_while_identitylstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:


õ
D__inference_dense_70_layer_call_and_return_conditional_losses_212570

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
Þ
I__inference_sequential_35_layer_call_and_return_conditional_losses_211428
embedding_35_input&
embedding_35_211405:	ôu !
lstm_33_211408:	 !
lstm_33_211410:	 
lstm_33_211412:	!
dense_69_211416: 
dense_69_211418:!
dense_70_211422:
dense_70_211424:
identity¢ dense_69/StatefulPartitionedCall¢ dense_70/StatefulPartitionedCall¢"dropout_67/StatefulPartitionedCall¢"dropout_68/StatefulPartitionedCall¢$embedding_35/StatefulPartitionedCall¢lstm_33/StatefulPartitionedCallù
$embedding_35/StatefulPartitionedCallStatefulPartitionedCallembedding_35_inputembedding_35_211405*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_35_layer_call_and_return_conditional_losses_210826¥
lstm_33/StatefulPartitionedCallStatefulPartitionedCall-embedding_35/StatefulPartitionedCall:output:0lstm_33_211408lstm_33_211410lstm_33_211412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_211270î
"dropout_67/StatefulPartitionedCallStatefulPartitionedCall(lstm_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_67_layer_call_and_return_conditional_losses_211111
 dense_69/StatefulPartitionedCallStatefulPartitionedCall+dropout_67/StatefulPartitionedCall:output:0dense_69_211416dense_69_211418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_210998
"dropout_68/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0#^dropout_67/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_68_layer_call_and_return_conditional_losses_211078
 dense_70/StatefulPartitionedCallStatefulPartitionedCall+dropout_68/StatefulPartitionedCall:output:0dense_70_211422dense_70_211424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_211022x
IdentityIdentity)dense_70/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall#^dropout_67/StatefulPartitionedCall#^dropout_68/StatefulPartitionedCall%^embedding_35/StatefulPartitionedCall ^lstm_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2H
"dropout_67/StatefulPartitionedCall"dropout_67/StatefulPartitionedCall2H
"dropout_68/StatefulPartitionedCall"dropout_68/StatefulPartitionedCall2L
$embedding_35/StatefulPartitionedCall$embedding_35/StatefulPartitionedCall2B
lstm_33/StatefulPartitionedCalllstm_33/StatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_35_input
ë
ö
-__inference_lstm_cell_33_layer_call_fn_212587

inputs
states_0
states_1
unknown:	 
	unknown_0:	 
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
states/1

·
(__inference_lstm_33_layer_call_fn_211882
inputs_0
unknown:	 
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_210800o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ØA
Ð

lstm_33_while_body_211706,
(lstm_33_while_lstm_33_while_loop_counter2
.lstm_33_while_lstm_33_while_maximum_iterations
lstm_33_while_placeholder
lstm_33_while_placeholder_1
lstm_33_while_placeholder_2
lstm_33_while_placeholder_3+
'lstm_33_while_lstm_33_strided_slice_1_0g
clstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0:	 P
=lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 K
<lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0:	
lstm_33_while_identity
lstm_33_while_identity_1
lstm_33_while_identity_2
lstm_33_while_identity_3
lstm_33_while_identity_4
lstm_33_while_identity_5)
%lstm_33_while_lstm_33_strided_slice_1e
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorL
9lstm_33_while_lstm_cell_33_matmul_readvariableop_resource:	 N
;lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource:	 I
:lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource:	¢1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp¢0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp¢2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp
?lstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Î
1lstm_33/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0lstm_33_while_placeholderHlstm_33/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0­
0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp;lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0Ò
!lstm_33/while/lstm_cell_33/MatMulMatMul8lstm_33/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp=lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¹
#lstm_33/while/lstm_cell_33/MatMul_1MatMullstm_33_while_placeholder_2:lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
lstm_33/while/lstm_cell_33/addAddV2+lstm_33/while/lstm_cell_33/MatMul:product:0-lstm_33/while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp<lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¿
"lstm_33/while/lstm_cell_33/BiasAddBiasAdd"lstm_33/while/lstm_cell_33/add:z:09lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*lstm_33/while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_33/while/lstm_cell_33/splitSplit3lstm_33/while/lstm_cell_33/split/split_dim:output:0+lstm_33/while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
"lstm_33/while/lstm_cell_33/SigmoidSigmoid)lstm_33/while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$lstm_33/while/lstm_cell_33/Sigmoid_1Sigmoid)lstm_33/while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/while/lstm_cell_33/mulMul(lstm_33/while/lstm_cell_33/Sigmoid_1:y:0lstm_33_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/while/lstm_cell_33/ReluRelu)lstm_33/while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ °
 lstm_33/while/lstm_cell_33/mul_1Mul&lstm_33/while/lstm_cell_33/Sigmoid:y:0-lstm_33/while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¥
 lstm_33/while/lstm_cell_33/add_1AddV2"lstm_33/while/lstm_cell_33/mul:z:0$lstm_33/while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$lstm_33/while/lstm_cell_33/Sigmoid_2Sigmoid)lstm_33/while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!lstm_33/while/lstm_cell_33/Relu_1Relu$lstm_33/while/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ´
 lstm_33/while/lstm_cell_33/mul_2Mul(lstm_33/while/lstm_cell_33/Sigmoid_2:y:0/lstm_33/while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ å
2lstm_33/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_33_while_placeholder_1lstm_33_while_placeholder$lstm_33/while/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_33/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_33/while/addAddV2lstm_33_while_placeholderlstm_33/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_33/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_33/while/add_1AddV2(lstm_33_while_lstm_33_while_loop_counterlstm_33/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_33/while/IdentityIdentitylstm_33/while/add_1:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: 
lstm_33/while/Identity_1Identity.lstm_33_while_lstm_33_while_maximum_iterations^lstm_33/while/NoOp*
T0*
_output_shapes
: q
lstm_33/while/Identity_2Identitylstm_33/while/add:z:0^lstm_33/while/NoOp*
T0*
_output_shapes
: ±
lstm_33/while/Identity_3IdentityBlstm_33/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_33/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_33/while/Identity_4Identity$lstm_33/while/lstm_cell_33/mul_2:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/while/Identity_5Identity$lstm_33/while/lstm_cell_33/add_1:z:0^lstm_33/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ð
lstm_33/while/NoOpNoOp2^lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp1^lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp3^lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_33_while_identitylstm_33/while/Identity:output:0"=
lstm_33_while_identity_1!lstm_33/while/Identity_1:output:0"=
lstm_33_while_identity_2!lstm_33/while/Identity_2:output:0"=
lstm_33_while_identity_3!lstm_33/while/Identity_3:output:0"=
lstm_33_while_identity_4!lstm_33/while/Identity_4:output:0"=
lstm_33_while_identity_5!lstm_33/while/Identity_5:output:0"P
%lstm_33_while_lstm_33_strided_slice_1'lstm_33_while_lstm_33_strided_slice_1_0"z
:lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource<lstm_33_while_lstm_cell_33_biasadd_readvariableop_resource_0"|
;lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource=lstm_33_while_lstm_cell_33_matmul_1_readvariableop_resource_0"x
9lstm_33_while_lstm_cell_33_matmul_readvariableop_resource;lstm_33_while_lstm_cell_33_matmul_readvariableop_resource_0"È
alstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensorclstm_33_while_tensorarrayv2read_tensorlistgetitem_lstm_33_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2f
1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp1lstm_33/while/lstm_cell_33/BiasAdd/ReadVariableOp2d
0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp0lstm_33/while/lstm_cell_33/MatMul/ReadVariableOp2h
2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp2lstm_33/while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
ô	
e
F__inference_dropout_68_layer_call_and_return_conditional_losses_212550

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

·
(__inference_lstm_33_layer_call_fn_211871
inputs_0
unknown:	 
	unknown_0:	 
	unknown_1:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_33_layer_call_and_return_conditional_losses_210609o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ým

I__inference_sequential_35_layer_call_and_return_conditional_losses_211641

inputs7
$embedding_35_embedding_lookup_211480:	ôu F
3lstm_33_lstm_cell_33_matmul_readvariableop_resource:	 H
5lstm_33_lstm_cell_33_matmul_1_readvariableop_resource:	 C
4lstm_33_lstm_cell_33_biasadd_readvariableop_resource:	9
'dense_69_matmul_readvariableop_resource: 6
(dense_69_biasadd_readvariableop_resource:9
'dense_70_matmul_readvariableop_resource:6
(dense_70_biasadd_readvariableop_resource:
identity¢dense_69/BiasAdd/ReadVariableOp¢dense_69/MatMul/ReadVariableOp¢dense_70/BiasAdd/ReadVariableOp¢dense_70/MatMul/ReadVariableOp¢embedding_35/embedding_lookup¢+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp¢*lstm_33/lstm_cell_33/MatMul/ReadVariableOp¢,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp¢lstm_33/whileb
embedding_35/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
embedding_35/embedding_lookupResourceGather$embedding_35_embedding_lookup_211480embedding_35/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_35/embedding_lookup/211480*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0É
&embedding_35/embedding_lookup/IdentityIdentity&embedding_35/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_35/embedding_lookup/211480*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_35/embedding_lookup/Identity_1Identity/embedding_35/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_33/ShapeShape1embedding_35/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:e
lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_33/strided_sliceStridedSlicelstm_33/Shape:output:0$lstm_33/strided_slice/stack:output:0&lstm_33/strided_slice/stack_1:output:0&lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
lstm_33/zeros/packedPacklstm_33/strided_slice:output:0lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_33/zerosFilllstm_33/zeros/packed:output:0lstm_33/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z
lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
lstm_33/zeros_1/packedPacklstm_33/strided_slice:output:0!lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_33/zeros_1Filllstm_33/zeros_1/packed:output:0lstm_33/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
lstm_33/transpose	Transpose1embedding_35/embedding_lookup/Identity_1:output:0lstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
lstm_33/Shape_1Shapelstm_33/transpose:y:0*
T0*
_output_shapes
:g
lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_33/strided_slice_1StridedSlicelstm_33/Shape_1:output:0&lstm_33/strided_slice_1/stack:output:0(lstm_33/strided_slice_1/stack_1:output:0(lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_33/TensorArrayV2TensorListReserve,lstm_33/TensorArrayV2/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ø
/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_33/transpose:y:0Flstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_33/strided_slice_2StridedSlicelstm_33/transpose:y:0&lstm_33/strided_slice_2/stack:output:0(lstm_33/strided_slice_2/stack_1:output:0(lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
*lstm_33/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3lstm_33_lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0®
lstm_33/lstm_cell_33/MatMulMatMul lstm_33/strided_slice_2:output:02lstm_33/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5lstm_33_lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¨
lstm_33/lstm_cell_33/MatMul_1MatMullstm_33/zeros:output:04lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_33/lstm_cell_33/addAddV2%lstm_33/lstm_cell_33/MatMul:product:0'lstm_33/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4lstm_33_lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_33/lstm_cell_33/BiasAddBiasAddlstm_33/lstm_cell_33/add:z:03lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_33/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_33/lstm_cell_33/splitSplit-lstm_33/lstm_cell_33/split/split_dim:output:0%lstm_33/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split~
lstm_33/lstm_cell_33/SigmoidSigmoid#lstm_33/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/Sigmoid_1Sigmoid#lstm_33/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/mulMul"lstm_33/lstm_cell_33/Sigmoid_1:y:0lstm_33/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_33/lstm_cell_33/ReluRelu#lstm_33/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/mul_1Mul lstm_33/lstm_cell_33/Sigmoid:y:0'lstm_33/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/add_1AddV2lstm_33/lstm_cell_33/mul:z:0lstm_33/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/Sigmoid_2Sigmoid#lstm_33/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_33/lstm_cell_33/Relu_1Relulstm_33/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
lstm_33/lstm_cell_33/mul_2Mul"lstm_33/lstm_cell_33/Sigmoid_2:y:0)lstm_33/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
%lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ð
lstm_33/TensorArrayV2_1TensorListReserve.lstm_33/TensorArrayV2_1/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ò
lstm_33/whileWhile#lstm_33/while/loop_counter:output:0)lstm_33/while/maximum_iterations:output:0lstm_33/time:output:0 lstm_33/TensorArrayV2_1:handle:0lstm_33/zeros:output:0lstm_33/zeros_1:output:0 lstm_33/strided_slice_1:output:0?lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_33_lstm_cell_33_matmul_readvariableop_resource5lstm_33_lstm_cell_33_matmul_1_readvariableop_resource4lstm_33_lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_33_while_body_211541*%
condR
lstm_33_while_cond_211540*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
8lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ú
*lstm_33/TensorArrayV2Stack/TensorListStackTensorListStacklstm_33/while:output:3Alstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0p
lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_33/strided_slice_3StridedSlice3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_33/strided_slice_3/stack:output:0(lstm_33/strided_slice_3/stack_1:output:0(lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskm
lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_33/transpose_1	Transpose3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_33/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_67/IdentityIdentity lstm_33/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_69/MatMulMatMuldropout_67/Identity:output:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense_69/ReluReludense_69/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout_68/IdentityIdentitydense_69/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_70/MatMulMatMuldropout_68/Identity:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_70/SigmoidSigmoiddense_70/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitydense_70/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp^embedding_35/embedding_lookup,^lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp+^lstm_33/lstm_cell_33/MatMul/ReadVariableOp-^lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp^lstm_33/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2>
embedding_35/embedding_lookupembedding_35/embedding_lookup2Z
+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp2X
*lstm_33/lstm_cell_33/MatMul/ReadVariableOp*lstm_33/lstm_cell_33/MatMul/ReadVariableOp2\
,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp2
lstm_33/whilelstm_33/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨J

C__inference_lstm_33_layer_call_and_return_conditional_losses_212333

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	 @
-lstm_cell_33_matmul_1_readvariableop_resource:	 ;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity¢#lstm_cell_33/BiasAdd/ReadVariableOp¢"lstm_cell_33/MatMul/ReadVariableOp¢$lstm_cell_33/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_212249*
condR
while_cond_212248*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
µ
Ã
while_cond_210539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_210539___redundant_placeholder04
0while_while_cond_210539___redundant_placeholder14
0while_while_cond_210539___redundant_placeholder24
0while_while_cond_210539___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:

û
'sequential_35_lstm_33_while_cond_210358H
Dsequential_35_lstm_33_while_sequential_35_lstm_33_while_loop_counterN
Jsequential_35_lstm_33_while_sequential_35_lstm_33_while_maximum_iterations+
'sequential_35_lstm_33_while_placeholder-
)sequential_35_lstm_33_while_placeholder_1-
)sequential_35_lstm_33_while_placeholder_2-
)sequential_35_lstm_33_while_placeholder_3J
Fsequential_35_lstm_33_while_less_sequential_35_lstm_33_strided_slice_1`
\sequential_35_lstm_33_while_sequential_35_lstm_33_while_cond_210358___redundant_placeholder0`
\sequential_35_lstm_33_while_sequential_35_lstm_33_while_cond_210358___redundant_placeholder1`
\sequential_35_lstm_33_while_sequential_35_lstm_33_while_cond_210358___redundant_placeholder2`
\sequential_35_lstm_33_while_sequential_35_lstm_33_while_cond_210358___redundant_placeholder3(
$sequential_35_lstm_33_while_identity
º
 sequential_35/lstm_33/while/LessLess'sequential_35_lstm_33_while_placeholderFsequential_35_lstm_33_while_less_sequential_35_lstm_33_strided_slice_1*
T0*
_output_shapes
: w
$sequential_35/lstm_33/while/IdentityIdentity$sequential_35/lstm_33/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_35_lstm_33_while_identity-sequential_35/lstm_33/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_212105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212105___redundant_placeholder04
0while_while_cond_212105___redundant_placeholder14
0while_while_cond_212105___redundant_placeholder24
0while_while_cond_212105___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
Â	
Ç
$__inference_signature_wrapper_211843
embedding_35_input
unknown:	ôu 
	unknown_0:	 
	unknown_1:	 
	unknown_2:	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_35_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_210459o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_35_input
µ
Ã
while_cond_210887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_210887___redundant_placeholder04
0while_while_cond_210887___redundant_placeholder14
0while_while_cond_210887___redundant_placeholder24
0while_while_cond_210887___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
¨J

C__inference_lstm_33_layer_call_and_return_conditional_losses_212476

inputs>
+lstm_cell_33_matmul_readvariableop_resource:	 @
-lstm_cell_33_matmul_1_readvariableop_resource:	 ;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity¢#lstm_cell_33/BiasAdd/ReadVariableOp¢"lstm_cell_33/MatMul/ReadVariableOp¢$lstm_cell_33/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_212392*
condR
while_cond_212391*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
8
Ð
while_body_210888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_33_matmul_readvariableop_resource_0:	 H
5while_lstm_cell_33_matmul_1_readvariableop_resource_0:	 C
4while_lstm_cell_33_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_33_matmul_readvariableop_resource:	 F
3while_lstm_cell_33_matmul_1_readvariableop_resource:	 A
2while_lstm_cell_33_biasadd_readvariableop_resource:	¢)while/lstm_cell_33/BiasAdd/ReadVariableOp¢(while/lstm_cell_33/MatMul/ReadVariableOp¢*while/lstm_cell_33/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0
(while/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_33_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype0º
while/lstm_cell_33/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
*while/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_33_matmul_1_readvariableop_resource_0*
_output_shapes
:	 *
dtype0¡
while/lstm_cell_33/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_33/addAddV2#while/lstm_cell_33/MatMul:product:0%while/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_33_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_33/BiasAddBiasAddwhile/lstm_cell_33/add:z:01while/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"while/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_33/splitSplit+while/lstm_cell_33/split/split_dim:output:0#while/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitz
while/lstm_cell_33/SigmoidSigmoid!while/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_1Sigmoid!while/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mulMul while/lstm_cell_33/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
while/lstm_cell_33/ReluRelu!while/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_1Mulwhile/lstm_cell_33/Sigmoid:y:0%while/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/add_1AddV2while/lstm_cell_33/mul:z:0while/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
while/lstm_cell_33/Sigmoid_2Sigmoid!while/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
while/lstm_cell_33/Relu_1Reluwhile/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_33/mul_2Mul while/lstm_cell_33/Sigmoid_2:y:0'while/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_33/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_33/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
while/Identity_5Identitywhile/lstm_cell_33/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ð

while/NoOpNoOp*^while/lstm_cell_33/BiasAdd/ReadVariableOp)^while/lstm_cell_33/MatMul/ReadVariableOp+^while/lstm_cell_33/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_33_biasadd_readvariableop_resource4while_lstm_cell_33_biasadd_readvariableop_resource_0"l
3while_lstm_cell_33_matmul_1_readvariableop_resource5while_lstm_cell_33_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_33_matmul_readvariableop_resource3while_lstm_cell_33_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : 2V
)while/lstm_cell_33/BiasAdd/ReadVariableOp)while/lstm_cell_33/BiasAdd/ReadVariableOp2T
(while/lstm_cell_33/MatMul/ReadVariableOp(while/lstm_cell_33/MatMul/ReadVariableOp2X
*while/lstm_cell_33/MatMul_1/ReadVariableOp*while/lstm_cell_33/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_211185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_211185___redundant_placeholder04
0while_while_cond_211185___redundant_placeholder14
0while_while_cond_211185___redundant_placeholder24
0while_while_cond_211185___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ô	
e
F__inference_dropout_67_layer_call_and_return_conditional_losses_212503

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ð
!__inference__wrapped_model_210459
embedding_35_inputE
2sequential_35_embedding_35_embedding_lookup_210298:	ôu T
Asequential_35_lstm_33_lstm_cell_33_matmul_readvariableop_resource:	 V
Csequential_35_lstm_33_lstm_cell_33_matmul_1_readvariableop_resource:	 Q
Bsequential_35_lstm_33_lstm_cell_33_biasadd_readvariableop_resource:	G
5sequential_35_dense_69_matmul_readvariableop_resource: D
6sequential_35_dense_69_biasadd_readvariableop_resource:G
5sequential_35_dense_70_matmul_readvariableop_resource:D
6sequential_35_dense_70_biasadd_readvariableop_resource:
identity¢-sequential_35/dense_69/BiasAdd/ReadVariableOp¢,sequential_35/dense_69/MatMul/ReadVariableOp¢-sequential_35/dense_70/BiasAdd/ReadVariableOp¢,sequential_35/dense_70/MatMul/ReadVariableOp¢+sequential_35/embedding_35/embedding_lookup¢9sequential_35/lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp¢8sequential_35/lstm_33/lstm_cell_33/MatMul/ReadVariableOp¢:sequential_35/lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp¢sequential_35/lstm_33/while|
sequential_35/embedding_35/CastCastembedding_35_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
+sequential_35/embedding_35/embedding_lookupResourceGather2sequential_35_embedding_35_embedding_lookup_210298#sequential_35/embedding_35/Cast:y:0*
Tindices0*E
_class;
97loc:@sequential_35/embedding_35/embedding_lookup/210298*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0ó
4sequential_35/embedding_35/embedding_lookup/IdentityIdentity4sequential_35/embedding_35/embedding_lookup:output:0*
T0*E
_class;
97loc:@sequential_35/embedding_35/embedding_lookup/210298*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ·
6sequential_35/embedding_35/embedding_lookup/Identity_1Identity=sequential_35/embedding_35/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_35/lstm_33/ShapeShape?sequential_35/embedding_35/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:s
)sequential_35/lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_35/lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_35/lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_35/lstm_33/strided_sliceStridedSlice$sequential_35/lstm_33/Shape:output:02sequential_35/lstm_33/strided_slice/stack:output:04sequential_35/lstm_33/strided_slice/stack_1:output:04sequential_35/lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_35/lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : µ
"sequential_35/lstm_33/zeros/packedPack,sequential_35/lstm_33/strided_slice:output:0-sequential_35/lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_35/lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_35/lstm_33/zerosFill+sequential_35/lstm_33/zeros/packed:output:0*sequential_35/lstm_33/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
&sequential_35/lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ¹
$sequential_35/lstm_33/zeros_1/packedPack,sequential_35/lstm_33/strided_slice:output:0/sequential_35/lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_35/lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_35/lstm_33/zeros_1Fill-sequential_35/lstm_33/zeros_1/packed:output:0,sequential_35/lstm_33/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ y
$sequential_35/lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
sequential_35/lstm_33/transpose	Transpose?sequential_35/embedding_35/embedding_lookup/Identity_1:output:0-sequential_35/lstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
sequential_35/lstm_33/Shape_1Shape#sequential_35/lstm_33/transpose:y:0*
T0*
_output_shapes
:u
+sequential_35/lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_35/lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_35/lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_35/lstm_33/strided_slice_1StridedSlice&sequential_35/lstm_33/Shape_1:output:04sequential_35/lstm_33/strided_slice_1/stack:output:06sequential_35/lstm_33/strided_slice_1/stack_1:output:06sequential_35/lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_35/lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_35/lstm_33/TensorArrayV2TensorListReserve:sequential_35/lstm_33/TensorArrayV2/element_shape:output:0.sequential_35/lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_35/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¢
=sequential_35/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_35/lstm_33/transpose:y:0Tsequential_35/lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_35/lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_35/lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_35/lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_35/lstm_33/strided_slice_2StridedSlice#sequential_35/lstm_33/transpose:y:04sequential_35/lstm_33/strided_slice_2/stack:output:06sequential_35/lstm_33/strided_slice_2/stack_1:output:06sequential_35/lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask»
8sequential_35/lstm_33/lstm_cell_33/MatMul/ReadVariableOpReadVariableOpAsequential_35_lstm_33_lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0Ø
)sequential_35/lstm_33/lstm_cell_33/MatMulMatMul.sequential_35/lstm_33/strided_slice_2:output:0@sequential_35/lstm_33/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
:sequential_35/lstm_33/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOpCsequential_35_lstm_33_lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0Ò
+sequential_35/lstm_33/lstm_cell_33/MatMul_1MatMul$sequential_35/lstm_33/zeros:output:0Bsequential_35/lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
&sequential_35/lstm_33/lstm_cell_33/addAddV23sequential_35/lstm_33/lstm_cell_33/MatMul:product:05sequential_35/lstm_33/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9sequential_35/lstm_33/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOpBsequential_35_lstm_33_lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0×
*sequential_35/lstm_33/lstm_cell_33/BiasAddBiasAdd*sequential_35/lstm_33/lstm_cell_33/add:z:0Asequential_35/lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
2sequential_35/lstm_33/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_35/lstm_33/lstm_cell_33/splitSplit;sequential_35/lstm_33/lstm_cell_33/split/split_dim:output:03sequential_35/lstm_33/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split
*sequential_35/lstm_33/lstm_cell_33/SigmoidSigmoid1sequential_35/lstm_33/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,sequential_35/lstm_33/lstm_cell_33/Sigmoid_1Sigmoid1sequential_35/lstm_33/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¹
&sequential_35/lstm_33/lstm_cell_33/mulMul0sequential_35/lstm_33/lstm_cell_33/Sigmoid_1:y:0&sequential_35/lstm_33/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'sequential_35/lstm_33/lstm_cell_33/ReluRelu1sequential_35/lstm_33/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ È
(sequential_35/lstm_33/lstm_cell_33/mul_1Mul.sequential_35/lstm_33/lstm_cell_33/Sigmoid:y:05sequential_35/lstm_33/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ½
(sequential_35/lstm_33/lstm_cell_33/add_1AddV2*sequential_35/lstm_33/lstm_cell_33/mul:z:0,sequential_35/lstm_33/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,sequential_35/lstm_33/lstm_cell_33/Sigmoid_2Sigmoid1sequential_35/lstm_33/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)sequential_35/lstm_33/lstm_cell_33/Relu_1Relu,sequential_35/lstm_33/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ì
(sequential_35/lstm_33/lstm_cell_33/mul_2Mul0sequential_35/lstm_33/lstm_cell_33/Sigmoid_2:y:07sequential_35/lstm_33/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
3sequential_35/lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ú
%sequential_35/lstm_33/TensorArrayV2_1TensorListReserve<sequential_35/lstm_33/TensorArrayV2_1/element_shape:output:0.sequential_35/lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_35/lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_35/lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_35/lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
sequential_35/lstm_33/whileWhile1sequential_35/lstm_33/while/loop_counter:output:07sequential_35/lstm_33/while/maximum_iterations:output:0#sequential_35/lstm_33/time:output:0.sequential_35/lstm_33/TensorArrayV2_1:handle:0$sequential_35/lstm_33/zeros:output:0&sequential_35/lstm_33/zeros_1:output:0.sequential_35/lstm_33/strided_slice_1:output:0Msequential_35/lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_35_lstm_33_lstm_cell_33_matmul_readvariableop_resourceCsequential_35_lstm_33_lstm_cell_33_matmul_1_readvariableop_resourceBsequential_35_lstm_33_lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_35_lstm_33_while_body_210359*3
cond+R)
'sequential_35_lstm_33_while_cond_210358*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
Fsequential_35/lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
8sequential_35/lstm_33/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_35/lstm_33/while:output:3Osequential_35/lstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0~
+sequential_35/lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_35/lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_35/lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_35/lstm_33/strided_slice_3StridedSliceAsequential_35/lstm_33/TensorArrayV2Stack/TensorListStack:tensor:04sequential_35/lstm_33/strided_slice_3/stack:output:06sequential_35/lstm_33/strided_slice_3/stack_1:output:06sequential_35/lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask{
&sequential_35/lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_35/lstm_33/transpose_1	TransposeAsequential_35/lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_35/lstm_33/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
sequential_35/lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
!sequential_35/dropout_67/IdentityIdentity.sequential_35/lstm_33/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
,sequential_35/dense_69/MatMul/ReadVariableOpReadVariableOp5sequential_35_dense_69_matmul_readvariableop_resource*
_output_shapes

: *
dtype0»
sequential_35/dense_69/MatMulMatMul*sequential_35/dropout_67/Identity:output:04sequential_35/dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_35/dense_69/BiasAdd/ReadVariableOpReadVariableOp6sequential_35_dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_35/dense_69/BiasAddBiasAdd'sequential_35/dense_69/MatMul:product:05sequential_35/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_35/dense_69/ReluRelu'sequential_35/dense_69/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_35/dropout_68/IdentityIdentity)sequential_35/dense_69/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
,sequential_35/dense_70/MatMul/ReadVariableOpReadVariableOp5sequential_35_dense_70_matmul_readvariableop_resource*
_output_shapes

:*
dtype0»
sequential_35/dense_70/MatMulMatMul*sequential_35/dropout_68/Identity:output:04sequential_35/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_35/dense_70/BiasAdd/ReadVariableOpReadVariableOp6sequential_35_dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_35/dense_70/BiasAddBiasAdd'sequential_35/dense_70/MatMul:product:05sequential_35/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_35/dense_70/SigmoidSigmoid'sequential_35/dense_70/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentity"sequential_35/dense_70/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp.^sequential_35/dense_69/BiasAdd/ReadVariableOp-^sequential_35/dense_69/MatMul/ReadVariableOp.^sequential_35/dense_70/BiasAdd/ReadVariableOp-^sequential_35/dense_70/MatMul/ReadVariableOp,^sequential_35/embedding_35/embedding_lookup:^sequential_35/lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp9^sequential_35/lstm_33/lstm_cell_33/MatMul/ReadVariableOp;^sequential_35/lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp^sequential_35/lstm_33/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2^
-sequential_35/dense_69/BiasAdd/ReadVariableOp-sequential_35/dense_69/BiasAdd/ReadVariableOp2\
,sequential_35/dense_69/MatMul/ReadVariableOp,sequential_35/dense_69/MatMul/ReadVariableOp2^
-sequential_35/dense_70/BiasAdd/ReadVariableOp-sequential_35/dense_70/BiasAdd/ReadVariableOp2\
,sequential_35/dense_70/MatMul/ReadVariableOp,sequential_35/dense_70/MatMul/ReadVariableOp2Z
+sequential_35/embedding_35/embedding_lookup+sequential_35/embedding_35/embedding_lookup2v
9sequential_35/lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp9sequential_35/lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp2t
8sequential_35/lstm_33/lstm_cell_33/MatMul/ReadVariableOp8sequential_35/lstm_33/lstm_cell_33/MatMul/ReadVariableOp2x
:sequential_35/lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp:sequential_35/lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp2:
sequential_35/lstm_33/whilesequential_35/lstm_33/while:[ W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameembedding_35_input
ô	
e
F__inference_dropout_68_layer_call_and_return_conditional_losses_211078

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦}

I__inference_sequential_35_layer_call_and_return_conditional_losses_211820

inputs7
$embedding_35_embedding_lookup_211645:	ôu F
3lstm_33_lstm_cell_33_matmul_readvariableop_resource:	 H
5lstm_33_lstm_cell_33_matmul_1_readvariableop_resource:	 C
4lstm_33_lstm_cell_33_biasadd_readvariableop_resource:	9
'dense_69_matmul_readvariableop_resource: 6
(dense_69_biasadd_readvariableop_resource:9
'dense_70_matmul_readvariableop_resource:6
(dense_70_biasadd_readvariableop_resource:
identity¢dense_69/BiasAdd/ReadVariableOp¢dense_69/MatMul/ReadVariableOp¢dense_70/BiasAdd/ReadVariableOp¢dense_70/MatMul/ReadVariableOp¢embedding_35/embedding_lookup¢+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp¢*lstm_33/lstm_cell_33/MatMul/ReadVariableOp¢,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp¢lstm_33/whileb
embedding_35/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
embedding_35/embedding_lookupResourceGather$embedding_35_embedding_lookup_211645embedding_35/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_35/embedding_lookup/211645*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0É
&embedding_35/embedding_lookup/IdentityIdentity&embedding_35/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_35/embedding_lookup/211645*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_35/embedding_lookup/Identity_1Identity/embedding_35/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
lstm_33/ShapeShape1embedding_35/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:e
lstm_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_33/strided_sliceStridedSlicelstm_33/Shape:output:0$lstm_33/strided_slice/stack:output:0&lstm_33/strided_slice/stack_1:output:0&lstm_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_33/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
lstm_33/zeros/packedPacklstm_33/strided_slice:output:0lstm_33/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_33/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_33/zerosFilllstm_33/zeros/packed:output:0lstm_33/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z
lstm_33/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
lstm_33/zeros_1/packedPacklstm_33/strided_slice:output:0!lstm_33/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_33/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_33/zeros_1Filllstm_33/zeros_1/packed:output:0lstm_33/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ k
lstm_33/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
lstm_33/transpose	Transpose1embedding_35/embedding_lookup/Identity_1:output:0lstm_33/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
lstm_33/Shape_1Shapelstm_33/transpose:y:0*
T0*
_output_shapes
:g
lstm_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_33/strided_slice_1StridedSlicelstm_33/Shape_1:output:0&lstm_33/strided_slice_1/stack:output:0(lstm_33/strided_slice_1/stack_1:output:0(lstm_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_33/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_33/TensorArrayV2TensorListReserve,lstm_33/TensorArrayV2/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_33/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ø
/lstm_33/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_33/transpose:y:0Flstm_33/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_33/strided_slice_2StridedSlicelstm_33/transpose:y:0&lstm_33/strided_slice_2/stack:output:0(lstm_33/strided_slice_2/stack_1:output:0(lstm_33/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
*lstm_33/lstm_cell_33/MatMul/ReadVariableOpReadVariableOp3lstm_33_lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0®
lstm_33/lstm_cell_33/MatMulMatMul lstm_33/strided_slice_2:output:02lstm_33/lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp5lstm_33_lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0¨
lstm_33/lstm_cell_33/MatMul_1MatMullstm_33/zeros:output:04lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_33/lstm_cell_33/addAddV2%lstm_33/lstm_cell_33/MatMul:product:0'lstm_33/lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp4lstm_33_lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_33/lstm_cell_33/BiasAddBiasAddlstm_33/lstm_cell_33/add:z:03lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm_33/lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm_33/lstm_cell_33/splitSplit-lstm_33/lstm_cell_33/split/split_dim:output:0%lstm_33/lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_split~
lstm_33/lstm_cell_33/SigmoidSigmoid#lstm_33/lstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/Sigmoid_1Sigmoid#lstm_33/lstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/mulMul"lstm_33/lstm_cell_33/Sigmoid_1:y:0lstm_33/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
lstm_33/lstm_cell_33/ReluRelu#lstm_33/lstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/mul_1Mul lstm_33/lstm_cell_33/Sigmoid:y:0'lstm_33/lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/add_1AddV2lstm_33/lstm_cell_33/mul:z:0lstm_33/lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_33/lstm_cell_33/Sigmoid_2Sigmoid#lstm_33/lstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
lstm_33/lstm_cell_33/Relu_1Relulstm_33/lstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
lstm_33/lstm_cell_33/mul_2Mul"lstm_33/lstm_cell_33/Sigmoid_2:y:0)lstm_33/lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
%lstm_33/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ð
lstm_33/TensorArrayV2_1TensorListReserve.lstm_33/TensorArrayV2_1/element_shape:output:0 lstm_33/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_33/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_33/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_33/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ò
lstm_33/whileWhile#lstm_33/while/loop_counter:output:0)lstm_33/while/maximum_iterations:output:0lstm_33/time:output:0 lstm_33/TensorArrayV2_1:handle:0lstm_33/zeros:output:0lstm_33/zeros_1:output:0 lstm_33/strided_slice_1:output:0?lstm_33/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_33_lstm_cell_33_matmul_readvariableop_resource5lstm_33_lstm_cell_33_matmul_1_readvariableop_resource4lstm_33_lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_33_while_body_211706*%
condR
lstm_33_while_cond_211705*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
8lstm_33/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ú
*lstm_33/TensorArrayV2Stack/TensorListStackTensorListStacklstm_33/while:output:3Alstm_33/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype0p
lstm_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_33/strided_slice_3StridedSlice3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_33/strided_slice_3/stack:output:0(lstm_33/strided_slice_3/stack_1:output:0(lstm_33/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskm
lstm_33/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_33/transpose_1	Transpose3lstm_33/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_33/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
lstm_33/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_67/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_67/dropout/MulMul lstm_33/strided_slice_3:output:0!dropout_67/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
dropout_67/dropout/ShapeShape lstm_33/strided_slice_3:output:0*
T0*
_output_shapes
:¢
/dropout_67/dropout/random_uniform/RandomUniformRandomUniform!dropout_67/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0f
!dropout_67/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_67/dropout/GreaterEqualGreaterEqual8dropout_67/dropout/random_uniform/RandomUniform:output:0*dropout_67/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_67/dropout/CastCast#dropout_67/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_67/dropout/Mul_1Muldropout_67/dropout/Mul:z:0dropout_67/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_69/MatMulMatMuldropout_67/dropout/Mul_1:z:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense_69/ReluReludense_69/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout_68/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_68/dropout/MulMuldense_69/Relu:activations:0!dropout_68/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dropout_68/dropout/ShapeShapedense_69/Relu:activations:0*
T0*
_output_shapes
:¢
/dropout_68/dropout/random_uniform/RandomUniformRandomUniform!dropout_68/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_68/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_68/dropout/GreaterEqualGreaterEqual8dropout_68/dropout/random_uniform/RandomUniform:output:0*dropout_68/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_68/dropout/CastCast#dropout_68/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_68/dropout/Mul_1Muldropout_68/dropout/Mul:z:0dropout_68/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_70/MatMulMatMuldropout_68/dropout/Mul_1:z:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_70/SigmoidSigmoiddense_70/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitydense_70/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp^embedding_35/embedding_lookup,^lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp+^lstm_33/lstm_cell_33/MatMul/ReadVariableOp-^lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp^lstm_33/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2>
embedding_35/embedding_lookupembedding_35/embedding_lookup2Z
+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp+lstm_33/lstm_cell_33/BiasAdd/ReadVariableOp2X
*lstm_33/lstm_cell_33/MatMul/ReadVariableOp*lstm_33/lstm_cell_33/MatMul/ReadVariableOp2\
,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp,lstm_33/lstm_cell_33/MatMul_1/ReadVariableOp2
lstm_33/whilelstm_33/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ã
while_cond_212248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_212248___redundant_placeholder04
0while_while_cond_212248___redundant_placeholder14
0while_while_cond_212248___redundant_placeholder24
0while_while_cond_212248___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ :

_output_shapes
: :

_output_shapes
:
ó
d
+__inference_dropout_67_layer_call_fn_212486

inputs
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_67_layer_call_and_return_conditional_losses_211111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÝJ

C__inference_lstm_33_layer_call_and_return_conditional_losses_212190
inputs_0>
+lstm_cell_33_matmul_readvariableop_resource:	 @
-lstm_cell_33_matmul_1_readvariableop_resource:	 ;
,lstm_cell_33_biasadd_readvariableop_resource:	
identity¢#lstm_cell_33/BiasAdd/ReadVariableOp¢"lstm_cell_33/MatMul/ReadVariableOp¢$lstm_cell_33/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask
"lstm_cell_33/MatMul/ReadVariableOpReadVariableOp+lstm_cell_33_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMulMatMulstrided_slice_2:output:0*lstm_cell_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_33/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_33_matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0
lstm_cell_33/MatMul_1MatMulzeros:output:0,lstm_cell_33/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_33/addAddV2lstm_cell_33/MatMul:product:0lstm_cell_33/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_33/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_33/BiasAddBiasAddlstm_cell_33/add:z:0+lstm_cell_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_33/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_33/splitSplit%lstm_cell_33/split/split_dim:output:0lstm_cell_33/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitn
lstm_cell_33/SigmoidSigmoidlstm_cell_33/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_1Sigmoidlstm_cell_33/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
lstm_cell_33/mulMullstm_cell_33/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
lstm_cell_33/ReluRelulstm_cell_33/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_1Mullstm_cell_33/Sigmoid:y:0lstm_cell_33/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ {
lstm_cell_33/add_1AddV2lstm_cell_33/mul:z:0lstm_cell_33/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
lstm_cell_33/Sigmoid_2Sigmoidlstm_cell_33/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
lstm_cell_33/Relu_1Relulstm_cell_33/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_cell_33/mul_2Mullstm_cell_33/Sigmoid_2:y:0!lstm_cell_33/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_33_matmul_readvariableop_resource-lstm_cell_33_matmul_1_readvariableop_resource,lstm_cell_33_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_212106*
condR
while_cond_212105*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
NoOpNoOp$^lstm_cell_33/BiasAdd/ReadVariableOp#^lstm_cell_33/MatMul/ReadVariableOp%^lstm_cell_33/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_33/BiasAdd/ReadVariableOp#lstm_cell_33/BiasAdd/ReadVariableOp2H
"lstm_cell_33/MatMul/ReadVariableOp"lstm_cell_33/MatMul/ReadVariableOp2L
$lstm_cell_33/MatMul_1/ReadVariableOp$lstm_cell_33/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
Õ

H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210526

inputs

states
states_11
matmul_readvariableop_resource:	 3
 matmul_1_readvariableop_resource:	 .
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_namestates
8

C__inference_lstm_33_layer_call_and_return_conditional_losses_210800

inputs&
lstm_cell_33_210718:	 &
lstm_cell_33_210720:	 "
lstm_cell_33_210722:	
identity¢$lstm_cell_33/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maskõ
$lstm_cell_33/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_33_210718lstm_cell_33_210720lstm_cell_33_210722*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_210672n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_33_210718lstm_cell_33_210720lstm_cell_33_210722*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_210731*
condR
while_cond_210730*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ : : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
NoOpNoOp%^lstm_cell_33/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2L
$lstm_cell_33/StatefulPartitionedCall$lstm_cell_33/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Á
serving_default­
Q
embedding_35_input;
$serving_default_embedding_35_input:0ÿÿÿÿÿÿÿÿÿ<
dense_700
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ô¢

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
¼
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$_random_generator
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
»

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
»

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
ó
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratem'm(m6m7mCmDmEmv'v(v6v7vCvDvEv"
	optimizer
X
0
C1
D2
E3
'4
(5
66
77"
trackable_list_wrapper
X
0
C1
D2
E3
'4
(5
66
77"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_sequential_35_layer_call_fn_211048
.__inference_sequential_35_layer_call_fn_211455
.__inference_sequential_35_layer_call_fn_211476
.__inference_sequential_35_layer_call_fn_211376À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_35_layer_call_and_return_conditional_losses_211641
I__inference_sequential_35_layer_call_and_return_conditional_losses_211820
I__inference_sequential_35_layer_call_and_return_conditional_losses_211402
I__inference_sequential_35_layer_call_and_return_conditional_losses_211428À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
!__inference__wrapped_model_210459embedding_35_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
Kserving_default"
signature_map
*:(	ôu 2embedding_35/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_embedding_35_layer_call_fn_211850¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_embedding_35_layer_call_and_return_conditional_losses_211860¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ø
Q
state_size

Ckernel
Drecurrent_kernel
Ebias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V_random_generator
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_33_layer_call_fn_211871
(__inference_lstm_33_layer_call_fn_211882
(__inference_lstm_33_layer_call_fn_211893
(__inference_lstm_33_layer_call_fn_211904Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_33_layer_call_and_return_conditional_losses_212047
C__inference_lstm_33_layer_call_and_return_conditional_losses_212190
C__inference_lstm_33_layer_call_and_return_conditional_losses_212333
C__inference_lstm_33_layer_call_and_return_conditional_losses_212476Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
 	variables
!trainable_variables
"regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_67_layer_call_fn_212481
+__inference_dropout_67_layer_call_fn_212486´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_67_layer_call_and_return_conditional_losses_212491
F__inference_dropout_67_layer_call_and_return_conditional_losses_212503´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!: 2dense_69/kernel
:2dense_69/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_69_layer_call_fn_212512¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_69_layer_call_and_return_conditional_losses_212523¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_68_layer_call_fn_212528
+__inference_dropout_68_layer_call_fn_212533´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_68_layer_call_and_return_conditional_losses_212538
F__inference_dropout_68_layer_call_and_return_conditional_losses_212550´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:2dense_70/kernel
:2dense_70/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
­
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_70_layer_call_fn_212559¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_70_layer_call_and_return_conditional_losses_212570¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	 2lstm_33/lstm_cell_33/kernel
8:6	 2%lstm_33/lstm_cell_33/recurrent_kernel
(:&2lstm_33/lstm_cell_33/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
$__inference_signature_wrapper_211843embedding_35_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
R	variables
Strainable_variables
Tregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¢2
-__inference_lstm_cell_33_layer_call_fn_212587
-__inference_lstm_cell_33_layer_call_fn_212604¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212636
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212668¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ztotal
	{count
|	variables
}	keras_api"
_tf_keras_metric
a
	~total
	count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
/:-	ôu 2Adam/embedding_35/embeddings/m
&:$ 2Adam/dense_69/kernel/m
 :2Adam/dense_69/bias/m
&:$2Adam/dense_70/kernel/m
 :2Adam/dense_70/bias/m
3:1	 2"Adam/lstm_33/lstm_cell_33/kernel/m
=:;	 2,Adam/lstm_33/lstm_cell_33/recurrent_kernel/m
-:+2 Adam/lstm_33/lstm_cell_33/bias/m
/:-	ôu 2Adam/embedding_35/embeddings/v
&:$ 2Adam/dense_69/kernel/v
 :2Adam/dense_69/bias/v
&:$2Adam/dense_70/kernel/v
 :2Adam/dense_70/bias/v
3:1	 2"Adam/lstm_33/lstm_cell_33/kernel/v
=:;	 2,Adam/lstm_33/lstm_cell_33/recurrent_kernel/v
-:+2 Adam/lstm_33/lstm_cell_33/bias/v¡
!__inference__wrapped_model_210459|CDE'(67;¢8
1¢.
,)
embedding_35_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_70"
dense_70ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_69_layer_call_and_return_conditional_losses_212523\'(/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_69_layer_call_fn_212512O'(/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_70_layer_call_and_return_conditional_losses_212570\67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_70_layer_call_fn_212559O67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_67_layer_call_and_return_conditional_losses_212491\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¦
F__inference_dropout_67_layer_call_and_return_conditional_losses_212503\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ~
+__inference_dropout_67_layer_call_fn_212481O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ ~
+__inference_dropout_67_layer_call_fn_212486O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ ¦
F__inference_dropout_68_layer_call_and_return_conditional_losses_212538\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¦
F__inference_dropout_68_layer_call_and_return_conditional_losses_212550\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dropout_68_layer_call_fn_212528O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ~
+__inference_dropout_68_layer_call_fn_212533O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
H__inference_embedding_35_layer_call_and_return_conditional_losses_211860_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
-__inference_embedding_35_layer_call_fn_211850R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ Ä
C__inference_lstm_33_layer_call_and_return_conditional_losses_212047}CDEO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 Ä
C__inference_lstm_33_layer_call_and_return_conditional_losses_212190}CDEO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
C__inference_lstm_33_layer_call_and_return_conditional_losses_212333mCDE?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ´
C__inference_lstm_33_layer_call_and_return_conditional_losses_212476mCDE?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
(__inference_lstm_33_layer_call_fn_211871pCDEO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_33_layer_call_fn_211882pCDEO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_33_layer_call_fn_211893`CDE?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
(__inference_lstm_33_layer_call_fn_211904`CDE?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ Ê
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212636ýCDE¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 Ê
H__inference_lstm_cell_33_layer_call_and_return_conditional_losses_212668ýCDE¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ 
EB

0/1/0ÿÿÿÿÿÿÿÿÿ 

0/1/1ÿÿÿÿÿÿÿÿÿ 
 
-__inference_lstm_cell_33_layer_call_fn_212587íCDE¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ 
-__inference_lstm_cell_33_layer_call_fn_212604íCDE¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ 
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ 
"
states/1ÿÿÿÿÿÿÿÿÿ 
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ 
A>

1/0ÿÿÿÿÿÿÿÿÿ 

1/1ÿÿÿÿÿÿÿÿÿ Ã
I__inference_sequential_35_layer_call_and_return_conditional_losses_211402vCDE'(67C¢@
9¢6
,)
embedding_35_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
I__inference_sequential_35_layer_call_and_return_conditional_losses_211428vCDE'(67C¢@
9¢6
,)
embedding_35_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
I__inference_sequential_35_layer_call_and_return_conditional_losses_211641jCDE'(677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
I__inference_sequential_35_layer_call_and_return_conditional_losses_211820jCDE'(677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_35_layer_call_fn_211048iCDE'(67C¢@
9¢6
,)
embedding_35_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_35_layer_call_fn_211376iCDE'(67C¢@
9¢6
,)
embedding_35_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_35_layer_call_fn_211455]CDE'(677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_35_layer_call_fn_211476]CDE'(677¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ»
$__inference_signature_wrapper_211843CDE'(67Q¢N
¢ 
GªD
B
embedding_35_input,)
embedding_35_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_70"
dense_70ÿÿÿÿÿÿÿÿÿ