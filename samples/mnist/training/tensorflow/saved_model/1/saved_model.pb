ľ
Ĺ00
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

š
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
ŕ
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12v1.13.1-0-g6612da8951Ű
~
Conv1_inputPlaceholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
shape:˙˙˙˙˙˙˙˙˙
§
-Conv1/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@Conv1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

+Conv1/kernel/Initializer/random_uniform/minConst*
_class
loc:@Conv1/kernel*
valueB
 *HYž*
dtype0*
_output_shapes
: 

+Conv1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Conv1/kernel*
valueB
 *HY>
í
5Conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Conv1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*
_class
loc:@Conv1/kernel*
seed2 
Î
+Conv1/kernel/Initializer/random_uniform/subSub+Conv1/kernel/Initializer/random_uniform/max+Conv1/kernel/Initializer/random_uniform/min*
_class
loc:@Conv1/kernel*
_output_shapes
: *
T0
č
+Conv1/kernel/Initializer/random_uniform/mulMul5Conv1/kernel/Initializer/random_uniform/RandomUniform+Conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Ú
'Conv1/kernel/Initializer/random_uniformAdd+Conv1/kernel/Initializer/random_uniform/mul+Conv1/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*
_class
loc:@Conv1/kernel
Ž
Conv1/kernelVarHandleOp*
shared_nameConv1/kernel*
_class
loc:@Conv1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-Conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel*
_output_shapes
: 

Conv1/kernel/AssignAssignVariableOpConv1/kernel'Conv1/kernel/Initializer/random_uniform*
_class
loc:@Conv1/kernel*
dtype0

 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:

Conv1/bias/Initializer/zerosConst*
_class
loc:@Conv1/bias*
valueB*    *
dtype0*
_output_shapes
:


Conv1/biasVarHandleOp*
shared_name
Conv1/bias*
_class
loc:@Conv1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
e
+Conv1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Conv1/bias*
_output_shapes
: 
{
Conv1/bias/AssignAssignVariableOp
Conv1/biasConv1/bias/Initializer/zeros*
_class
loc:@Conv1/bias*
dtype0

Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:*
_class
loc:@Conv1/bias
d
Conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
p
Conv1/Conv2D/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
é
Conv1/Conv2DConv2DConv1_inputConv1/Conv2D/ReadVariableOp*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0
c
Conv1/BiasAdd/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:

Conv1/BiasAddBiasAddConv1/Conv2DConv1/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[

Conv1/ReluReluConv1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
flatten/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
b
flatten/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙

flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
~
flatten/ReshapeReshape
Conv1/Reluflatten/Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
*
T0*
Tshape0
Ł
/Softmax/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@Softmax/kernel*
valueB"H  
   

-Softmax/kernel/Initializer/random_uniform/minConst*!
_class
loc:@Softmax/kernel*
valueB
 *7î˝*
dtype0*
_output_shapes
: 

-Softmax/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@Softmax/kernel*
valueB
 *7î=*
dtype0*
_output_shapes
: 
ě
7Softmax/kernel/Initializer/random_uniform/RandomUniformRandomUniform/Softmax/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	Č

*

seed *
T0*!
_class
loc:@Softmax/kernel
Ö
-Softmax/kernel/Initializer/random_uniform/subSub-Softmax/kernel/Initializer/random_uniform/max-Softmax/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@Softmax/kernel*
_output_shapes
: 
é
-Softmax/kernel/Initializer/random_uniform/mulMul7Softmax/kernel/Initializer/random_uniform/RandomUniform-Softmax/kernel/Initializer/random_uniform/sub*
_output_shapes
:	Č

*
T0*!
_class
loc:@Softmax/kernel
Ű
)Softmax/kernel/Initializer/random_uniformAdd-Softmax/kernel/Initializer/random_uniform/mul-Softmax/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@Softmax/kernel*
_output_shapes
:	Č


­
Softmax/kernelVarHandleOp*
shared_nameSoftmax/kernel*!
_class
loc:@Softmax/kernel*
	container *
shape:	Č

*
dtype0*
_output_shapes
: 
m
/Softmax/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel*
_output_shapes
: 

Softmax/kernel/AssignAssignVariableOpSoftmax/kernel)Softmax/kernel/Initializer/random_uniform*!
_class
loc:@Softmax/kernel*
dtype0

"Softmax/kernel/Read/ReadVariableOpReadVariableOpSoftmax/kernel*!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
:	Č



Softmax/bias/Initializer/zerosConst*
_class
loc:@Softmax/bias*
valueB
*    *
dtype0*
_output_shapes
:

˘
Softmax/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameSoftmax/bias*
_class
loc:@Softmax/bias*
	container *
shape:

i
-Softmax/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias*
_output_shapes
: 

Softmax/bias/AssignAssignVariableOpSoftmax/biasSoftmax/bias/Initializer/zeros*
_class
loc:@Softmax/bias*
dtype0

 Softmax/bias/Read/ReadVariableOpReadVariableOpSoftmax/bias*
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:

m
Softmax/MatMul/ReadVariableOpReadVariableOpSoftmax/kernel*
dtype0*
_output_shapes
:	Č


 
Softmax/MatMulMatMulflatten/ReshapeSoftmax/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_b( 
g
Softmax/BiasAdd/ReadVariableOpReadVariableOpSoftmax/bias*
dtype0*
_output_shapes
:


Softmax/BiasAddBiasAddSoftmax/MatMulSoftmax/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

]
Softmax/SoftmaxSoftmaxSoftmax/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


