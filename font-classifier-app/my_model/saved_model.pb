??

??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12unknown8??
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
: *
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
: *
dtype0
?
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
:@*
dtype0
?
conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_51/kernel
~
$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_51/bias
n
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes	
:?*
dtype0
|
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?3?* 
shared_namedense_31/kernel
u
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel* 
_output_shapes
:
?3?*
dtype0
s
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_31/bias
l
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes	
:?*
dtype0
|
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_30/kernel
u
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel* 
_output_shapes
:
??*
dtype0
s
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_30/bias
l
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes	
:?*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
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
?
RMSprop/conv2d_53/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameRMSprop/conv2d_53/kernel/rms
?
0RMSprop/conv2d_53/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_53/kernel/rms*&
_output_shapes
: *
dtype0
?
RMSprop/conv2d_53/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_53/bias/rms
?
.RMSprop/conv2d_53/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_53/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/conv2d_52/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*-
shared_nameRMSprop/conv2d_52/kernel/rms
?
0RMSprop/conv2d_52/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_52/kernel/rms*&
_output_shapes
: @*
dtype0
?
RMSprop/conv2d_52/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/conv2d_52/bias/rms
?
.RMSprop/conv2d_52/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_52/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/conv2d_51/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*-
shared_nameRMSprop/conv2d_51/kernel/rms
?
0RMSprop/conv2d_51/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_51/kernel/rms*'
_output_shapes
:@?*
dtype0
?
RMSprop/conv2d_51/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameRMSprop/conv2d_51/bias/rms
?
.RMSprop/conv2d_51/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_51/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_31/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?3?*,
shared_nameRMSprop/dense_31/kernel/rms
?
/RMSprop/dense_31/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_31/kernel/rms* 
_output_shapes
:
?3?*
dtype0
?
RMSprop/dense_31/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/dense_31/bias/rms
?
-RMSprop/dense_31/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_31/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_30/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/dense_30/kernel/rms
?
/RMSprop/dense_30/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_30/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/dense_30/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/dense_30/bias/rms
?
-RMSprop/dense_30/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_30/bias/rms*
_output_shapes	
:?*
dtype0

NoOpNoOp
?9
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?8
value?8B?8 B?8
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
R
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
?
Citer
	Ddecay
Elearning_rate
Fmomentum
Grho
rms?
rms?
rms?
rms?
%rms?
&rms?
7rms?
8rms?
=rms?
>rms?
F
0
1
2
3
%4
&5
76
87
=8
>9
F
0
1
2
3
%4
&5
76
87
=8
>9
 
?
Hlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Imetrics
Jnon_trainable_variables
Klayer_metrics

Llayers
 
\Z
VARIABLE_VALUEconv2d_53/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_53/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Mlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Nmetrics
Onon_trainable_variables
Player_metrics

Qlayers
 
 
 
?
Rlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Smetrics
Tnon_trainable_variables
Ulayer_metrics

Vlayers
\Z
VARIABLE_VALUEconv2d_52/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_52/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Wlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Xmetrics
Ynon_trainable_variables
Zlayer_metrics

[layers
 
 
 
?
\layer_regularization_losses
!	variables
"trainable_variables
#regularization_losses
]metrics
^non_trainable_variables
_layer_metrics

