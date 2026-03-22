package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.WireFormat;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes2.dex */
public final class ArrayDecoders {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.datastore.preferences.protobuf.ArrayDecoders$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    private ArrayDecoders() {
    }

    private static void checkRecursionLimit(int i10) throws InvalidProtocolBufferException {
        if (i10 < recursionLimit) {
            return;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeBoolList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        boolean z10;
        boolean z11;
        BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i11, registers);
        if (registers.long1 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        booleanArrayList.addBoolean(z10);
        while (decodeVarint64 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, registers);
            if (registers.long1 != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            booleanArrayList.addBoolean(z11);
        }
        return decodeVarint64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeBytes(byte[] bArr, int i10, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1;
        if (i11 >= 0) {
            if (i11 <= bArr.length - decodeVarint32) {
                if (i11 == 0) {
                    registers.object1 = ByteString.EMPTY;
                    return decodeVarint32;
                }
                registers.object1 = ByteString.copyFrom(bArr, decodeVarint32, i11);
                return decodeVarint32 + i11;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x001b -> B:10:0x001c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeBytesList(int r2, byte[] r3, int r4, int r5, androidx.datastore.preferences.protobuf.Internal.ProtobufList<?> r6, androidx.datastore.preferences.protobuf.ArrayDecoders.Registers r7) throws androidx.datastore.preferences.protobuf.InvalidProtocolBufferException {
        /*
            int r4 = decodeVarint32(r3, r4, r7)
            int r0 = r7.int1
            if (r0 < 0) goto L53
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L4e
            if (r0 != 0) goto L14
            androidx.datastore.preferences.protobuf.ByteString r0 = androidx.datastore.preferences.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L14:
            androidx.datastore.preferences.protobuf.ByteString r1 = androidx.datastore.preferences.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
        L1b:
            int r4 = r4 + r0
        L1c:
            if (r4 >= r5) goto L4d
            int r0 = decodeVarint32(r3, r4, r7)
            int r1 = r7.int1
            if (r2 == r1) goto L27
            goto L4d
        L27:
            int r4 = decodeVarint32(r3, r0, r7)
            int r0 = r7.int1
            if (r0 < 0) goto L48
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L43
            if (r0 != 0) goto L3b
            androidx.datastore.preferences.protobuf.ByteString r0 = androidx.datastore.preferences.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L3b:
            androidx.datastore.preferences.protobuf.ByteString r1 = androidx.datastore.preferences.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
            goto L1b
        L43:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r2 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L48:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r2 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        L4d:
            return r4
        L4e:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r2 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L53:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r2 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.ArrayDecoders.decodeBytesList(int, byte[], int, int, androidx.datastore.preferences.protobuf.Internal$ProtobufList, androidx.datastore.preferences.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double decodeDouble(byte[] bArr, int i10) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeDoubleList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
        doubleArrayList.addDouble(decodeDouble(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            doubleArrayList.addDouble(decodeDouble(bArr, decodeVarint32));
            i13 = decodeVarint32 + 8;
        }
        return i13;
    }

    static int decodeExtension(int i10, byte[] bArr, int i11, int i12, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        boolean z10;
        FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSet = extendableMessage.extensions;
        int i13 = i10 >>> 3;
        if (generatedExtension.descriptor.isRepeated() && generatedExtension.descriptor.isPacked()) {
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    DoubleArrayList doubleArrayList = new DoubleArrayList();
                    int decodePackedDoubleList = decodePackedDoubleList(bArr, i11, doubleArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, doubleArrayList);
                    return decodePackedDoubleList;
                case 2:
                    FloatArrayList floatArrayList = new FloatArrayList();
                    int decodePackedFloatList = decodePackedFloatList(bArr, i11, floatArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, floatArrayList);
                    return decodePackedFloatList;
                case 3:
                case 4:
                    LongArrayList longArrayList = new LongArrayList();
                    int decodePackedVarint64List = decodePackedVarint64List(bArr, i11, longArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, longArrayList);
                    return decodePackedVarint64List;
                case 5:
                case 6:
                    IntArrayList intArrayList = new IntArrayList();
                    int decodePackedVarint32List = decodePackedVarint32List(bArr, i11, intArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList);
                    return decodePackedVarint32List;
                case 7:
                case 8:
                    LongArrayList longArrayList2 = new LongArrayList();
                    int decodePackedFixed64List = decodePackedFixed64List(bArr, i11, longArrayList2, registers);
                    fieldSet.setField(generatedExtension.descriptor, longArrayList2);
                    return decodePackedFixed64List;
                case 9:
                case 10:
                    IntArrayList intArrayList2 = new IntArrayList();
                    int decodePackedFixed32List = decodePackedFixed32List(bArr, i11, intArrayList2, registers);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList2);
                    return decodePackedFixed32List;
                case 11:
                    BooleanArrayList booleanArrayList = new BooleanArrayList();
                    int decodePackedBoolList = decodePackedBoolList(bArr, i11, booleanArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, booleanArrayList);
                    return decodePackedBoolList;
                case 12:
                    IntArrayList intArrayList3 = new IntArrayList();
                    int decodePackedSInt32List = decodePackedSInt32List(bArr, i11, intArrayList3, registers);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList3);
                    return decodePackedSInt32List;
                case 13:
                    LongArrayList longArrayList3 = new LongArrayList();
                    int decodePackedSInt64List = decodePackedSInt64List(bArr, i11, longArrayList3, registers);
                    fieldSet.setField(generatedExtension.descriptor, longArrayList3);
                    return decodePackedSInt64List;
                case 14:
                    IntArrayList intArrayList4 = new IntArrayList();
                    int decodePackedVarint32List2 = decodePackedVarint32List(bArr, i11, intArrayList4, registers);
                    SchemaUtil.filterUnknownEnumList((Object) extendableMessage, i13, (List<Integer>) intArrayList4, generatedExtension.descriptor.getEnumType(), (Object) null, (UnknownFieldSchema<UT, Object>) unknownFieldSchema);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList4);
                    return decodePackedVarint32List2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + generatedExtension.descriptor.getLiteType());
            }
        }
        Object obj = null;
        if (generatedExtension.getLiteType() == WireFormat.FieldType.ENUM) {
            i11 = decodeVarint32(bArr, i11, registers);
            if (generatedExtension.descriptor.getEnumType().findValueByNumber(registers.int1) == null) {
                SchemaUtil.storeUnknownEnum(extendableMessage, i13, registers.int1, null, unknownFieldSchema);
                return i11;
            }
            obj = Integer.valueOf(registers.int1);
        } else {
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    obj = Double.valueOf(decodeDouble(bArr, i11));
                    i11 += 8;
                    break;
                case 2:
                    obj = Float.valueOf(decodeFloat(bArr, i11));
                    i11 += 4;
                    break;
                case 3:
                case 4:
                    i11 = decodeVarint64(bArr, i11, registers);
                    obj = Long.valueOf(registers.long1);
                    break;
                case 5:
                case 6:
                    i11 = decodeVarint32(bArr, i11, registers);
                    obj = Integer.valueOf(registers.int1);
                    break;
                case 7:
                case 8:
                    obj = Long.valueOf(decodeFixed64(bArr, i11));
                    i11 += 8;
                    break;
                case 9:
                case 10:
                    obj = Integer.valueOf(decodeFixed32(bArr, i11));
                    i11 += 4;
                    break;
                case 11:
                    i11 = decodeVarint64(bArr, i11, registers);
                    if (registers.long1 != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    obj = Boolean.valueOf(z10);
                    break;
                case 12:
                    i11 = decodeVarint32(bArr, i11, registers);
                    obj = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                    break;
                case 13:
                    i11 = decodeVarint64(bArr, i11, registers);
                    obj = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i11 = decodeBytes(bArr, i11, registers);
                    obj = registers.object1;
                    break;
                case 16:
                    i11 = decodeString(bArr, i11, registers);
                    obj = registers.object1;
                    break;
                case 17:
                    int i14 = (i13 << 3) | 4;
                    Schema schemaFor = Protobuf.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass());
                    if (generatedExtension.isRepeated()) {
                        int decodeGroupField = decodeGroupField(schemaFor, bArr, i11, i12, i14, registers);
                        fieldSet.addRepeatedField(generatedExtension.descriptor, registers.object1);
                        return decodeGroupField;
                    }
                    Object field = fieldSet.getField(generatedExtension.descriptor);
                    if (field == null) {
                        field = schemaFor.newInstance();
                        fieldSet.setField(generatedExtension.descriptor, field);
                    }
                    return mergeGroupField(field, schemaFor, bArr, i11, i12, i14, registers);
                case 18:
                    Schema schemaFor2 = Protobuf.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass());
                    if (generatedExtension.isRepeated()) {
                        int decodeMessageField = decodeMessageField(schemaFor2, bArr, i11, i12, registers);
                        fieldSet.addRepeatedField(generatedExtension.descriptor, registers.object1);
                        return decodeMessageField;
                    }
                    Object field2 = fieldSet.getField(generatedExtension.descriptor);
                    if (field2 == null) {
                        field2 = schemaFor2.newInstance();
                        fieldSet.setField(generatedExtension.descriptor, field2);
                    }
                    return mergeMessageField(field2, schemaFor2, bArr, i11, i12, registers);
            }
        }
        if (generatedExtension.isRepeated()) {
            fieldSet.addRepeatedField(generatedExtension.descriptor, obj);
        } else {
            fieldSet.setField(generatedExtension.descriptor, obj);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeExtensionOrUnknownField(int i10, byte[] bArr, int i11, int i12, Object obj, MessageLite messageLite, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        GeneratedMessageLite.GeneratedExtension findLiteExtensionByNumber = registers.extensionRegistry.findLiteExtensionByNumber(messageLite, i10 >>> 3);
        if (findLiteExtensionByNumber == null) {
            return decodeUnknownField(i10, bArr, i11, i12, MessageSchema.getMutableUnknownFields(obj), registers);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.ensureExtensionsAreMutable();
        return decodeExtension(i10, bArr, i11, i12, extendableMessage, findLiteExtensionByNumber, unknownFieldSchema, registers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed32(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        intArrayList.addInt(decodeFixed32(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            intArrayList.addInt(decodeFixed32(bArr, decodeVarint32));
            i13 = decodeVarint32 + 4;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long decodeFixed64(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        longArrayList.addLong(decodeFixed64(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            longArrayList.addLong(decodeFixed64(bArr, decodeVarint32));
            i13 = decodeVarint32 + 8;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float decodeFloat(byte[] bArr, int i10) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFloatList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        FloatArrayList floatArrayList = (FloatArrayList) protobufList;
        floatArrayList.addFloat(decodeFloat(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            floatArrayList.addFloat(decodeFloat(bArr, decodeVarint32));
            i13 = decodeVarint32 + 4;
        }
        return i13;
    }

    static int decodeGroupField(Schema schema, byte[] bArr, int i10, int i11, int i12, Registers registers) throws IOException {
        Object newInstance = schema.newInstance();
        int mergeGroupField = mergeGroupField(newInstance, schema, bArr, i10, i11, i12, registers);
        schema.makeImmutable(newInstance);
        registers.object1 = newInstance;
        return mergeGroupField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeGroupList(Schema schema, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int decodeGroupField = decodeGroupField(schema, bArr, i11, i12, i13, registers);
        protobufList.add(registers.object1);
        while (decodeGroupField < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeGroupField, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeGroupField = decodeGroupField(schema, bArr, decodeVarint32, i12, i13, registers);
            protobufList.add(registers.object1);
        }
        return decodeGroupField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeMessageField(Schema schema, byte[] bArr, int i10, int i11, Registers registers) throws IOException {
        Object newInstance = schema.newInstance();
        int mergeMessageField = mergeMessageField(newInstance, schema, bArr, i10, i11, registers);
        schema.makeImmutable(newInstance);
        registers.object1 = newInstance;
        return mergeMessageField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeMessageList(Schema<?> schema, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        int decodeMessageField = decodeMessageField(schema, bArr, i11, i12, registers);
        protobufList.add(registers.object1);
        while (decodeMessageField < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeMessageField, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeMessageField = decodeMessageField(schema, bArr, decodeVarint32, i12, registers);
            protobufList.add(registers.object1);
        }
        return decodeMessageField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedBoolList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        boolean z10;
        BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, registers);
            if (registers.long1 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            booleanArrayList.addBoolean(z10);
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedDoubleList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            doubleArrayList.addDouble(decodeDouble(bArr, decodeVarint32));
            decodeVarint32 += 8;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedFixed32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            intArrayList.addInt(decodeFixed32(bArr, decodeVarint32));
            decodeVarint32 += 4;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedFixed64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            longArrayList.addLong(decodeFixed64(bArr, decodeVarint32));
            decodeVarint32 += 8;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedFloatList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        FloatArrayList floatArrayList = (FloatArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            floatArrayList.addFloat(decodeFloat(bArr, decodeVarint32));
            decodeVarint32 += 4;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedSInt32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint32(bArr, decodeVarint32, registers);
            intArrayList.addInt(CodedInputStream.decodeZigZag32(registers.int1));
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedSInt64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(CodedInputStream.decodeZigZag64(registers.long1));
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedVarint32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint32(bArr, decodeVarint32, registers);
            intArrayList.addInt(registers.int1);
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedVarint64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(registers.long1);
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeSInt32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i11, registers);
        intArrayList.addInt(CodedInputStream.decodeZigZag32(registers.int1));
        while (decodeVarint32 < i12) {
            int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeVarint32 = decodeVarint32(bArr, decodeVarint322, registers);
            intArrayList.addInt(CodedInputStream.decodeZigZag32(registers.int1));
        }
        return decodeVarint32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeSInt64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i11, registers);
        longArrayList.addLong(CodedInputStream.decodeZigZag64(registers.long1));
        while (decodeVarint64 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(CodedInputStream.decodeZigZag64(registers.long1));
        }
        return decodeVarint64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeString(byte[] bArr, int i10, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                registers.object1 = "";
                return decodeVarint32;
            }
            registers.object1 = new String(bArr, decodeVarint32, i11, Internal.UTF_8);
            return decodeVarint32 + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001a -> B:9:0x001b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeStringList(int r4, byte[] r5, int r6, int r7, androidx.datastore.preferences.protobuf.Internal.ProtobufList<?> r8, androidx.datastore.preferences.protobuf.ArrayDecoders.Registers r9) throws androidx.datastore.preferences.protobuf.InvalidProtocolBufferException {
        /*
            int r6 = decodeVarint32(r5, r6, r9)
            int r0 = r9.int1
            if (r0 < 0) goto L45
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r8.add(r1)
            goto L1b
        L10:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = androidx.datastore.preferences.protobuf.Internal.UTF_8
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
        L1a:
            int r6 = r6 + r0
        L1b:
            if (r6 >= r7) goto L44
            int r0 = decodeVarint32(r5, r6, r9)
            int r2 = r9.int1
            if (r4 == r2) goto L26
            goto L44
        L26:
            int r6 = decodeVarint32(r5, r0, r9)
            int r0 = r9.int1
            if (r0 < 0) goto L3f
            if (r0 != 0) goto L34
            r8.add(r1)
            goto L1b
        L34:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = androidx.datastore.preferences.protobuf.Internal.UTF_8
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
            goto L1a
        L3f:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r4 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        L44:
            return r6
        L45:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r4 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.ArrayDecoders.decodeStringList(int, byte[], int, int, androidx.datastore.preferences.protobuf.Internal$ProtobufList, androidx.datastore.preferences.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0022 -> B:11:0x0023). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeStringListRequireUtf8(int r5, byte[] r6, int r7, int r8, androidx.datastore.preferences.protobuf.Internal.ProtobufList<?> r9, androidx.datastore.preferences.protobuf.ArrayDecoders.Registers r10) throws androidx.datastore.preferences.protobuf.InvalidProtocolBufferException {
        /*
            int r7 = decodeVarint32(r6, r7, r10)
            int r0 = r10.int1
            if (r0 < 0) goto L5f
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r9.add(r1)
            goto L23
        L10:
            int r2 = r7 + r0
            boolean r3 = androidx.datastore.preferences.protobuf.Utf8.isValidUtf8(r6, r7, r2)
            if (r3 == 0) goto L5a
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = androidx.datastore.preferences.protobuf.Internal.UTF_8
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
        L22:
            r7 = r2
        L23:
            if (r7 >= r8) goto L59
            int r0 = decodeVarint32(r6, r7, r10)
            int r2 = r10.int1
            if (r5 == r2) goto L2e
            goto L59
        L2e:
            int r7 = decodeVarint32(r6, r0, r10)
            int r0 = r10.int1
            if (r0 < 0) goto L54
            if (r0 != 0) goto L3c
            r9.add(r1)
            goto L23
        L3c:
            int r2 = r7 + r0
            boolean r3 = androidx.datastore.preferences.protobuf.Utf8.isValidUtf8(r6, r7, r2)
            if (r3 == 0) goto L4f
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = androidx.datastore.preferences.protobuf.Internal.UTF_8
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
            goto L22
        L4f:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r5 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L54:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r5 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        L59:
            return r7
        L5a:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r5 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L5f:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r5 = androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.ArrayDecoders.decodeStringListRequireUtf8(int, byte[], int, int, androidx.datastore.preferences.protobuf.Internal$ProtobufList, androidx.datastore.preferences.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeStringRequireUtf8(byte[] bArr, int i10, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i10, registers);
        int i11 = registers.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                registers.object1 = "";
                return decodeVarint32;
            }
            registers.object1 = Utf8.decodeUtf8(bArr, decodeVarint32, i11);
            return decodeVarint32 + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeUnknownField(int i10, byte[] bArr, int i11, int i12, UnknownFieldSetLite unknownFieldSetLite, Registers registers) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i10) != 0) {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType != 0) {
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        if (tagWireType != 3) {
                            if (tagWireType == 5) {
                                unknownFieldSetLite.storeField(i10, Integer.valueOf(decodeFixed32(bArr, i11)));
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = registers.recursionDepth + 1;
                        registers.recursionDepth = i14;
                        checkRecursionLimit(i14);
                        int i15 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int decodeVarint32 = decodeVarint32(bArr, i11, registers);
                            int i16 = registers.int1;
                            if (i16 == i13) {
                                i15 = i16;
                                i11 = decodeVarint32;
                                break;
                            }
                            i15 = i16;
                            i11 = decodeUnknownField(i16, bArr, decodeVarint32, i12, newInstance, registers);
                        }
                        registers.recursionDepth--;
                        if (i11 <= i12 && i15 == i13) {
                            unknownFieldSetLite.storeField(i10, newInstance);
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    int decodeVarint322 = decodeVarint32(bArr, i11, registers);
                    int i17 = registers.int1;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - decodeVarint322) {
                            if (i17 == 0) {
                                unknownFieldSetLite.storeField(i10, ByteString.EMPTY);
                            } else {
                                unknownFieldSetLite.storeField(i10, ByteString.copyFrom(bArr, decodeVarint322, i17));
                            }
                            return decodeVarint322 + i17;
                        }
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    throw InvalidProtocolBufferException.negativeSize();
                }
                unknownFieldSetLite.storeField(i10, Long.valueOf(decodeFixed64(bArr, i11)));
                return i11 + 8;
            }
            int decodeVarint64 = decodeVarint64(bArr, i11, registers);
            unknownFieldSetLite.storeField(i10, Long.valueOf(registers.long1));
            return decodeVarint64;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32(byte[] bArr, int i10, Registers registers) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            registers.int1 = b10;
            return i11;
        }
        return decodeVarint32(b10, bArr, i11, registers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i11, registers);
        intArrayList.addInt(registers.int1);
        while (decodeVarint32 < i12) {
            int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeVarint32 = decodeVarint32(bArr, decodeVarint322, registers);
            intArrayList.addInt(registers.int1);
        }
        return decodeVarint32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint64(byte[] bArr, int i10, Registers registers) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            registers.long1 = j10;
            return i11;
        }
        return decodeVarint64(j10, bArr, i11, registers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i11, registers);
        longArrayList.addLong(registers.long1);
        while (decodeVarint64 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, registers);
            if (i10 != registers.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(registers.long1);
        }
        return decodeVarint64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int mergeGroupField(Object obj, Schema schema, byte[] bArr, int i10, int i11, int i12, Registers registers) throws IOException {
        MessageSchema messageSchema = (MessageSchema) schema;
        int i13 = registers.recursionDepth + 1;
        registers.recursionDepth = i13;
        checkRecursionLimit(i13);
        int parseMessage = messageSchema.parseMessage(obj, bArr, i10, i11, i12, registers);
        registers.recursionDepth--;
        registers.object1 = obj;
        return parseMessage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int mergeMessageField(Object obj, Schema schema, byte[] bArr, int i10, int i11, Registers registers) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = decodeVarint32(i13, bArr, i12, registers);
            i13 = registers.int1;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = registers.recursionDepth + 1;
            registers.recursionDepth = i15;
            checkRecursionLimit(i15);
            int i16 = i13 + i14;
            schema.mergeFrom(obj, bArr, i14, i16, registers);
            registers.recursionDepth--;
            registers.object1 = obj;
            return i16;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static void setRecursionLimit(int i10) {
        recursionLimit = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int skipField(int i10, byte[] bArr, int i11, int i12, Registers registers) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i10) != 0) {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType != 0) {
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        if (tagWireType != 3) {
                            if (tagWireType == 5) {
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (i11 < i12) {
                            i11 = decodeVarint32(bArr, i11, registers);
                            i14 = registers.int1;
                            if (i14 == i13) {
                                break;
                            }
                            i11 = skipField(i14, bArr, i11, i12, registers);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    return decodeVarint32(bArr, i11, registers) + registers.int1;
                }
                return i11 + 8;
            }
            return decodeVarint64(bArr, i11, registers);
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class Registers {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;
        public int recursionDepth;

        Registers() {
            this.extensionRegistry = ExtensionRegistryLite.getEmptyRegistry();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Registers(ExtensionRegistryLite extensionRegistryLite) {
            extensionRegistryLite.getClass();
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32(int i10, byte[] bArr, int i11, Registers registers) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            registers.int1 = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            registers.int1 = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            registers.int1 = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            registers.int1 = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                registers.int1 = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int decodeVarint64(long j10, byte[] bArr, int i10, Registers registers) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        long j11 = (j10 & 127) | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i12 = 7;
        while (b10 < 0) {
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            i12 += 7;
            j11 |= (b11 & ByteCompanionObject.MAX_VALUE) << i12;
            i11 = i13;
            b10 = b11;
        }
        registers.long1 = j11;
        return i11;
    }
}
