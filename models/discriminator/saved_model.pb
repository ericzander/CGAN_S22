дт
ЋТ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
Џ
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
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
delete_old_dirsbool(ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Н╗
ѓ
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
Ѓ
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ* 
shared_nameconv2d_6/kernel
|
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*'
_output_shapes
:@ђ*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:ђ*
dtype0
ё
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ* 
shared_nameconv2d_7/kernel
}
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*(
_output_shapes
:ђђ*
dtype0
s
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_7/bias
l
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes	
:ђ*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
ђђ*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0

NoOpNoOp
┘0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ћ0
valueі0BЄ0 Bђ0
џ
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
д

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
д

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
ј
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
д

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses*
ј
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
ј
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
Ц
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses* 
д

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
<
0
1
 2
!3
.4
/5
I6
J7*
<
0
1
 2
!3
.4
/5
I6
J7*
* 
░
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Vserving_default* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
Њ
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
Њ
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 
Њ
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Љ
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Љ
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Љ
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

I0
J1*
* 
Ќ
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
* 
C
0
1
2
3
4
5
6
7
	8*
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
* 
* 
* 
Љ
serving_default_conv2d_5_inputPlaceholder*/
_output_shapes
:           *
dtype0*$
shape:           
╦
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_5_inputconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_2/kerneldense_2/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *.
f)R'
%__inference_signature_wrapper_1531234
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpConst*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__traced_save_1531426
а
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_2/kerneldense_2/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference__traced_restore_1531460┴Ь
║
G
+__inference_flatten_1_layer_call_fn_1531326

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1530809b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
З
f
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1531263

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:           @g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
Щ%
Е
J__inference_discriminator_layer_call_and_return_conditional_losses_1531063
conv2d_5_input*
conv2d_5_1531037:@
conv2d_5_1531039:@+
conv2d_6_1531043:@ђ
conv2d_6_1531045:	ђ,
conv2d_7_1531049:ђђ
conv2d_7_1531051:	ђ#
dense_2_1531057:
ђђ
dense_2_1531059:
identityѕб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallбdense_2/StatefulPartitionedCallє
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputconv2d_5_1531037conv2d_5_1531039*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1530744ы
leaky_re_lu_8/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1530755Ъ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_6_1531043conv2d_6_1531045*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1530767Ы
leaky_re_lu_9/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1530778Ъ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_7_1531049conv2d_7_1531051*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1530790З
leaky_re_lu_10/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1530801р
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1530809▄
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530816ј
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_1531057dense_2_1531059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1530829w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Л
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:_ [
/
_output_shapes
:           
(
_user_specified_nameconv2d_5_input
б'
═
J__inference_discriminator_layer_call_and_return_conditional_losses_1531092
conv2d_5_input*
conv2d_5_1531066:@
conv2d_5_1531068:@+
conv2d_6_1531072:@ђ
conv2d_6_1531074:	ђ,
conv2d_7_1531078:ђђ
conv2d_7_1531080:	ђ#
dense_2_1531086:
ђђ
dense_2_1531088:
identityѕб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallбdense_2/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallє
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputconv2d_5_1531066conv2d_5_1531068*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1530744ы
leaky_re_lu_8/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1530755Ъ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_6_1531072conv2d_6_1531074*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1530767Ы
leaky_re_lu_9/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1530778Ъ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_7_1531078conv2d_7_1531080*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1530790З
leaky_re_lu_10/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1530801р
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1530809В
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530885ќ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_1531086dense_2_1531088*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1530829w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:_ [
/
_output_shapes
:           
(
_user_specified_nameconv2d_5_input
Ч	
П
/__inference_discriminator_layer_call_fn_1531113

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@ђ
	unknown_2:	ђ%
	unknown_3:ђђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_discriminator_layer_call_and_return_conditional_losses_1530836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╠
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1530809

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђђZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
»

ђ
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1531282

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
Ъ$
б
#__inference__traced_restore_1531460
file_prefix:
 assignvariableop_conv2d_5_kernel:@.
 assignvariableop_1_conv2d_5_bias:@=
"assignvariableop_2_conv2d_6_kernel:@ђ/
 assignvariableop_3_conv2d_6_bias:	ђ>
"assignvariableop_4_conv2d_7_kernel:ђђ/
 assignvariableop_5_conv2d_7_bias:	ђ5
!assignvariableop_6_dense_2_kernel:
ђђ-
assignvariableop_7_dense_2_bias:

identity_9ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7┼
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*в
valueрBя	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHѓ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_conv2d_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ђ

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: Ь
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ш
б
*__inference_conv2d_7_layer_call_fn_1531301

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1530790x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ч	
П
/__inference_discriminator_layer_call_fn_1531134

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@ђ
	unknown_2:	ђ%
	unknown_3:ђђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_discriminator_layer_call_and_return_conditional_losses_1530994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╠
K
/__inference_leaky_re_lu_8_layer_call_fn_1531258

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1530755h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
╠
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1531332

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         ђђZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         ђђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
│

Ђ
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1531311

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
р
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1531347

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:         ђђ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         ђђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђђ:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
З
f
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1530755

inputs
identityO
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:           @g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:           @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:           @:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
│

Ђ
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1530790

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
з
А
*__inference_conv2d_6_layer_call_fn_1531272

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1530767x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
б

э
D__inference_dense_2_layer_call_and_return_conditional_losses_1531379

inputs2
matmul_readvariableop_resource:
ђђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
Р%
А
J__inference_discriminator_layer_call_and_return_conditional_losses_1530836

inputs*
conv2d_5_1530745:@
conv2d_5_1530747:@+
conv2d_6_1530768:@ђ
conv2d_6_1530770:	ђ,
conv2d_7_1530791:ђђ
conv2d_7_1530793:	ђ#
dense_2_1530830:
ђђ
dense_2_1530832:
identityѕб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallбdense_2/StatefulPartitionedCall■
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_1530745conv2d_5_1530747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1530744ы
leaky_re_lu_8/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1530755Ъ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_6_1530768conv2d_6_1530770*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1530767Ы
leaky_re_lu_9/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1530778Ъ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_7_1530791conv2d_7_1530793*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1530790З
leaky_re_lu_10/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1530801р
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1530809▄
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530816ј
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_1530830dense_2_1530832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1530829w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Л
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Э
f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1530778

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         ђh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ћ

т
/__inference_discriminator_layer_call_fn_1531034
conv2d_5_input!
unknown:@
	unknown_0:@$
	unknown_1:@ђ
	unknown_2:	ђ%
	unknown_3:ђђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_discriminator_layer_call_and_return_conditional_losses_1530994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:           
(
_user_specified_nameconv2d_5_input
м
L
0__inference_leaky_re_lu_10_layer_call_fn_1531316

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1530801i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
щ
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1531321

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         ђh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
е

■
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1530744

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
і'
┼
J__inference_discriminator_layer_call_and_return_conditional_losses_1530994

inputs*
conv2d_5_1530968:@
conv2d_5_1530970:@+
conv2d_6_1530974:@ђ
conv2d_6_1530976:	ђ,
conv2d_7_1530980:ђђ
conv2d_7_1530982:	ђ#
dense_2_1530988:
ђђ
dense_2_1530990:
identityѕб conv2d_5/StatefulPartitionedCallб conv2d_6/StatefulPartitionedCallб conv2d_7/StatefulPartitionedCallбdense_2/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCall■
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_1530968conv2d_5_1530970*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1530744ы
leaky_re_lu_8/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1530755Ъ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_8/PartitionedCall:output:0conv2d_6_1530974conv2d_6_1530976*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1530767Ы
leaky_re_lu_9/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1530778Ъ
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_9/PartitionedCall:output:0conv2d_7_1530980conv2d_7_1530982*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1530790З
leaky_re_lu_10/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1530801р
flatten_1/PartitionedCallPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1530809В
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530885ќ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_1530988dense_2_1530990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1530829w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ш
NoOpNoOp!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Э
f
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1531292

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         ђh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
г
G
+__inference_dropout_1_layer_call_fn_1531337

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530816b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         ђђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђђ:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
е

■
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1531253

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:           @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╬)
▄
J__inference_discriminator_layer_call_and_return_conditional_losses_1531169

inputsA
'conv2d_5_conv2d_readvariableop_resource:@6
(conv2d_5_biasadd_readvariableop_resource:@B
'conv2d_6_conv2d_readvariableop_resource:@ђ7
(conv2d_6_biasadd_readvariableop_resource:	ђC
'conv2d_7_conv2d_readvariableop_resource:ђђ7
(conv2d_7_biasadd_readvariableop_resource:	ђ:
&dense_2_matmul_readvariableop_resource:
ђђ5
'dense_2_biasadd_readvariableop_resource:
identityѕбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбconv2d_6/BiasAdd/ReadVariableOpбconv2d_6/Conv2D/ReadVariableOpбconv2d_7/BiasAdd/ReadVariableOpбconv2d_7/Conv2D/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpј
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
ё
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ў
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @p
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_5/BiasAdd:output:0*/
_output_shapes
:           @Ј
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0╦
conv2d_6/Conv2DConv2D%leaky_re_lu_8/LeakyRelu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ё
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ў
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђq
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_6/BiasAdd:output:0*0
_output_shapes
:         ђљ
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0╦
conv2d_7/Conv2DConv2D%leaky_re_lu_9/LeakyRelu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ё
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ў
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђr
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_7/BiasAdd:output:0*0
_output_shapes
:         ђ`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  њ
flatten_1/ReshapeReshape&leaky_re_lu_10/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         ђђn
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*)
_output_shapes
:         ђђє
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ј
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
у3
ю
"__inference__wrapped_model_1530727
conv2d_5_inputO
5discriminator_conv2d_5_conv2d_readvariableop_resource:@D
6discriminator_conv2d_5_biasadd_readvariableop_resource:@P
5discriminator_conv2d_6_conv2d_readvariableop_resource:@ђE
6discriminator_conv2d_6_biasadd_readvariableop_resource:	ђQ
5discriminator_conv2d_7_conv2d_readvariableop_resource:ђђE
6discriminator_conv2d_7_biasadd_readvariableop_resource:	ђH
4discriminator_dense_2_matmul_readvariableop_resource:
ђђC
5discriminator_dense_2_biasadd_readvariableop_resource:
identityѕб-discriminator/conv2d_5/BiasAdd/ReadVariableOpб,discriminator/conv2d_5/Conv2D/ReadVariableOpб-discriminator/conv2d_6/BiasAdd/ReadVariableOpб,discriminator/conv2d_6/Conv2D/ReadVariableOpб-discriminator/conv2d_7/BiasAdd/ReadVariableOpб,discriminator/conv2d_7/Conv2D/ReadVariableOpб,discriminator/dense_2/BiasAdd/ReadVariableOpб+discriminator/dense_2/MatMul/ReadVariableOpф
,discriminator/conv2d_5/Conv2D/ReadVariableOpReadVariableOp5discriminator_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0¤
discriminator/conv2d_5/Conv2DConv2Dconv2d_5_input4discriminator/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
а
-discriminator/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp6discriminator_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
discriminator/conv2d_5/BiasAddBiasAdd&discriminator/conv2d_5/Conv2D:output:05discriminator/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @ї
%discriminator/leaky_re_lu_8/LeakyRelu	LeakyRelu'discriminator/conv2d_5/BiasAdd:output:0*/
_output_shapes
:           @Ф
,discriminator/conv2d_6/Conv2D/ReadVariableOpReadVariableOp5discriminator_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0ш
discriminator/conv2d_6/Conv2DConv2D3discriminator/leaky_re_lu_8/LeakyRelu:activations:04discriminator/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
А
-discriminator/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp6discriminator_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0├
discriminator/conv2d_6/BiasAddBiasAdd&discriminator/conv2d_6/Conv2D:output:05discriminator/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЇ
%discriminator/leaky_re_lu_9/LeakyRelu	LeakyRelu'discriminator/conv2d_6/BiasAdd:output:0*0
_output_shapes
:         ђг
,discriminator/conv2d_7/Conv2D/ReadVariableOpReadVariableOp5discriminator_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0ш
discriminator/conv2d_7/Conv2DConv2D3discriminator/leaky_re_lu_9/LeakyRelu:activations:04discriminator/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
А
-discriminator/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp6discriminator_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0├
discriminator/conv2d_7/BiasAddBiasAdd&discriminator/conv2d_7/Conv2D:output:05discriminator/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђј
&discriminator/leaky_re_lu_10/LeakyRelu	LeakyRelu'discriminator/conv2d_7/BiasAdd:output:0*0
_output_shapes
:         ђn
discriminator/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  ╝
discriminator/flatten_1/ReshapeReshape4discriminator/leaky_re_lu_10/LeakyRelu:activations:0&discriminator/flatten_1/Const:output:0*
T0*)
_output_shapes
:         ђђі
 discriminator/dropout_1/IdentityIdentity(discriminator/flatten_1/Reshape:output:0*
T0*)
_output_shapes
:         ђђб
+discriminator/dense_2/MatMul/ReadVariableOpReadVariableOp4discriminator_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0И
discriminator/dense_2/MatMulMatMul)discriminator/dropout_1/Identity:output:03discriminator/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,discriminator/dense_2/BiasAdd/ReadVariableOpReadVariableOp5discriminator_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
discriminator/dense_2/BiasAddBiasAdd&discriminator/dense_2/MatMul:product:04discriminator/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
discriminator/dense_2/SigmoidSigmoid&discriminator/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         p
IdentityIdentity!discriminator/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp.^discriminator/conv2d_5/BiasAdd/ReadVariableOp-^discriminator/conv2d_5/Conv2D/ReadVariableOp.^discriminator/conv2d_6/BiasAdd/ReadVariableOp-^discriminator/conv2d_6/Conv2D/ReadVariableOp.^discriminator/conv2d_7/BiasAdd/ReadVariableOp-^discriminator/conv2d_7/Conv2D/ReadVariableOp-^discriminator/dense_2/BiasAdd/ReadVariableOp,^discriminator/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2^
-discriminator/conv2d_5/BiasAdd/ReadVariableOp-discriminator/conv2d_5/BiasAdd/ReadVariableOp2\
,discriminator/conv2d_5/Conv2D/ReadVariableOp,discriminator/conv2d_5/Conv2D/ReadVariableOp2^
-discriminator/conv2d_6/BiasAdd/ReadVariableOp-discriminator/conv2d_6/BiasAdd/ReadVariableOp2\
,discriminator/conv2d_6/Conv2D/ReadVariableOp,discriminator/conv2d_6/Conv2D/ReadVariableOp2^
-discriminator/conv2d_7/BiasAdd/ReadVariableOp-discriminator/conv2d_7/BiasAdd/ReadVariableOp2\
,discriminator/conv2d_7/Conv2D/ReadVariableOp,discriminator/conv2d_7/Conv2D/ReadVariableOp2\
,discriminator/dense_2/BiasAdd/ReadVariableOp,discriminator/dense_2/BiasAdd/ReadVariableOp2Z
+discriminator/dense_2/MatMul/ReadVariableOp+discriminator/dense_2/MatMul/ReadVariableOp:_ [
/
_output_shapes
:           
(
_user_specified_nameconv2d_5_input
Ў1
▄
J__inference_discriminator_layer_call_and_return_conditional_losses_1531211

inputsA
'conv2d_5_conv2d_readvariableop_resource:@6
(conv2d_5_biasadd_readvariableop_resource:@B
'conv2d_6_conv2d_readvariableop_resource:@ђ7
(conv2d_6_biasadd_readvariableop_resource:	ђC
'conv2d_7_conv2d_readvariableop_resource:ђђ7
(conv2d_7_biasadd_readvariableop_resource:	ђ:
&dense_2_matmul_readvariableop_resource:
ђђ5
'dense_2_biasadd_readvariableop_resource:
identityѕбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбconv2d_6/BiasAdd/ReadVariableOpбconv2d_6/Conv2D/ReadVariableOpбconv2d_7/BiasAdd/ReadVariableOpбconv2d_7/Conv2D/ReadVariableOpбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpј
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @*
paddingSAME*
strides
ё
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ў
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           @p
leaky_re_lu_8/LeakyRelu	LeakyReluconv2d_5/BiasAdd:output:0*/
_output_shapes
:           @Ј
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0╦
conv2d_6/Conv2DConv2D%leaky_re_lu_8/LeakyRelu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ё
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ў
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђq
leaky_re_lu_9/LeakyRelu	LeakyReluconv2d_6/BiasAdd:output:0*0
_output_shapes
:         ђљ
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0╦
conv2d_7/Conv2DConv2D%leaky_re_lu_9/LeakyRelu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
Ё
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ў
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђr
leaky_re_lu_10/LeakyRelu	LeakyReluconv2d_7/BiasAdd:output:0*0
_output_shapes
:         ђ`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     @  њ
flatten_1/ReshapeReshape&leaky_re_lu_10/LeakyRelu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:         ђђ\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?ј
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*)
_output_shapes
:         ђђa
dropout_1/dropout/ShapeShapeflatten_1/Reshape:output:0*
T0*
_output_shapes
:б
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*)
_output_shapes
:         ђђ*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>к
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         ђђЁ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         ђђЅ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*)
_output_shapes
:         ђђє
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ј
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         л
NoOpNoOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
щ
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1530801

inputs
identityP
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:         ђh
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
л
K
/__inference_leaky_re_lu_9_layer_call_fn_1531287

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1530778i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
р
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530816

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:         ђђ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         ђђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђђ:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
»

ђ
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1530767

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:           @
 
_user_specified_nameinputs
ё

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1531359

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         ђђC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ј
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         ђђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>е
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         ђђq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         ђђk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         ђђ[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         ђђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђђ:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
╦
ў
)__inference_dense_2_layer_call_fn_1531368

inputs
unknown:
ђђ
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1530829o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
■
d
+__inference_dropout_1_layer_call_fn_1531342

inputs
identityѕбStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         ђђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530885q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:         ђђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђђ22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
ё

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1530885

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         ђђC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ј
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         ђђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>е
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         ђђq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         ђђk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         ђђ[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         ђђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         ђђ:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs
№
Ъ
*__inference_conv2d_5_layer_call_fn_1531243

inputs!
unknown:@
	unknown_0:@
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1530744w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:           : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Р	
█
%__inference_signature_wrapper_1531234
conv2d_5_input!
unknown:@
	unknown_0:@$
	unknown_1:@ђ
	unknown_2:	ђ%
	unknown_3:ђђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__wrapped_model_1530727o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:           
(
_user_specified_nameconv2d_5_input
═
с
 __inference__traced_save_1531426
file_prefix.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ┬
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*в
valueрBя	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ј
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*v
_input_shapese
c: :@:@:@ђ:ђ:ђђ:ђ:
ђђ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:&"
 
_output_shapes
:
ђђ: 

_output_shapes
::	

_output_shapes
: 
ћ

т
/__inference_discriminator_layer_call_fn_1530855
conv2d_5_input!
unknown:@
	unknown_0:@$
	unknown_1:@ђ
	unknown_2:	ђ%
	unknown_3:ђђ
	unknown_4:	ђ
	unknown_5:
ђђ
	unknown_6:
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_discriminator_layer_call_and_return_conditional_losses_1530836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:           
(
_user_specified_nameconv2d_5_input
б

э
D__inference_dense_2_layer_call_and_return_conditional_losses_1530829

inputs2
matmul_readvariableop_resource:
ђђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         ђђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         ђђ
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*└
serving_defaultг
Q
conv2d_5_input?
 serving_default_conv2d_5_input:0           ;
dense_20
StatefulPartitionedCall:0         tensorflow/serving/predict:┐Ћ
┤
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
X
0
1
 2
!3
.4
/5
I6
J7"
trackable_list_wrapper
X
0
1
 2
!3
.4
/5
I6
J7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
і2Є
/__inference_discriminator_layer_call_fn_1530855
/__inference_discriminator_layer_call_fn_1531113
/__inference_discriminator_layer_call_fn_1531134
/__inference_discriminator_layer_call_fn_1531034└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
J__inference_discriminator_layer_call_and_return_conditional_losses_1531169
J__inference_discriminator_layer_call_and_return_conditional_losses_1531211
J__inference_discriminator_layer_call_and_return_conditional_losses_1531063
J__inference_discriminator_layer_call_and_return_conditional_losses_1531092└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
"__inference__wrapped_model_1530727conv2d_5_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
Vserving_default"
signature_map
):'@2conv2d_5/kernel
:@2conv2d_5/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_5_layer_call_fn_1531243б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1531253б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┘2о
/__inference_leaky_re_lu_8_layer_call_fn_1531258б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1531263б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
*:(@ђ2conv2d_6/kernel
:ђ2conv2d_6/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_6_layer_call_fn_1531272б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1531282б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
┘2о
/__inference_leaky_re_lu_9_layer_call_fn_1531287б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1531292б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
+:)ђђ2conv2d_7/kernel
:ђ2conv2d_7/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_7_layer_call_fn_1531301б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1531311б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
┌2О
0__inference_leaky_re_lu_10_layer_call_fn_1531316б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ш2Ы
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1531321б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Н2м
+__inference_flatten_1_layer_call_fn_1531326б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_1_layer_call_and_return_conditional_losses_1531332б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ћ2Љ
+__inference_dropout_1_layer_call_fn_1531337
+__inference_dropout_1_layer_call_fn_1531342┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_1_layer_call_and_return_conditional_losses_1531347
F__inference_dropout_1_layer_call_and_return_conditional_losses_1531359┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
": 
ђђ2dense_2/kernel
:2dense_2/bias
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
▒
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
М2л
)__inference_dense_2_layer_call_fn_1531368б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_2_layer_call_and_return_conditional_losses_1531379б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
МBл
%__inference_signature_wrapper_1531234conv2d_5_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
trackable_dict_wrapperц
"__inference__wrapped_model_1530727~ !./IJ?б<
5б2
0і-
conv2d_5_input           
ф "1ф.
,
dense_2!і
dense_2         х
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1531253l7б4
-б*
(і%
inputs           
ф "-б*
#і 
0           @
џ Ї
*__inference_conv2d_5_layer_call_fn_1531243_7б4
-б*
(і%
inputs           
ф " і           @Х
E__inference_conv2d_6_layer_call_and_return_conditional_losses_1531282m !7б4
-б*
(і%
inputs           @
ф ".б+
$і!
0         ђ
џ ј
*__inference_conv2d_6_layer_call_fn_1531272` !7б4
-б*
(і%
inputs           @
ф "!і         ђи
E__inference_conv2d_7_layer_call_and_return_conditional_losses_1531311n./8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Ј
*__inference_conv2d_7_layer_call_fn_1531301a./8б5
.б+
)і&
inputs         ђ
ф "!і         ђд
D__inference_dense_2_layer_call_and_return_conditional_losses_1531379^IJ1б.
'б$
"і
inputs         ђђ
ф "%б"
і
0         
џ ~
)__inference_dense_2_layer_call_fn_1531368QIJ1б.
'б$
"і
inputs         ђђ
ф "і         ╚
J__inference_discriminator_layer_call_and_return_conditional_losses_1531063z !./IJGбD
=б:
0і-
conv2d_5_input           
p 

 
ф "%б"
і
0         
џ ╚
J__inference_discriminator_layer_call_and_return_conditional_losses_1531092z !./IJGбD
=б:
0і-
conv2d_5_input           
p

 
ф "%б"
і
0         
џ └
J__inference_discriminator_layer_call_and_return_conditional_losses_1531169r !./IJ?б<
5б2
(і%
inputs           
p 

 
ф "%б"
і
0         
џ └
J__inference_discriminator_layer_call_and_return_conditional_losses_1531211r !./IJ?б<
5б2
(і%
inputs           
p

 
ф "%б"
і
0         
џ а
/__inference_discriminator_layer_call_fn_1530855m !./IJGбD
=б:
0і-
conv2d_5_input           
p 

 
ф "і         а
/__inference_discriminator_layer_call_fn_1531034m !./IJGбD
=б:
0і-
conv2d_5_input           
p

 
ф "і         ў
/__inference_discriminator_layer_call_fn_1531113e !./IJ?б<
5б2
(і%
inputs           
p 

 
ф "і         ў
/__inference_discriminator_layer_call_fn_1531134e !./IJ?б<
5б2
(і%
inputs           
p

 
ф "і         ф
F__inference_dropout_1_layer_call_and_return_conditional_losses_1531347`5б2
+б(
"і
inputs         ђђ
p 
ф "'б$
і
0         ђђ
џ ф
F__inference_dropout_1_layer_call_and_return_conditional_losses_1531359`5б2
+б(
"і
inputs         ђђ
p
ф "'б$
і
0         ђђ
џ ѓ
+__inference_dropout_1_layer_call_fn_1531337S5б2
+б(
"і
inputs         ђђ
p 
ф "і         ђђѓ
+__inference_dropout_1_layer_call_fn_1531342S5б2
+б(
"і
inputs         ђђ
p
ф "і         ђђГ
F__inference_flatten_1_layer_call_and_return_conditional_losses_1531332c8б5
.б+
)і&
inputs         ђ
ф "'б$
і
0         ђђ
џ Ё
+__inference_flatten_1_layer_call_fn_1531326V8б5
.б+
)і&
inputs         ђ
ф "і         ђђ╣
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_1531321j8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
0__inference_leaky_re_lu_10_layer_call_fn_1531316]8б5
.б+
)і&
inputs         ђ
ф "!і         ђХ
J__inference_leaky_re_lu_8_layer_call_and_return_conditional_losses_1531263h7б4
-б*
(і%
inputs           @
ф "-б*
#і 
0           @
џ ј
/__inference_leaky_re_lu_8_layer_call_fn_1531258[7б4
-б*
(і%
inputs           @
ф " і           @И
J__inference_leaky_re_lu_9_layer_call_and_return_conditional_losses_1531292j8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
/__inference_leaky_re_lu_9_layer_call_fn_1531287]8б5
.б+
)і&
inputs         ђ
ф "!і         ђ║
%__inference_signature_wrapper_1531234љ !./IJQбN
б 
GфD
B
conv2d_5_input0і-
conv2d_5_input           "1ф.
,
dense_2!і
dense_2         