`layers
\Z
VARIABLE_VALUEconv2d_51/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_51/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?
alayer_regularization_losses
'	variables
(trainable_variables
)regularization_losses
bmetrics
cnon_trainable_variables
dlayer_metrics

elayers
 
 
 
?
flayer_regularization_losses
+	variables
,trainable_variables
-regularization_losses
gmetrics
hnon_trainable_variables
ilayer_metrics

jlayers
 
 
 
?
klayer_regularization_losses
/	variables
0trainable_variables
1regularization_losses
lmetrics
mnon_trainable_variables
nlayer_metrics

olayers
 
 
 
?
player_regularization_losses
3	variables
4trainable_variables
5regularization_losses
qmetrics
rnon_trainable_variables
slayer_metrics

tlayers
[Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
ulayer_regularization_losses
9	variables
:trainable_variables
;regularization_losses
vmetrics
wnon_trainable_variables
xlayer_metrics

ylayers
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
?
zlayer_regularization_losses
?	variables
@trainable_variables
Aregularization_losses
{metrics
|non_trainable_variables
}layer_metrics

~layers
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
 

0
?1
 
 
F
0
1
2
3
4
5
6
7
	8

9
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUERMSprop/conv2d_53/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_53/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_52/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_52/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_51/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/conv2d_51/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_31/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_31/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_30/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_30/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_53_inputPlaceholder*0
_output_shapes
:??????????*
dtype0*%
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_53_inputconv2d_53/kernelconv2d_53/biasconv2d_52/kernelconv2d_52/biasconv2d_51/kernelconv2d_51/biasdense_31/kerneldense_31/biasdense_30/kerneldense_30/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_992789
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_51/kernel/Read/ReadVariableOp"conv2d_51/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0RMSprop/conv2d_53/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_53/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_52/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_52/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_51/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_51/bias/rms/Read/ReadVariableOp/RMSprop/dense_31/kernel/rms/Read/ReadVariableOp-RMSprop/dense_31/bias/rms/Read/ReadVariableOp/RMSprop/dense_30/kernel/rms/Read/ReadVariableOp-RMSprop/dense_30/bias/rms/Read/ReadVariableOpConst**
Tin#
!2	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_993184
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_53/kernelconv2d_53/biasconv2d_52/kernelconv2d_52/biasconv2d_51/kernelconv2d_51/biasdense_31/kerneldense_31/biasdense_30/kerneldense_30/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_53/kernel/rmsRMSprop/conv2d_53/bias/rmsRMSprop/conv2d_52/kernel/rmsRMSprop/conv2d_52/bias/rmsRMSprop/conv2d_51/kernel/rmsRMSprop/conv2d_51/bias/rmsRMSprop/dense_31/kernel/rmsRMSprop/dense_31/bias/rmsRMSprop/dense_30/kernel/rmsRMSprop/dense_30/bias/rms*)
Tin"
 2*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_993281??
?
?
.__inference_sequential_15_layer_call_fn_992936

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_9927312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_17_layer_call_fn_993029

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_9925282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????322
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?D
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992841

inputs,
(conv2d_53_conv2d_readvariableop_resource-
)conv2d_53_biasadd_readvariableop_resource,
(conv2d_52_conv2d_readvariableop_resource-
)conv2d_52_biasadd_readvariableop_resource,
(conv2d_51_conv2d_readvariableop_resource-
)conv2d_51_biasadd_readvariableop_resource+
'dense_31_matmul_readvariableop_resource,
(dense_31_biasadd_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource
identity?? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp?dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2Dinputs'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2
conv2d_53/BiasAdd
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
conv2d_53/Relu?
max_pooling2d_51/MaxPoolMaxPoolconv2d_53/Relu:activations:0*/
_output_shapes
:?????????F *
ksize
*
paddingVALID*
strides
2
max_pooling2d_51/MaxPool?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_52/Conv2D/ReadVariableOp?
conv2d_52/Conv2DConv2D!max_pooling2d_51/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@*
paddingSAME*
strides
2
conv2d_52/Conv2D?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_52/BiasAdd/ReadVariableOp?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F@2
conv2d_52/Relu?
max_pooling2d_50/MaxPoolMaxPoolconv2d_52/Relu:activations:0*/
_output_shapes
:?????????#@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_50/MaxPool?
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_51/Conv2D/ReadVariableOp?
conv2d_51/Conv2DConv2D!max_pooling2d_50/MaxPool:output:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?*
paddingSAME*
strides
2
conv2d_51/Conv2D?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_51/BiasAdd/ReadVariableOp?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?2
conv2d_51/BiasAdd
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:?????????#?2
conv2d_51/Relu?
max_pooling2d_49/MaxPoolMaxPoolconv2d_51/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_15/Const?
flatten_15/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:??????????32
flatten_15/Reshapey
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_17/dropout/Const?
dropout_17/dropout/MulMulflatten_15/Reshape:output:0!dropout_17/dropout/Const:output:0*
T0*(
_output_shapes
:??????????32
dropout_17/dropout/Mul
dropout_17/dropout/ShapeShapeflatten_15/Reshape:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????3*
dtype021
/dropout_17/dropout/random_uniform/RandomUniform?
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_17/dropout/GreaterEqual/y?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????32!
dropout_17/dropout/GreaterEqual?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????32
dropout_17/dropout/Cast?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????32
dropout_17/dropout/Mul_1?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource* 
_output_shapes
:
?3?*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldropout_17/dropout/Mul_1:z:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_31/BiasAddt
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_31/Relu?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMuldense_31/Relu:activations:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/BiasAdd}
dense_30/SoftmaxSoftmaxdense_30/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_30/Softmax?
IdentityIdentitydense_30/Softmax:softmax:0!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_15_layer_call_fn_992911

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_9926722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_15_layer_call_fn_992754
conv2d_53_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_53_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_9927312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_53_input
?	
?
.__inference_sequential_15_layer_call_fn_992695
conv2d_53_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_53_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_9926722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_53_input
?{
?
"__inference__traced_restore_993281
file_prefix%
!assignvariableop_conv2d_53_kernel%
!assignvariableop_1_conv2d_53_bias'
#assignvariableop_2_conv2d_52_kernel%
!assignvariableop_3_conv2d_52_bias'
#assignvariableop_4_conv2d_51_kernel%
!assignvariableop_5_conv2d_51_bias&
"assignvariableop_6_dense_31_kernel$
 assignvariableop_7_dense_31_bias&
"assignvariableop_8_dense_30_kernel$
 assignvariableop_9_dense_30_bias$
 assignvariableop_10_rmsprop_iter%
!assignvariableop_11_rmsprop_decay-
)assignvariableop_12_rmsprop_learning_rate(
$assignvariableop_13_rmsprop_momentum#
assignvariableop_14_rmsprop_rho
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_14
0assignvariableop_19_rmsprop_conv2d_53_kernel_rms2
.assignvariableop_20_rmsprop_conv2d_53_bias_rms4
0assignvariableop_21_rmsprop_conv2d_52_kernel_rms2
.assignvariableop_22_rmsprop_conv2d_52_bias_rms4
0assignvariableop_23_rmsprop_conv2d_51_kernel_rms2
.assignvariableop_24_rmsprop_conv2d_51_bias_rms3
/assignvariableop_25_rmsprop_dense_31_kernel_rms1
-assignvariableop_26_rmsprop_dense_31_bias_rms3
/assignvariableop_27_rmsprop_dense_30_kernel_rms1
-assignvariableop_28_rmsprop_dense_30_bias_rms
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_53_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_53_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_52_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_52_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_51_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_51_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_31_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_31_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_30_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_30_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp0assignvariableop_19_rmsprop_conv2d_53_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_rmsprop_conv2d_53_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_rmsprop_conv2d_52_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_rmsprop_conv2d_52_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp0assignvariableop_23_rmsprop_conv2d_51_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp.assignvariableop_24_rmsprop_conv2d_51_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_rmsprop_dense_31_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_rmsprop_dense_31_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_rmsprop_dense_30_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp-assignvariableop_28_rmsprop_dense_30_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29?
Identity_30IdentityIdentity_29:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_30"#
identity_30Identity_30:output:0*?
_input_shapesx
v: :::::::::::::::::::::::::::::2$
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
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
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
?:
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992886

inputs,
(conv2d_53_conv2d_readvariableop_resource-
)conv2d_53_biasadd_readvariableop_resource,
(conv2d_52_conv2d_readvariableop_resource-
)conv2d_52_biasadd_readvariableop_resource,
(conv2d_51_conv2d_readvariableop_resource-
)conv2d_51_biasadd_readvariableop_resource+
'dense_31_matmul_readvariableop_resource,
(dense_31_biasadd_readvariableop_resource+
'dense_30_matmul_readvariableop_resource,
(dense_30_biasadd_readvariableop_resource
identity?? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp?dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2Dinputs'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2
conv2d_53/BiasAdd
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
conv2d_53/Relu?
max_pooling2d_51/MaxPoolMaxPoolconv2d_53/Relu:activations:0*/
_output_shapes
:?????????F *
ksize
*
paddingVALID*
strides
2
max_pooling2d_51/MaxPool?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_52/Conv2D/ReadVariableOp?
conv2d_52/Conv2DConv2D!max_pooling2d_51/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@*
paddingSAME*
strides
2
conv2d_52/Conv2D?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_52/BiasAdd/ReadVariableOp?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F@2
conv2d_52/Relu?
max_pooling2d_50/MaxPoolMaxPoolconv2d_52/Relu:activations:0*/
_output_shapes
:?????????#@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_50/MaxPool?
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_51/Conv2D/ReadVariableOp?
conv2d_51/Conv2DConv2D!max_pooling2d_50/MaxPool:output:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?*
paddingSAME*
strides
2
conv2d_51/Conv2D?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_51/BiasAdd/ReadVariableOp?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?2
conv2d_51/BiasAdd
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:?????????#?2
conv2d_51/Relu?
max_pooling2d_49/MaxPoolMaxPoolconv2d_51/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_49/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_15/Const?
flatten_15/ReshapeReshape!max_pooling2d_49/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:??????????32
flatten_15/Reshape?
dropout_17/IdentityIdentityflatten_15/Reshape:output:0*
T0*(
_output_shapes
:??????????32
dropout_17/Identity?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource* 
_output_shapes
:
?3?*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldropout_17/Identity:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_31/BiasAddt
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_31/Relu?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMuldense_31/Relu:activations:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_30/BiasAdd}
dense_30/SoftmaxSoftmaxdense_30/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_30/Softmax?
IdentityIdentitydense_30/Softmax:softmax:0!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?+
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992635
conv2d_53_input
conv2d_53_992604
conv2d_53_992606
conv2d_52_992610
conv2d_52_992612
conv2d_51_992616
conv2d_51_992618
dense_31_992624
dense_31_992626
dense_30_992629
dense_30_992631
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallconv2d_53_inputconv2d_53_992604conv2d_53_992606*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_9924292#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_9923842"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_992610conv2d_52_992612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_52_layer_call_and_return_conditional_losses_9924572#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_9923962"
 max_pooling2d_50/PartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_51_992616conv2d_51_992618*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_9924852#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_9924082"
 max_pooling2d_49/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_9925082
flatten_15/PartitionedCall?
dropout_17/PartitionedCallPartitionedCall#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_9925332
dropout_17/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_31_992624dense_31_992626*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_9925572"
 dense_31/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_30_992629dense_30_992631*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9925842"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_53_input
?-
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992672

inputs
conv2d_53_992641
conv2d_53_992643
conv2d_52_992647
conv2d_52_992649
conv2d_51_992653
conv2d_51_992655
dense_31_992661
dense_31_992663
dense_30_992666
dense_30_992668
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?"dropout_17/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_53_992641conv2d_53_992643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_9924292#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_9923842"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_992647conv2d_52_992649*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_52_layer_call_and_return_conditional_losses_9924572#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_9923962"
 max_pooling2d_50/PartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_51_992653conv2d_51_992655*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_9924852#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_9924082"
 max_pooling2d_49/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_9925082
flatten_15/PartitionedCall?
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_9925282$
"dropout_17/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_31_992661dense_31_992663*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_9925572"
 dense_31/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_30_992666dense_30_992668*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9925842"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_52_layer_call_fn_992976

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_52_layer_call_and_return_conditional_losses_9924572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????F@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????F ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????F 
 
_user_specified_nameinputs
?-
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992601
conv2d_53_input
conv2d_53_992440
conv2d_53_992442
conv2d_52_992468
conv2d_52_992470
conv2d_51_992496
conv2d_51_992498
dense_31_992568
dense_31_992570
dense_30_992595
dense_30_992597
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?"dropout_17/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallconv2d_53_inputconv2d_53_992440conv2d_53_992442*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_9924292#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_9923842"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_992468conv2d_52_992470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_52_layer_call_and_return_conditional_losses_9924572#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_9923962"
 max_pooling2d_50/PartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_51_992496conv2d_51_992498*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_9924852#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_9924082"
 max_pooling2d_49/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_9925082
flatten_15/PartitionedCall?
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_9925282$
"dropout_17/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_31_992568dense_31_992570*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_9925572"
 dense_31/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_30_992595dense_30_992597*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9925842"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_53_input
?
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_993024

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????32

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????32

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????3:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?

?
E__inference_conv2d_52_layer_call_and_return_conditional_losses_992967

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????F@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????F@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????F ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????F 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_50_layer_call_fn_992402

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_9923962
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_52_layer_call_and_return_conditional_losses_992457

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????F@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????F@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????F ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????F 
 
_user_specified_nameinputs
?A
?
__inference__traced_save_993184
file_prefix/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_51_kernel_read_readvariableop-
)savev2_conv2d_51_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_rmsprop_conv2d_53_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_53_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_52_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_52_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_51_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_51_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_31_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_31_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_30_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_30_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_51_kernel_read_readvariableop)savev2_conv2d_51_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_rmsprop_conv2d_53_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_53_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_52_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_52_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_51_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_51_bias_rms_read_readvariableop6savev2_rmsprop_dense_31_kernel_rms_read_readvariableop4savev2_rmsprop_dense_31_bias_rms_read_readvariableop6savev2_rmsprop_dense_30_kernel_rms_read_readvariableop4savev2_rmsprop_dense_30_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:
?3?:?:
??:?: : : : : : : : : : : : @:@:@?:?:
?3?:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?3?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?3?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?
M
1__inference_max_pooling2d_51_layer_call_fn_992390

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_9923842
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_992789
conv2d_53_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_53_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_9923782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_53_input
?+
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992731

inputs
conv2d_53_992700
conv2d_53_992702
conv2d_52_992706
conv2d_52_992708
conv2d_51_992712
conv2d_51_992714
dense_31_992720
dense_31_992722
dense_30_992725
dense_30_992727
identity??!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_53_992700conv2d_53_992702*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_9924292#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_9923842"
 max_pooling2d_51/PartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_52_992706conv2d_52_992708*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????F@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_52_layer_call_and_return_conditional_losses_9924572#
!conv2d_52/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_9923962"
 max_pooling2d_50/PartitionedCall?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_51_992712conv2d_51_992714*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_9924852#
!conv2d_51/StatefulPartitionedCall?
 max_pooling2d_49/PartitionedCallPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_9924082"
 max_pooling2d_49/PartitionedCall?
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_49/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_9925082
flatten_15/PartitionedCall?
dropout_17/PartitionedCallPartitionedCall#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_9925332
dropout_17/PartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_31_992720dense_31_992722*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_9925572"
 dense_31/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_30_992725dense_30_992727*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9925842"
 dense_30/StatefulPartitionedCall?
IdentityIdentity)dense_30/StatefulPartitionedCall:output:0"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_31_layer_call_and_return_conditional_losses_992557

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?3?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????3::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?

*__inference_conv2d_51_layer_call_fn_992996

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_51_layer_call_and_return_conditional_losses_9924852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????#?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????#@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?	
?
D__inference_dense_30_layer_call_and_return_conditional_losses_992584

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?K
?	
!__inference__wrapped_model_992378
conv2d_53_input:
6sequential_15_conv2d_53_conv2d_readvariableop_resource;
7sequential_15_conv2d_53_biasadd_readvariableop_resource:
6sequential_15_conv2d_52_conv2d_readvariableop_resource;
7sequential_15_conv2d_52_biasadd_readvariableop_resource:
6sequential_15_conv2d_51_conv2d_readvariableop_resource;
7sequential_15_conv2d_51_biasadd_readvariableop_resource9
5sequential_15_dense_31_matmul_readvariableop_resource:
6sequential_15_dense_31_biasadd_readvariableop_resource9
5sequential_15_dense_30_matmul_readvariableop_resource:
6sequential_15_dense_30_biasadd_readvariableop_resource
identity??.sequential_15/conv2d_51/BiasAdd/ReadVariableOp?-sequential_15/conv2d_51/Conv2D/ReadVariableOp?.sequential_15/conv2d_52/BiasAdd/ReadVariableOp?-sequential_15/conv2d_52/Conv2D/ReadVariableOp?.sequential_15/conv2d_53/BiasAdd/ReadVariableOp?-sequential_15/conv2d_53/Conv2D/ReadVariableOp?-sequential_15/dense_30/BiasAdd/ReadVariableOp?,sequential_15/dense_30/MatMul/ReadVariableOp?-sequential_15/dense_31/BiasAdd/ReadVariableOp?,sequential_15/dense_31/MatMul/ReadVariableOp?
-sequential_15/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_15/conv2d_53/Conv2D/ReadVariableOp?
sequential_15/conv2d_53/Conv2DConv2Dconv2d_53_input5sequential_15/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
2 
sequential_15/conv2d_53/Conv2D?
.sequential_15/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_15/conv2d_53/BiasAdd/ReadVariableOp?
sequential_15/conv2d_53/BiasAddBiasAdd'sequential_15/conv2d_53/Conv2D:output:06sequential_15/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2!
sequential_15/conv2d_53/BiasAdd?
sequential_15/conv2d_53/ReluRelu(sequential_15/conv2d_53/BiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
sequential_15/conv2d_53/Relu?
&sequential_15/max_pooling2d_51/MaxPoolMaxPool*sequential_15/conv2d_53/Relu:activations:0*/
_output_shapes
:?????????F *
ksize
*
paddingVALID*
strides
2(
&sequential_15/max_pooling2d_51/MaxPool?
-sequential_15/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_15/conv2d_52/Conv2D/ReadVariableOp?
sequential_15/conv2d_52/Conv2DConv2D/sequential_15/max_pooling2d_51/MaxPool:output:05sequential_15/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@*
paddingSAME*
strides
2 
sequential_15/conv2d_52/Conv2D?
.sequential_15/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_15/conv2d_52/BiasAdd/ReadVariableOp?
sequential_15/conv2d_52/BiasAddBiasAdd'sequential_15/conv2d_52/Conv2D:output:06sequential_15/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????F@2!
sequential_15/conv2d_52/BiasAdd?
sequential_15/conv2d_52/ReluRelu(sequential_15/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????F@2
sequential_15/conv2d_52/Relu?
&sequential_15/max_pooling2d_50/MaxPoolMaxPool*sequential_15/conv2d_52/Relu:activations:0*/
_output_shapes
:?????????#@*
ksize
*
paddingVALID*
strides
2(
&sequential_15/max_pooling2d_50/MaxPool?
-sequential_15/conv2d_51/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_51_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_15/conv2d_51/Conv2D/ReadVariableOp?
sequential_15/conv2d_51/Conv2DConv2D/sequential_15/max_pooling2d_50/MaxPool:output:05sequential_15/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?*
paddingSAME*
strides
2 
sequential_15/conv2d_51/Conv2D?
.sequential_15/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_15/conv2d_51/BiasAdd/ReadVariableOp?
sequential_15/conv2d_51/BiasAddBiasAdd'sequential_15/conv2d_51/Conv2D:output:06sequential_15/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?2!
sequential_15/conv2d_51/BiasAdd?
sequential_15/conv2d_51/ReluRelu(sequential_15/conv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:?????????#?2
sequential_15/conv2d_51/Relu?
&sequential_15/max_pooling2d_49/MaxPoolMaxPool*sequential_15/conv2d_51/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2(
&sequential_15/max_pooling2d_49/MaxPool?
sequential_15/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2 
sequential_15/flatten_15/Const?
 sequential_15/flatten_15/ReshapeReshape/sequential_15/max_pooling2d_49/MaxPool:output:0'sequential_15/flatten_15/Const:output:0*
T0*(
_output_shapes
:??????????32"
 sequential_15/flatten_15/Reshape?
!sequential_15/dropout_17/IdentityIdentity)sequential_15/flatten_15/Reshape:output:0*
T0*(
_output_shapes
:??????????32#
!sequential_15/dropout_17/Identity?
,sequential_15/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_31_matmul_readvariableop_resource* 
_output_shapes
:
?3?*
dtype02.
,sequential_15/dense_31/MatMul/ReadVariableOp?
sequential_15/dense_31/MatMulMatMul*sequential_15/dropout_17/Identity:output:04sequential_15/dense_31/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_31/MatMul?
-sequential_15/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_15/dense_31/BiasAdd/ReadVariableOp?
sequential_15/dense_31/BiasAddBiasAdd'sequential_15/dense_31/MatMul:product:05sequential_15/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_15/dense_31/BiasAdd?
sequential_15/dense_31/ReluRelu'sequential_15/dense_31/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_31/Relu?
,sequential_15/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_15/dense_30/MatMul/ReadVariableOp?
sequential_15/dense_30/MatMulMatMul)sequential_15/dense_31/Relu:activations:04sequential_15/dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_30/MatMul?
-sequential_15/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_30_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_15/dense_30/BiasAdd/ReadVariableOp?
sequential_15/dense_30/BiasAddBiasAdd'sequential_15/dense_30/MatMul:product:05sequential_15/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_15/dense_30/BiasAdd?
sequential_15/dense_30/SoftmaxSoftmax'sequential_15/dense_30/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
sequential_15/dense_30/Softmax?
IdentityIdentity(sequential_15/dense_30/Softmax:softmax:0/^sequential_15/conv2d_51/BiasAdd/ReadVariableOp.^sequential_15/conv2d_51/Conv2D/ReadVariableOp/^sequential_15/conv2d_52/BiasAdd/ReadVariableOp.^sequential_15/conv2d_52/Conv2D/ReadVariableOp/^sequential_15/conv2d_53/BiasAdd/ReadVariableOp.^sequential_15/conv2d_53/Conv2D/ReadVariableOp.^sequential_15/dense_30/BiasAdd/ReadVariableOp-^sequential_15/dense_30/MatMul/ReadVariableOp.^sequential_15/dense_31/BiasAdd/ReadVariableOp-^sequential_15/dense_31/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:??????????::::::::::2`
.sequential_15/conv2d_51/BiasAdd/ReadVariableOp.sequential_15/conv2d_51/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_51/Conv2D/ReadVariableOp-sequential_15/conv2d_51/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_52/BiasAdd/ReadVariableOp.sequential_15/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_52/Conv2D/ReadVariableOp-sequential_15/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_15/conv2d_53/BiasAdd/ReadVariableOp.sequential_15/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_53/Conv2D/ReadVariableOp-sequential_15/conv2d_53/Conv2D/ReadVariableOp2^
-sequential_15/dense_30/BiasAdd/ReadVariableOp-sequential_15/dense_30/BiasAdd/ReadVariableOp2\
,sequential_15/dense_30/MatMul/ReadVariableOp,sequential_15/dense_30/MatMul/ReadVariableOp2^
-sequential_15/dense_31/BiasAdd/ReadVariableOp-sequential_15/dense_31/BiasAdd/ReadVariableOp2\
,sequential_15/dense_31/MatMul/ReadVariableOp,sequential_15/dense_31/MatMul/ReadVariableOp:a ]
0
_output_shapes
:??????????
)
_user_specified_nameconv2d_53_input
?	
?
D__inference_dense_30_layer_call_and_return_conditional_losses_993065

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_51_layer_call_and_return_conditional_losses_992485

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????#?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????#?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????#@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
G
+__inference_flatten_15_layer_call_fn_993007

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_9925082
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_17_layer_call_fn_993034

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????3* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_9925332
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????3:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_992508

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????32	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_992408

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_17_layer_call_and_return_conditional_losses_992528

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????32
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????3*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????32
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????32
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????32
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????3:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?