0TFOptimizer/iterations/Initializer/initial_valueConst*)
_class
loc:@TFOptimizer/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
ź
TFOptimizer/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *'
shared_nameTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
	container *
shape: 
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
ł
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*
dtype0	*)
_class
loc:@TFOptimizer/iterations
¤
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 

Softmax_targetPlaceholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
_output_shapes
:*
valueB*  ?*
dtype0

Softmax_sample_weightsPlaceholderWithDefaultConst*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
v
total/Initializer/zerosConst*
_class

loc:@total*
valueB
 *    *
dtype0*
_output_shapes
: 

totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
_class

loc:@count*
valueB
 *    *
dtype0*
_output_shapes
: 

countVarHandleOp*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
_class

loc:@count*
dtype0
\
loss/Softmax_loss/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
\
loss/Softmax_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/Softmax_loss/subSubloss/Softmax_loss/sub/xloss/Softmax_loss/Const*
T0*
_output_shapes
: 

'loss/Softmax_loss/clip_by_value/MinimumMinimumSoftmax/Softmaxloss/Softmax_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


loss/Softmax_loss/clip_by_valueMaximum'loss/Softmax_loss/clip_by_value/Minimumloss/Softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

o
loss/Softmax_loss/LogLogloss/Softmax_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

r
loss/Softmax_loss/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

loss/Softmax_loss/ReshapeReshapeSoftmax_targetloss/Softmax_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/Softmax_loss/CastCastloss/Softmax_loss/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
!loss/Softmax_loss/Reshape_1/shapeConst*
valueB"˙˙˙˙
   *
dtype0*
_output_shapes
:
 
loss/Softmax_loss/Reshape_1Reshapeloss/Softmax_loss/Log!loss/Softmax_loss/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0

;loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/Softmax_loss/Cast*
T0	*
out_type0*
_output_shapes
:

Yloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/Softmax_loss/Reshape_1loss/Softmax_loss/Cast*
T0*
Tlabels0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙


Floss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeSoftmax_sample_weights*
T0*
out_type0*
_output_shapes
:

Eloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
Ţ
Eloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0

Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ů
Bloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarEqualDloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar/xEloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Ď
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityPloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Í
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityNloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ŕ
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

é
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*U
_classK
IGloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar

nloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualuloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchwloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

uloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchDloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rankOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*W
_classM
KIloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank

wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rankOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
ő
hloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchnloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranknloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityjloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityhloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitynloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
ş
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
}loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
Ź
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::

loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Á
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
˛
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
É
|loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
­
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2}loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims|loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
ź
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
Ő
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
°
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchFloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:*
set_operationa-b*
T0*
validate_indices(
Í
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
Ł
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstk^loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualtloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ö
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchnloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankiloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classw
usloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ü
gloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergejloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
T0
*
N
ż
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergegloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeRloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Ś
>loss/Softmax_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_1Const*
_output_shapes
: *
valueB Bweights.shape=*
dtype0

@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_2Const*)
value B BSoftmax_sample_weights:0*
dtype0*
_output_shapes
: 