?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_992429

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_993002

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????32	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_31_layer_call_fn_993054

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_9925572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????3::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?
~
)__inference_dense_30_layer_call_fn_993074

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9925842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_53_layer_call_fn_992956

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_9924292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_17_layer_call_and_return_conditional_losses_993019

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????32
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????3*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????32
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????32
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????32
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????32

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????3:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_992384

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_31_layer_call_and_return_conditional_losses_993045

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?3?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????3::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?

?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_992947

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_51_layer_call_and_return_conditional_losses_992987

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????#?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????#?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????#@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_992396

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_992533

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????32

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????32

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????3:P L
(
_output_shapes
:??????????3
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_49_layer_call_fn_992414

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_9924082
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
T
conv2d_53_inputA
!serving_default_conv2d_53_input:0??????????=
dense_301
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?O
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?K
_tf_keras_sequential?K{"class_name": "Sequential", "name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 140, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_53_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 140, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_51", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 200, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 140, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 140, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_53_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 140, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_51", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_52", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_51", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 200, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 140, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_53", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 140, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 140, 1]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_51", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_52", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 70, 32]}}
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_51", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 35, 64]}}
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_49", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6528}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6528]}}
?

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 200, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
Citer
	Ddecay
Elearning_rate
Fmomentum
Grho
rms?
rms?
rms?
rms?
%rms?
&rms?
7rms?
8rms?
=rms?
>rms?"
	optimizer