@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_3Const*
_output_shapes
: *
valueB Bvalues.shape=*
dtype0
Ü
@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_4Const*l
valuecBa B[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 

@loss/Softmax_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Kloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

É
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ç
Mloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityKloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Č
Lloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ą
Iloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Wloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tJ^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0


Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ń
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ű
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B BSoftmax_sample_weights:0*
dtype0*
_output_shapes
: 
đ
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ž
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*l
valuecBa B[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
í
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstN^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
Č
Kloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertRloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchRloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
	summarize*
T
2	

ţ
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchMloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ú
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchFloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shapeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ř
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchEloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shapeLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*X
_classN
LJloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape
ę
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchBloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalarLloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*U
_classK
IGloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

Yloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityMloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fL^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*`
_classV
TRloc:@loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
ł
Jloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeYloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Wloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0


3loss/Softmax_loss/broadcast_weights/ones_like/ShapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsK^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ĺ
3loss/Softmax_loss/broadcast_weights/ones_like/ConstConstK^loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
-loss/Softmax_loss/broadcast_weights/ones_likeFill3loss/Softmax_loss/broadcast_weights/ones_like/Shape3loss/Softmax_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0

#loss/Softmax_loss/broadcast_weightsMulSoftmax_sample_weights-loss/Softmax_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
loss/Softmax_loss/MulMulYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#loss/Softmax_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
c
loss/Softmax_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/Softmax_loss/SumSumloss/Softmax_loss/Mulloss/Softmax_loss/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
c
loss/Softmax_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/Softmax_loss/Sum_1Sum#loss/Softmax_loss/broadcast_weightsloss/Softmax_loss/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
y
loss/Softmax_loss/div_no_nanDivNoNanloss/Softmax_loss/Sumloss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
\
loss/Softmax_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 

loss/Softmax_loss/MeanMeanloss/Softmax_loss/div_no_nanloss/Softmax_loss/Const_3*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/Softmax_loss/Mean*
T0*
_output_shapes
: 

metrics/acc/CastCastSoftmax_target*

SrcT0*
Truncate( *

DstT0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
~
metrics/acc/SqueezeSqueezemetrics/acc/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxSoftmax/Softmaxmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
{
metrics/acc/Cast_1Castmetrics/acc/ArgMax*
Truncate( *

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0	
q
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
metrics/acc/Cast_2Castmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
metrics/acc/SizeSizemetrics/acc/Cast_2*
T0*
out_type0*
_output_shapes
: 
l
metrics/acc/Cast_3Castmetrics/acc/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/SumSummetrics/acc/Cast_2metrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
z
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp*
dtype0*
_output_shapes
: 
}
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_3^metrics/acc/ReadVariableOp*
dtype0

metrics/acc/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1^metrics/acc/ReadVariableOp*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
~
metrics/acc/Squeeze_1SqueezeSoftmax_target*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxSoftmax/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
}
metrics/acc/Cast_4Castmetrics/acc/ArgMax_1*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
metrics/acc/Equal_1Equalmetrics/acc/Squeeze_1metrics/acc/Cast_4*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
metrics/acc/Cast_5Castmetrics/acc/Equal_1*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
metrics/acc/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

metrics/acc/MeanMeanmetrics/acc/Cast_5metrics/acc/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
g
$training/TFOptimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
m
(training/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ž
#training/TFOptimizer/gradients/FillFill$training/TFOptimizer/gradients/Shape(training/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

0training/TFOptimizer/gradients/loss/mul_grad/MulMul#training/TFOptimizer/gradients/Fillloss/Softmax_loss/Mean*
_output_shapes
: *
T0

2training/TFOptimizer/gradients/loss/mul_grad/Mul_1Mul#training/TFOptimizer/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
­
=training/TFOptimizer/gradients/loss/mul_grad/tuple/group_depsNoOp1^training/TFOptimizer/gradients/loss/mul_grad/Mul3^training/TFOptimizer/gradients/loss/mul_grad/Mul_1
Š
Etraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity0training/TFOptimizer/gradients/loss/mul_grad/Mul>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: 
Ż
Gtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity2training/TFOptimizer/gradients/loss/mul_grad/Mul_1>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*E
_class;
97loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1*
_output_shapes
: *
T0

Htraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Htraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0

@training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 

?training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/TileTileBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Reshape@training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0

Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ó
Btraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivRealDiv?training/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/TileBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/Const_1*
_output_shapes
: *
T0

Ftraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0

Htraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ž
Vtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/ShapeHtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ő
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/div_no_nanDivNoNanBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivloss/Softmax_loss/Sum_1*
T0*
_output_shapes
: 
Ž
Dtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/SumSumKtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/div_no_nanVtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

Htraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/ReshapeReshapeDtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/SumFtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Shape*
_output_shapes
: *
T0*
Tshape0

Dtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/NegNegloss/Softmax_loss/Sum*
T0*
_output_shapes
: 
Ů
Mtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/div_no_nan_1DivNoNanDtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Negloss/Softmax_loss/Sum_1*
_output_shapes
: *
T0
â
Mtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/div_no_nan_2DivNoNanMtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/div_no_nan_1loss/Softmax_loss/Sum_1*
_output_shapes
: *
T0
˙
Dtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/mulMulBtraining/TFOptimizer/gradients/loss/Softmax_loss/Mean_grad/truedivMtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/div_no_nan_2*
T0*
_output_shapes
: 
Ť
Ftraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Sum_1SumDtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/mulXtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 

Jtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Reshape_1ReshapeFtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Sum_1Htraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ń
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/tuple/group_depsNoOpI^training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/ReshapeK^training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Reshape_1

Ytraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/tuple/control_dependencyIdentityHtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/ReshapeR^training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Reshape*
_output_shapes
: 

[training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/tuple/control_dependency_1IdentityJtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Reshape_1R^training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/tuple/group_deps*]
_classS
QOloc:@training/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/Reshape_1*
_output_shapes
: *
T0

Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Ł
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/ReshapeReshapeYtraining/TFOptimizer/gradients/loss/Softmax_loss/div_no_nan_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

?training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/ShapeShapeloss/Softmax_loss/Mul*
_output_shapes
:*
T0*
out_type0

>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/TileTileAtraining/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Reshape?training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ShapeShapeYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
¤
Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1Shape#loss/Softmax_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
Š
Otraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ShapeAtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
×
=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/MulMul>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Tile#loss/Softmax_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/SumSum=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/MulOtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeReshape=training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Mul_1MulYloss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits>training/TFOptimizer/gradients/loss/Softmax_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum_1Sum?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Mul_1Qtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

Ctraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1Reshape?training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Sum_1Atraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
Jtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeD^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1
ň
Rtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/ReshapeK^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ř
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1K^training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/Reshape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
)training/TFOptimizer/gradients/zeros_like	ZerosLike[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ç
training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient[loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
Ř
training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
¸
training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsRtraining/TFOptimizer/gradients/loss/Softmax_loss/Mul_grad/tuple/control_dependencytraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
training/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Etraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ShapeShapeloss/Softmax_loss/Log*
T0*
out_type0*
_output_shapes
:
Ý
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ReshapeReshapetraining/TFOptimizer/gradients/loss/Softmax_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulEtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0
ď
Dtraining/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/Reciprocal
Reciprocalloss/Softmax_loss/clip_by_valueH^training/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mulMulGtraining/TFOptimizer/gradients/loss/Softmax_loss/Reshape_1_grad/ReshapeDtraining/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/Reciprocal*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
°
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ShapeShape'loss/Softmax_loss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:

Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Č
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_2Shape=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mul*
T0*
out_type0*
_output_shapes
:

Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ł
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zerosFillKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_2Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros/Const*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Ô
Ptraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/Softmax_loss/clip_by_value/Minimumloss/Softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ç
Ytraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ShapeKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
â
Jtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SelectSelectPtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqual=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mulItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ä
Ltraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Select_1SelectPtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/GreaterEqualItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/zeros=training/TFOptimizer/gradients/loss/Softmax_loss/Log_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ľ
Gtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SumSumJtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SelectYtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ş
Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/SumItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ť
Itraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Sum_1SumLtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Select_1[training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

Mtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1ReshapeItraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Sum_1Ktraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
ú
Ttraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_depsNoOpL^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeN^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1

\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependencyIdentityKtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/ReshapeU^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_deps*
T0*^
_classT
RPloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency_1IdentityMtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1U^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/group_deps*
T0*`
_classV
TRloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/Reshape_1*
_output_shapes
: 
 
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ShapeShapeSoftmax/Softmax*
_output_shapes
:*
T0*
out_type0

Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ď
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Shape\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:

Wtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ë
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zerosFillStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_2Wtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ź
Utraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualSoftmax/Softmaxloss/Softmax_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ß
atraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ShapeStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Rtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SelectSelectUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqual\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependencyQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Ttraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Select_1SelectUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/LessEqualQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/zeros\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value_grad/tuple/control_dependency*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Í
Otraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SumSumRtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Selectatraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Â
Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeOtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/SumQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ó
Qtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Sum_1SumTtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Select_1ctraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ˇ
Utraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeQtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Sum_1Straining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

\training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_depsNoOpT^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/ReshapeV^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1
ž
dtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityStraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape]^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ł
ftraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityUtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1]^training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@training/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
ç
7training/TFOptimizer/gradients/Softmax/Softmax_grad/mulMuldtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependencySoftmax/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


Itraining/TFOptimizer/gradients/Softmax/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙

7training/TFOptimizer/gradients/Softmax/Softmax_grad/SumSum7training/TFOptimizer/gradients/Softmax/Softmax_grad/mulItraining/TFOptimizer/gradients/Softmax/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

7training/TFOptimizer/gradients/Softmax/Softmax_grad/subSubdtraining/TFOptimizer/gradients/loss/Softmax_loss/clip_by_value/Minimum_grad/tuple/control_dependency7training/TFOptimizer/gradients/Softmax/Softmax_grad/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ź
9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1Mul7training/TFOptimizer/gradients/Softmax/Softmax_grad/subSoftmax/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ĺ
?training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGradBiasAddGrad9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0
Ę
Dtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGrad:^training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1
Ú
Ltraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1E^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Softmax/Softmax_grad/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ű
Ntraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency_1Identity?training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGradE^training/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/group_deps*
_output_shapes
:
*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/Softmax/BiasAdd_grad/BiasAddGrad

9training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMulMatMulLtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependencySoftmax/MatMul/ReadVariableOp*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

ô
;training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1MatMulflatten/ReshapeLtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	Č

*
transpose_b( *
T0
Ĺ
Ctraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_depsNoOp:^training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul<^training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1
Ů
Ktraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMulD^training/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č

Ö
Mtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency_1Identity;training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1D^training/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@training/TFOptimizer/gradients/Softmax/MatMul_grad/MatMul_1*
_output_shapes
:	Č



9training/TFOptimizer/gradients/flatten/Reshape_grad/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:

;training/TFOptimizer/gradients/flatten/Reshape_grad/ReshapeReshapeKtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency9training/TFOptimizer/gradients/flatten/Reshape_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ć
7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradReluGrad;training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape
Conv1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
Ä
Btraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_depsNoOp>^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad8^training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad
Ú
Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
Ltraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1Identity=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ż
7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNShapeNConv1_inputConv1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
Ś
Dtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNConv1/Conv2D/ReadVariableOpJtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

Etraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv1_input9training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeN:1Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ř
Atraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterE^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput
ň
Itraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependencyIdentityDtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*
T0*W
_classM
KIloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
Ktraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*X
_classN
LJloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0

:training/TFOptimizer/beta1_power/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
: 
Ä
 training/TFOptimizer/beta1_powerVarHandleOp*1
shared_name" training/TFOptimizer/beta1_power*
_class
loc:@Conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
°
Atraining/TFOptimizer/beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOp training/TFOptimizer/beta1_power*
_class
loc:@Conv1/bias*
_output_shapes
: 
Ĺ
'training/TFOptimizer/beta1_power/AssignAssignVariableOp training/TFOptimizer/beta1_power:training/TFOptimizer/beta1_power/Initializer/initial_value*
_class
loc:@Conv1/bias*
dtype0
Ź
4training/TFOptimizer/beta1_power/Read/ReadVariableOpReadVariableOp training/TFOptimizer/beta1_power*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
: 

:training/TFOptimizer/beta2_power/Initializer/initial_valueConst*
valueB
 *wž?*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
: 
Ä
 training/TFOptimizer/beta2_powerVarHandleOp*1
shared_name" training/TFOptimizer/beta2_power*
_class
loc:@Conv1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
°
Atraining/TFOptimizer/beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOp training/TFOptimizer/beta2_power*
_class
loc:@Conv1/bias*
_output_shapes
: 
Ĺ
'training/TFOptimizer/beta2_power/AssignAssignVariableOp training/TFOptimizer/beta2_power:training/TFOptimizer/beta2_power/Initializer/initial_value*
_class
loc:@Conv1/bias*
dtype0
Ź
4training/TFOptimizer/beta2_power/Read/ReadVariableOpReadVariableOp training/TFOptimizer/beta2_power*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
: 
Š
#Conv1/kernel/Adam/Initializer/zerosConst*%
valueB*    *
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
¸
Conv1/kernel/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_nameConv1/kernel/Adam*
_class
loc:@Conv1/kernel*
	container 

2Conv1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel/Adam*
_class
loc:@Conv1/kernel*
_output_shapes
: 

Conv1/kernel/Adam/AssignAssignVariableOpConv1/kernel/Adam#Conv1/kernel/Adam/Initializer/zeros*
_class
loc:@Conv1/kernel*
dtype0
 
%Conv1/kernel/Adam/Read/ReadVariableOpReadVariableOpConv1/kernel/Adam*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
Ť
%Conv1/kernel/Adam_1/Initializer/zerosConst*%
valueB*    *
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
ź
Conv1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameConv1/kernel/Adam_1*
_class
loc:@Conv1/kernel*
	container *
shape:

4Conv1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel/Adam_1*
_class
loc:@Conv1/kernel*
_output_shapes
: 

Conv1/kernel/Adam_1/AssignAssignVariableOpConv1/kernel/Adam_1%Conv1/kernel/Adam_1/Initializer/zeros*
_class
loc:@Conv1/kernel*
dtype0
¤
'Conv1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpConv1/kernel/Adam_1*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:

!Conv1/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
:
Ś
Conv1/bias/AdamVarHandleOp* 
shared_nameConv1/bias/Adam*
_class
loc:@Conv1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 

0Conv1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/bias/Adam*
_output_shapes
: *
_class
loc:@Conv1/bias

Conv1/bias/Adam/AssignAssignVariableOpConv1/bias/Adam!Conv1/bias/Adam/Initializer/zeros*
dtype0*
_class
loc:@Conv1/bias

#Conv1/bias/Adam/Read/ReadVariableOpReadVariableOpConv1/bias/Adam*
dtype0*
_output_shapes
:*
_class
loc:@Conv1/bias

#Conv1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@Conv1/bias*
dtype0
Ş
Conv1/bias/Adam_1VarHandleOp*
_output_shapes
: *"
shared_nameConv1/bias/Adam_1*
_class
loc:@Conv1/bias*
	container *
shape:*
dtype0

2Conv1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/bias/Adam_1*
_class
loc:@Conv1/bias*
_output_shapes
: 

Conv1/bias/Adam_1/AssignAssignVariableOpConv1/bias/Adam_1#Conv1/bias/Adam_1/Initializer/zeros*
dtype0*
_class
loc:@Conv1/bias

%Conv1/bias/Adam_1/Read/ReadVariableOpReadVariableOpConv1/bias/Adam_1*
dtype0*
_output_shapes
:*
_class
loc:@Conv1/bias
Š
5Softmax/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"H  
   *!
_class
loc:@Softmax/kernel

+Softmax/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
: 
đ
%Softmax/kernel/Adam/Initializer/zerosFill5Softmax/kernel/Adam/Initializer/zeros/shape_as_tensor+Softmax/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	Č

*
T0*

index_type0*!
_class
loc:@Softmax/kernel
ˇ
Softmax/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *$
shared_nameSoftmax/kernel/Adam*!
_class
loc:@Softmax/kernel*
	container *
shape:	Č



4Softmax/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel/Adam*!
_class
loc:@Softmax/kernel*
_output_shapes
: 

Softmax/kernel/Adam/AssignAssignVariableOpSoftmax/kernel/Adam%Softmax/kernel/Adam/Initializer/zeros*!
_class
loc:@Softmax/kernel*
dtype0

'Softmax/kernel/Adam/Read/ReadVariableOpReadVariableOpSoftmax/kernel/Adam*!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
:	Č


Ť
7Softmax/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"H  
   *!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
:

-Softmax/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
: 
ö
'Softmax/kernel/Adam_1/Initializer/zerosFill7Softmax/kernel/Adam_1/Initializer/zeros/shape_as_tensor-Softmax/kernel/Adam_1/Initializer/zeros/Const*

index_type0*!
_class
loc:@Softmax/kernel*
_output_shapes
:	Č

*
T0
ť
Softmax/kernel/Adam_1VarHandleOp*&
shared_nameSoftmax/kernel/Adam_1*!
_class
loc:@Softmax/kernel*
	container *
shape:	Č

*
dtype0*
_output_shapes
: 

6Softmax/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/kernel/Adam_1*!
_class
loc:@Softmax/kernel*
_output_shapes
: 
 
Softmax/kernel/Adam_1/AssignAssignVariableOpSoftmax/kernel/Adam_1'Softmax/kernel/Adam_1/Initializer/zeros*
dtype0*!
_class
loc:@Softmax/kernel
Ł
)Softmax/kernel/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/kernel/Adam_1*!
_class
loc:@Softmax/kernel*
dtype0*
_output_shapes
:	Č