f
0
1
2
3
%4
&5
76
87
=8
>9"
trackable_list_wrapper
f
0
1
2
3
%4
&5
76
87
=8
>9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Imetrics
Jnon_trainable_variables
Klayer_metrics

Llayers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_53/kernel
: 2conv2d_53/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Nmetrics
Onon_trainable_variables
Player_metrics

Qlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Smetrics
Tnon_trainable_variables
Ulayer_metrics

Vlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_52/kernel
:@2conv2d_52/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wlayer_regularization_losses
	variables
trainable_variables
regularization_losses
Xmetrics
Ynon_trainable_variables
Zlayer_metrics

[layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
\layer_regularization_losses
!	variables
"trainable_variables
#regularization_losses
]metrics
^non_trainable_variables
_layer_metrics

`layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_51/kernel
:?2conv2d_51/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
alayer_regularization_losses
'	variables
(trainable_variables
)regularization_losses
bmetrics
cnon_trainable_variables
dlayer_metrics

elayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
flayer_regularization_losses
+	variables
,trainable_variables
-regularization_losses
gmetrics
hnon_trainable_variables
ilayer_metrics

jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
klayer_regularization_losses
/	variables
0trainable_variables
1regularization_losses
lmetrics
mnon_trainable_variables
nlayer_metrics

olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
player_regularization_losses
3	variables
4trainable_variables
5regularization_losses
qmetrics
rnon_trainable_variables
slayer_metrics

tlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
?3?2dense_31/kernel
:?2dense_31/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ulayer_regularization_losses
9	variables
:trainable_variables
;regularization_losses
vmetrics
wnon_trainable_variables
xlayer_metrics

ylayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_30/kernel
:?2dense_30/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
zlayer_regularization_losses
?	variables
@trainable_variables
Aregularization_losses
{metrics
|non_trainable_variables
}layer_metrics

~layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_list_wrapper
/
0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
4:2 2RMSprop/conv2d_53/kernel/rms
&:$ 2RMSprop/conv2d_53/bias/rms
4:2 @2RMSprop/conv2d_52/kernel/rms
&:$@2RMSprop/conv2d_52/bias/rms
5:3@?2RMSprop/conv2d_51/kernel/rms
':%?2RMSprop/conv2d_51/bias/rms
-:+
?3?2RMSprop/dense_31/kernel/rms
&:$?2RMSprop/dense_31/bias/rms
-:+
??2RMSprop/dense_30/kernel/rms
&:$?2RMSprop/dense_30/bias/rms
?2?
.__inference_sequential_15_layer_call_fn_992936
.__inference_sequential_15_layer_call_fn_992695
.__inference_sequential_15_layer_call_fn_992754
.__inference_sequential_15_layer_call_fn_992911?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_992378?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/
conv2d_53_input??????????
?2?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992635
I__inference_sequential_15_layer_call_and_return_conditional_losses_992886
I__inference_sequential_15_layer_call_and_return_conditional_losses_992601
I__inference_sequential_15_layer_call_and_return_conditional_losses_992841?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv2d_53_layer_call_fn_992956?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_992947?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_51_layer_call_fn_992390?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_992384?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_52_layer_call_fn_992976?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_52_layer_call_and_return_conditional_losses_992967?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_50_layer_call_fn_992402?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_992396?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_51_layer_call_fn_992996?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_51_layer_call_and_return_conditional_losses_992987?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_49_layer_call_fn_992414?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_992408?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_flatten_15_layer_call_fn_993007?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_15_layer_call_and_return_conditional_losses_993002?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_17_layer_call_fn_993029
+__inference_dropout_17_layer_call_fn_993034?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_17_layer_call_and_return_conditional_losses_993024
F__inference_dropout_17_layer_call_and_return_conditional_losses_993019?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_31_layer_call_fn_993054?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_31_layer_call_and_return_conditional_losses_993045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_30_layer_call_fn_993074?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_30_layer_call_and_return_conditional_losses_993065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_992789conv2d_53_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_992378?
%&78=>A?>
7?4
2?/
conv2d_53_input??????????
? "4?1
/
dense_30#? 
dense_30???????????
E__inference_conv2d_51_layer_call_and_return_conditional_losses_992987m%&7?4
-?*
(?%
inputs?????????#@
? ".?+
$?!
0?????????#?
? ?
*__inference_conv2d_51_layer_call_fn_992996`%&7?4
-?*
(?%
inputs?????????#@
? "!??????????#??
E__inference_conv2d_52_layer_call_and_return_conditional_losses_992967l7?4
-?*
(?%
inputs?????????F 
? "-?*
#? 
0?????????F@
? ?
*__inference_conv2d_52_layer_call_fn_992976_7?4
-?*
(?%
inputs?????????F 
? " ??????????F@?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_992947n8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????? 
? ?
*__inference_conv2d_53_layer_call_fn_992956a8?5
.?+
)?&
inputs??????????
? "!??????????? ?
D__inference_dense_30_layer_call_and_return_conditional_losses_993065^=>0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_30_layer_call_fn_993074Q=>0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_31_layer_call_and_return_conditional_losses_993045^780?-
&?#
!?
inputs??????????3
? "&?#
?
0??????????
? ~
)__inference_dense_31_layer_call_fn_993054Q780?-
&?#
!?
inputs??????????3
? "????????????
F__inference_dropout_17_layer_call_and_return_conditional_losses_993019^4?1
*?'
!?
inputs??????????3
p
? "&?#
?
0??????????3
? ?
F__inference_dropout_17_layer_call_and_return_conditional_losses_993024^4?1
*?'
!?
inputs??????????3
p 
? "&?#
?
0??????????3
? ?
+__inference_dropout_17_layer_call_fn_993029Q4?1
*?'
!?
inputs??????????3
p
? "???????????3?
+__inference_dropout_17_layer_call_fn_993034Q4?1
*?'
!?
inputs??????????3
p 
? "???????????3?
F__inference_flatten_15_layer_call_and_return_conditional_losses_993002b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????3
? ?
+__inference_flatten_15_layer_call_fn_993007U8?5
.?+
)?&
inputs??????????
? "???????????3?
L__inference_max_pooling2d_49_layer_call_and_return_conditional_losses_992408?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_49_layer_call_fn_992414?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_992396?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_50_layer_call_fn_992402?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_992384?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_51_layer_call_fn_992390?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_15_layer_call_and_return_conditional_losses_992601
%&78=>I?F
??<
2?/
conv2d_53_input??????????
p

 
? "&?#
?
0??????????
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992635
%&78=>I?F
??<
2?/
conv2d_53_input??????????
p 

 
? "&?#
?
0??????????
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992841v
%&78=>@?=
6?3
)?&
inputs??????????
p

 
? "&?#
?
0??????????
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_992886v
%&78=>@?=
6?3
)?&
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
.__inference_sequential_15_layer_call_fn_992695r
%&78=>I?F
??<
2?/
conv2d_53_input??????????
p

 
? "????????????
.__inference_sequential_15_layer_call_fn_992754r
%&78=>I?F
??<
2?/
conv2d_53_input??????????
p 

 
? "????????????
.__inference_sequential_15_layer_call_fn_992911i
%&78=>@?=
6?3
)?&
inputs??????????
p

 
? "????????????
.__inference_sequential_15_layer_call_fn_992936i
%&78=>@?=
6?3
)?&
inputs??????????
p 

 
? "????????????
$__inference_signature_wrapper_992789?
%&78=>T?Q
? 
J?G
E
conv2d_53_input2?/
conv2d_53_input??????????"4?1
/
dense_30#? 
dense_30??????????