#Softmax/bias/Adam/Initializer/zerosConst*
valueB
*    *
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:

Ź
Softmax/bias/AdamVarHandleOp*"
shared_nameSoftmax/bias/Adam*
_class
loc:@Softmax/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 

2Softmax/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam*
_class
loc:@Softmax/bias*
_output_shapes
: 

Softmax/bias/Adam/AssignAssignVariableOpSoftmax/bias/Adam#Softmax/bias/Adam/Initializer/zeros*
_class
loc:@Softmax/bias*
dtype0

%Softmax/bias/Adam/Read/ReadVariableOpReadVariableOpSoftmax/bias/Adam*
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:


%Softmax/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *
_class
loc:@Softmax/bias
°
Softmax/bias/Adam_1VarHandleOp*
_class
loc:@Softmax/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nameSoftmax/bias/Adam_1

4Softmax/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpSoftmax/bias/Adam_1*
_class
loc:@Softmax/bias*
_output_shapes
: 

Softmax/bias/Adam_1/AssignAssignVariableOpSoftmax/bias/Adam_1%Softmax/bias/Adam_1/Initializer/zeros*
_class
loc:@Softmax/bias*
dtype0

'Softmax/bias/Adam_1/Read/ReadVariableOpReadVariableOpSoftmax/bias/Adam_1*
_class
loc:@Softmax/bias*
dtype0*
_output_shapes
:

l
'training/TFOptimizer/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
d
training/TFOptimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
d
training/TFOptimizer/Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
f
!training/TFOptimizer/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
§
Ntraining/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOp training/TFOptimizer/beta1_power*
dtype0*
_output_shapes
: 
Š
Ptraining/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOp training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
: 
Ř
?training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdamResourceApplyAdamConv1/kernelConv1/kernel/AdamConv1/kernel/Adam_1Ntraining/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam/ReadVariableOpPtraining/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam/ReadVariableOp_1'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonKtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Conv1/kernel*
use_nesterov( 
Ľ
Ltraining/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOp training/TFOptimizer/beta1_power*
dtype0*
_output_shapes
: 
§
Ntraining/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOp training/TFOptimizer/beta2_power*
_output_shapes
: *
dtype0
Ë
=training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdamResourceApplyAdam
Conv1/biasConv1/bias/AdamConv1/bias/Adam_1Ltraining/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam/ReadVariableOpNtraining/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam/ReadVariableOp_1'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonLtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Conv1/bias*
use_nesterov( 
Š
Ptraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOp training/TFOptimizer/beta1_power*
dtype0*
_output_shapes
: 
Ť
Rtraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOp training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
: 
č
Atraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdamResourceApplyAdamSoftmax/kernelSoftmax/kernel/AdamSoftmax/kernel/Adam_1Ptraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam/ReadVariableOpRtraining/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam/ReadVariableOp_1'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonMtraining/TFOptimizer/gradients/Softmax/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@Softmax/kernel*
use_nesterov( 
§
Ntraining/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdam/ReadVariableOpReadVariableOp training/TFOptimizer/beta1_power*
_output_shapes
: *
dtype0
Š
Ptraining/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOp training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
: 
Ű
?training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamResourceApplyAdamSoftmax/biasSoftmax/bias/AdamSoftmax/bias/Adam_1Ntraining/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdam/ReadVariableOpPtraining/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdam/ReadVariableOp_1'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonNtraining/TFOptimizer/gradients/Softmax/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Softmax/bias*
use_nesterov( 

(training/TFOptimizer/Adam/ReadVariableOpReadVariableOp training/TFOptimizer/beta1_power>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
Ż
training/TFOptimizer/Adam/mulMul(training/TFOptimizer/Adam/ReadVariableOptraining/TFOptimizer/Adam/beta1*
T0*
_class
loc:@Conv1/bias*
_output_shapes
: 
Ť
*training/TFOptimizer/Adam/AssignVariableOpAssignVariableOp training/TFOptimizer/beta1_powertraining/TFOptimizer/Adam/mul*
_class
loc:@Conv1/bias*
dtype0
×
*training/TFOptimizer/Adam/ReadVariableOp_1ReadVariableOp training/TFOptimizer/beta1_power+^training/TFOptimizer/Adam/AssignVariableOp>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
_output_shapes
: *
_class
loc:@Conv1/bias*
dtype0

*training/TFOptimizer/Adam/ReadVariableOp_2ReadVariableOp training/TFOptimizer/beta2_power>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
ł
training/TFOptimizer/Adam/mul_1Mul*training/TFOptimizer/Adam/ReadVariableOp_2training/TFOptimizer/Adam/beta2*
_class
loc:@Conv1/bias*
_output_shapes
: *
T0
Ż
,training/TFOptimizer/Adam/AssignVariableOp_1AssignVariableOp training/TFOptimizer/beta2_powertraining/TFOptimizer/Adam/mul_1*
dtype0*
_class
loc:@Conv1/bias
Ů
*training/TFOptimizer/Adam/ReadVariableOp_3ReadVariableOp training/TFOptimizer/beta2_power-^training/TFOptimizer/Adam/AssignVariableOp_1>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
: 

 training/TFOptimizer/Adam/updateNoOp+^training/TFOptimizer/Adam/ReadVariableOp_1+^training/TFOptimizer/Adam/ReadVariableOp_3>^training/TFOptimizer/Adam/update_Conv1/bias/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Conv1/kernel/ResourceApplyAdam@^training/TFOptimizer/Adam/update_Softmax/bias/ResourceApplyAdamB^training/TFOptimizer/Adam/update_Softmax/kernel/ResourceApplyAdam
Ż
training/TFOptimizer/Adam/ConstConst!^training/TFOptimizer/Adam/update*
dtype0	*
_output_shapes
: *)
_class
loc:@TFOptimizer/iterations*
value	B	 R
Ą
training/TFOptimizer/AdamAssignAddVariableOpTFOptimizer/iterationstraining/TFOptimizer/Adam/Const*)
_class
loc:@TFOptimizer/iterations*
dtype0	
]
training_1/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan^training/TFOptimizer/Adam
N
VarIsInitializedOpVarIsInitializedOpSoftmax/bias*
_output_shapes
: 
R
VarIsInitializedOp_1VarIsInitializedOpSoftmax/kernel*
_output_shapes
: 
Z
VarIsInitializedOp_2VarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
W
VarIsInitializedOp_3VarIsInitializedOpConv1/kernel/Adam_1*
_output_shapes
: 
d
VarIsInitializedOp_4VarIsInitializedOp training/TFOptimizer/beta1_power*
_output_shapes
: 
P
VarIsInitializedOp_5VarIsInitializedOpConv1/kernel*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOpcount*
_output_shapes
: 
I
VarIsInitializedOp_7VarIsInitializedOptotal*
_output_shapes
: 
S
VarIsInitializedOp_8VarIsInitializedOpConv1/bias/Adam*
_output_shapes
: 
N
VarIsInitializedOp_9VarIsInitializedOp
Conv1/bias*
_output_shapes
: 
Z
VarIsInitializedOp_10VarIsInitializedOpSoftmax/kernel/Adam_1*
_output_shapes
: 
V
VarIsInitializedOp_11VarIsInitializedOpSoftmax/bias/Adam*
_output_shapes
: 
X
VarIsInitializedOp_12VarIsInitializedOpSoftmax/kernel/Adam*
_output_shapes
: 
e
VarIsInitializedOp_13VarIsInitializedOp training/TFOptimizer/beta2_power*
_output_shapes
: 
X
VarIsInitializedOp_14VarIsInitializedOpSoftmax/bias/Adam_1*
_output_shapes
: 
V
VarIsInitializedOp_15VarIsInitializedOpConv1/kernel/Adam*
_output_shapes
: 
V
VarIsInitializedOp_16VarIsInitializedOpConv1/bias/Adam_1*
_output_shapes
: 
Ö
initNoOp^Conv1/bias/Adam/Assign^Conv1/bias/Adam_1/Assign^Conv1/bias/Assign^Conv1/kernel/Adam/Assign^Conv1/kernel/Adam_1/Assign^Conv1/kernel/Assign^Softmax/bias/Adam/Assign^Softmax/bias/Adam_1/Assign^Softmax/bias/Assign^Softmax/kernel/Adam/Assign^Softmax/kernel/Adam_1/Assign^Softmax/kernel/Assign^TFOptimizer/iterations/Assign^count/Assign^total/Assign(^training/TFOptimizer/beta1_power/Assign(^training/TFOptimizer/beta2_power/Assign
L
PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
_output_shapes
: *
dtype0
N
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
A
evaluation/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d5c4eb038ac74dc68738e5c45990e26d/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*É
valueżBźB
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BTFOptimizer/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_power*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
â
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConv1/bias/Read/ReadVariableOp#Conv1/bias/Adam/Read/ReadVariableOp%Conv1/bias/Adam_1/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOp%Conv1/kernel/Adam/Read/ReadVariableOp'Conv1/kernel/Adam_1/Read/ReadVariableOp Softmax/bias/Read/ReadVariableOp%Softmax/bias/Adam/Read/ReadVariableOp'Softmax/bias/Adam_1/Read/ReadVariableOp"Softmax/kernel/Read/ReadVariableOp'Softmax/kernel/Adam/Read/ReadVariableOp)Softmax/kernel/Adam_1/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp4training/TFOptimizer/beta1_power/Read/ReadVariableOp4training/TFOptimizer/beta2_power/Read/ReadVariableOp*
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst*
_output_shapes
:*É
valueżBźB
Conv1/biasBConv1/bias/AdamBConv1/bias/Adam_1BConv1/kernelBConv1/kernel/AdamBConv1/kernel/Adam_1BSoftmax/biasBSoftmax/bias/AdamBSoftmax/bias/Adam_1BSoftmax/kernelBSoftmax/kernel/AdamBSoftmax/kernel/Adam_1BTFOptimizer/iterationsB training/TFOptimizer/beta1_powerB training/TFOptimizer/beta2_power*
dtype0

save/RestoreV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ö
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*P
_output_shapes>
<:::::::::::::::*
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
S
save/AssignVariableOpAssignVariableOp
Conv1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
Z
save/AssignVariableOp_1AssignVariableOpConv1/bias/Adamsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
\
save/AssignVariableOp_2AssignVariableOpConv1/bias/Adam_1save/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
W
save/AssignVariableOp_3AssignVariableOpConv1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
\
save/AssignVariableOp_4AssignVariableOpConv1/kernel/Adamsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
^
save/AssignVariableOp_5AssignVariableOpConv1/kernel/Adam_1save/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
W
save/AssignVariableOp_6AssignVariableOpSoftmax/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
\
save/AssignVariableOp_7AssignVariableOpSoftmax/bias/Adamsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
^
save/AssignVariableOp_8AssignVariableOpSoftmax/bias/Adam_1save/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Z
save/AssignVariableOp_9AssignVariableOpSoftmax/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
`
save/AssignVariableOp_10AssignVariableOpSoftmax/kernel/Adamsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
b
save/AssignVariableOp_11AssignVariableOpSoftmax/kernel/Adam_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0	*
_output_shapes
:
c
save/AssignVariableOp_12AssignVariableOpTFOptimizer/iterationssave/Identity_13*
dtype0	
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
m
save/AssignVariableOp_13AssignVariableOp training/TFOptimizer/beta1_powersave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
m
save/AssignVariableOp_14AssignVariableOp training/TFOptimizer/beta2_powersave/Identity_15*
dtype0
Ł
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"Éy
cond_context¸yľy
Ú
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textQloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Ű
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1Ś
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Y
Sloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ř)
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
iloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
jloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Rloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ő
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Á
Floss/Softmax_loss/broadcast_weights/assert_broadcastable/values/rank:0wloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ň
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ä
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/rank:0yloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Ś
Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Qloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:02í"
ę"
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textkloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 * 
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
{loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
~loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
vloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
tloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0×
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ô
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ú
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02š

ś

mloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*é
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0ŕ
ploss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0lloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0Ú
kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0kloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0

Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textNloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *
Yloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ˇ
Ploss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Á
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
[loss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0˘
Hloss/Softmax_loss/broadcast_weights/assert_broadcastable/weights/shape:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0 
Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Nloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ą
Gloss/Softmax_loss/broadcast_weights/assert_broadcastable/values/shape:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Dloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_scalar:0Vloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0§
Oloss/Softmax_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Tloss/Softmax_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0")
train_op

training/TFOptimizer/Adam"Ů
	variablesËČ
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08

Softmax/kernel:0Softmax/kernel/Assign$Softmax/kernel/Read/ReadVariableOp:0(2+Softmax/kernel/Initializer/random_uniform:08
o
Softmax/bias:0Softmax/bias/Assign"Softmax/bias/Read/ReadVariableOp:0(2 Softmax/bias/Initializer/zeros:08

TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08
Ĺ
"training/TFOptimizer/beta1_power:0'training/TFOptimizer/beta1_power/Assign6training/TFOptimizer/beta1_power/Read/ReadVariableOp:0(2<training/TFOptimizer/beta1_power/Initializer/initial_value:0
Ĺ
"training/TFOptimizer/beta2_power:0'training/TFOptimizer/beta2_power/Assign6training/TFOptimizer/beta2_power/Read/ReadVariableOp:0(2<training/TFOptimizer/beta2_power/Initializer/initial_value:0

Conv1/kernel/Adam:0Conv1/kernel/Adam/Assign'Conv1/kernel/Adam/Read/ReadVariableOp:0(2%Conv1/kernel/Adam/Initializer/zeros:0

Conv1/kernel/Adam_1:0Conv1/kernel/Adam_1/Assign)Conv1/kernel/Adam_1/Read/ReadVariableOp:0(2'Conv1/kernel/Adam_1/Initializer/zeros:0
y
Conv1/bias/Adam:0Conv1/bias/Adam/Assign%Conv1/bias/Adam/Read/ReadVariableOp:0(2#Conv1/bias/Adam/Initializer/zeros:0

Conv1/bias/Adam_1:0Conv1/bias/Adam_1/Assign'Conv1/bias/Adam_1/Read/ReadVariableOp:0(2%Conv1/bias/Adam_1/Initializer/zeros:0

Softmax/kernel/Adam:0Softmax/kernel/Adam/Assign)Softmax/kernel/Adam/Read/ReadVariableOp:0(2'Softmax/kernel/Adam/Initializer/zeros:0

Softmax/kernel/Adam_1:0Softmax/kernel/Adam_1/Assign+Softmax/kernel/Adam_1/Read/ReadVariableOp:0(2)Softmax/kernel/Adam_1/Initializer/zeros:0

Softmax/bias/Adam:0Softmax/bias/Adam/Assign'Softmax/bias/Adam/Read/ReadVariableOp:0(2%Softmax/bias/Adam/Initializer/zeros:0

Softmax/bias/Adam_1:0Softmax/bias/Adam_1/Assign)Softmax/bias/Adam_1/Read/ReadVariableOp:0(2'Softmax/bias/Adam_1/Initializer/zeros:0"
trainable_variablesüů
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08

Softmax/kernel:0Softmax/kernel/Assign$Softmax/kernel/Read/ReadVariableOp:0(2+Softmax/kernel/Initializer/random_uniform:08
o
Softmax/bias:0Softmax/bias/Assign"Softmax/bias/Read/ReadVariableOp:0(2 Softmax/bias/Initializer/zeros:08

TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08*Ź
serving_default
;
input_image,
Conv1_input:0˙˙˙˙˙˙˙˙˙=
Softmax/Softmax:0(
Softmax/Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict