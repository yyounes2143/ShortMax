package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.WireFormat;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArrayDecoders.java */
/* loaded from: classes5.dex */
public final class c {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDecoders.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {
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

    private c() {
    }

    private static void checkRecursionLimit(int i10) throws InvalidProtocolBufferException {
        if (i10 < recursionLimit) {
            return;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeBoolList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        boolean z10;
        boolean z11;
        d dVar = (d) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i11, bVar);
        if (bVar.long1 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        dVar.addBoolean(z10);
        while (decodeVarint64 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, bVar);
            if (bVar.long1 != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            dVar.addBoolean(z11);
        }
        return decodeVarint64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeBytes(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 >= 0) {
            if (i11 <= bArr.length - decodeVarint32) {
                if (i11 == 0) {
                    bVar.object1 = ByteString.EMPTY;
                    return decodeVarint32;
                }
                bVar.object1 = ByteString.copyFrom(bArr, decodeVarint32, i11);
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
    public static int decodeBytesList(int r2, byte[] r3, int r4, int r5, com.google.protobuf.Internal.ProtobufList<?> r6, com.google.protobuf.c.b r7) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            int r4 = decodeVarint32(r3, r4, r7)
            int r0 = r7.int1
            if (r0 < 0) goto L53
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L4e
            if (r0 != 0) goto L14
            com.google.protobuf.ByteString r0 = com.google.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L14:
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.copyFrom(r3, r4, r0)
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
            com.google.protobuf.ByteString r0 = com.google.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L3b:
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
            goto L1b
        L43:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L48:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        L4d:
            return r4
        L4e:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L53:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.c.decodeBytesList(int, byte[], int, int, com.google.protobuf.Internal$ProtobufList, com.google.protobuf.c$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double decodeDouble(byte[] bArr, int i10) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeDoubleList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        h hVar = (h) protobufList;
        hVar.addDouble(decodeDouble(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            hVar.addDouble(decodeDouble(bArr, decodeVarint32));
            i13 = decodeVarint32 + 8;
        }
        return i13;
    }

    static int decodeExtension(int i10, byte[] bArr, int i11, int i12, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension, q0<UnknownFieldSetLite, UnknownFieldSetLite> q0Var, b bVar) throws IOException {
        boolean z10;
        FieldSet<GeneratedMessageLite.b> fieldSet = extendableMessage.extensions;
        int i13 = i10 >>> 3;
        if (generatedExtension.descriptor.isRepeated() && generatedExtension.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    h hVar = new h();
                    int decodePackedDoubleList = decodePackedDoubleList(bArr, i11, hVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, hVar);
                    return decodePackedDoubleList;
                case 2:
                    m mVar = new m();
                    int decodePackedFloatList = decodePackedFloatList(bArr, i11, mVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, mVar);
                    return decodePackedFloatList;
                case 3:
                case 4:
                    s sVar = new s();
                    int decodePackedVarint64List = decodePackedVarint64List(bArr, i11, sVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, sVar);
                    return decodePackedVarint64List;
                case 5:
                case 6:
                    o oVar = new o();
                    int decodePackedVarint32List = decodePackedVarint32List(bArr, i11, oVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, oVar);
                    return decodePackedVarint32List;
                case 7:
                case 8:
                    s sVar2 = new s();
                    int decodePackedFixed64List = decodePackedFixed64List(bArr, i11, sVar2, bVar);
                    fieldSet.setField(generatedExtension.descriptor, sVar2);
                    return decodePackedFixed64List;
                case 9:
                case 10:
                    o oVar2 = new o();
                    int decodePackedFixed32List = decodePackedFixed32List(bArr, i11, oVar2, bVar);
                    fieldSet.setField(generatedExtension.descriptor, oVar2);
                    return decodePackedFixed32List;
                case 11:
                    d dVar = new d();
                    int decodePackedBoolList = decodePackedBoolList(bArr, i11, dVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, dVar);
                    return decodePackedBoolList;
                case 12:
                    o oVar3 = new o();
                    int decodePackedSInt32List = decodePackedSInt32List(bArr, i11, oVar3, bVar);
                    fieldSet.setField(generatedExtension.descriptor, oVar3);
                    return decodePackedSInt32List;
                case 13:
                    s sVar3 = new s();
                    int decodePackedSInt64List = decodePackedSInt64List(bArr, i11, sVar3, bVar);
                    fieldSet.setField(generatedExtension.descriptor, sVar3);
                    return decodePackedSInt64List;
                case 14:
                    o oVar4 = new o();
                    int decodePackedVarint32List2 = decodePackedVarint32List(bArr, i11, oVar4, bVar);
                    n0.filterUnknownEnumList((Object) extendableMessage, i13, (List<Integer>) oVar4, generatedExtension.descriptor.getEnumType(), (Object) null, (q0<UT, Object>) q0Var);
                    fieldSet.setField(generatedExtension.descriptor, oVar4);
                    return decodePackedVarint32List2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + generatedExtension.descriptor.getLiteType());
            }
        }
        Object obj = null;
        if (generatedExtension.getLiteType() == WireFormat.FieldType.ENUM) {
            i11 = decodeVarint32(bArr, i11, bVar);
            if (generatedExtension.descriptor.getEnumType().findValueByNumber(bVar.int1) == null) {
                n0.storeUnknownEnum(extendableMessage, i13, bVar.int1, null, q0Var);
                return i11;
            }
            obj = Integer.valueOf(bVar.int1);
        } else {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
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
                    i11 = decodeVarint64(bArr, i11, bVar);
                    obj = Long.valueOf(bVar.long1);
                    break;
                case 5:
                case 6:
                    i11 = decodeVarint32(bArr, i11, bVar);
                    obj = Integer.valueOf(bVar.int1);
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
                    i11 = decodeVarint64(bArr, i11, bVar);
                    if (bVar.long1 != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    obj = Boolean.valueOf(z10);
                    break;
                case 12:
                    i11 = decodeVarint32(bArr, i11, bVar);
                    obj = Integer.valueOf(CodedInputStream.decodeZigZag32(bVar.int1));
                    break;
                case 13:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    obj = Long.valueOf(CodedInputStream.decodeZigZag64(bVar.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i11 = decodeBytes(bArr, i11, bVar);
                    obj = bVar.object1;
                    break;
                case 16:
                    i11 = decodeString(bArr, i11, bVar);
                    obj = bVar.object1;
                    break;
                case 17:
                    int i14 = (i13 << 3) | 4;
                    l0 schemaFor = h0.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass());
                    if (generatedExtension.isRepeated()) {
                        int decodeGroupField = decodeGroupField(schemaFor, bArr, i11, i12, i14, bVar);
                        fieldSet.addRepeatedField(generatedExtension.descriptor, bVar.object1);
                        return decodeGroupField;
                    }
                    Object field = fieldSet.getField(generatedExtension.descriptor);
                    if (field == null) {
                        field = schemaFor.newInstance();
                        fieldSet.setField(generatedExtension.descriptor, field);
                    }
                    return mergeGroupField(field, schemaFor, bArr, i11, i12, i14, bVar);
                case 18:
                    l0 schemaFor2 = h0.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass());
                    if (generatedExtension.isRepeated()) {
                        int decodeMessageField = decodeMessageField(schemaFor2, bArr, i11, i12, bVar);
                        fieldSet.addRepeatedField(generatedExtension.descriptor, bVar.object1);
                        return decodeMessageField;
                    }
                    Object field2 = fieldSet.getField(generatedExtension.descriptor);
                    if (field2 == null) {
                        field2 = schemaFor2.newInstance();
                        fieldSet.setField(generatedExtension.descriptor, field2);
                    }
                    return mergeMessageField(field2, schemaFor2, bArr, i11, i12, bVar);
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
    public static int decodeExtensionOrUnknownField(int i10, byte[] bArr, int i11, int i12, Object obj, MessageLite messageLite, q0<UnknownFieldSetLite, UnknownFieldSetLite> q0Var, b bVar) throws IOException {
        GeneratedMessageLite.GeneratedExtension findLiteExtensionByNumber = bVar.extensionRegistry.findLiteExtensionByNumber(messageLite, i10 >>> 3);
        if (findLiteExtensionByNumber == null) {
            return decodeUnknownField(i10, bArr, i11, i12, a0.getMutableUnknownFields(obj), bVar);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.ensureExtensionsAreMutable();
        return decodeExtension(i10, bArr, i11, i12, extendableMessage, findLiteExtensionByNumber, q0Var, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed32(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        o oVar = (o) protobufList;
        oVar.addInt(decodeFixed32(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            oVar.addInt(decodeFixed32(bArr, decodeVarint32));
            i13 = decodeVarint32 + 4;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long decodeFixed64(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        s sVar = (s) protobufList;
        sVar.addLong(decodeFixed64(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            sVar.addLong(decodeFixed64(bArr, decodeVarint32));
            i13 = decodeVarint32 + 8;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float decodeFloat(byte[] bArr, int i10) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFloatList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        m mVar = (m) protobufList;
        mVar.addFloat(decodeFloat(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            mVar.addFloat(decodeFloat(bArr, decodeVarint32));
            i13 = decodeVarint32 + 4;
        }
        return i13;
    }

    static int decodeGroupField(l0 l0Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        Object newInstance = l0Var.newInstance();
        int mergeGroupField = mergeGroupField(newInstance, l0Var, bArr, i10, i11, i12, bVar);
        l0Var.makeImmutable(newInstance);
        bVar.object1 = newInstance;
        return mergeGroupField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeGroupList(l0 l0Var, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int decodeGroupField = decodeGroupField(l0Var, bArr, i11, i12, i13, bVar);
        protobufList.add(bVar.object1);
        while (decodeGroupField < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeGroupField, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeGroupField = decodeGroupField(l0Var, bArr, decodeVarint32, i12, i13, bVar);
            protobufList.add(bVar.object1);
        }
        return decodeGroupField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeMessageField(l0 l0Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        Object newInstance = l0Var.newInstance();
        int mergeMessageField = mergeMessageField(newInstance, l0Var, bArr, i10, i11, bVar);
        l0Var.makeImmutable(newInstance);
        bVar.object1 = newInstance;
        return mergeMessageField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeMessageList(l0<?> l0Var, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        int decodeMessageField = decodeMessageField(l0Var, bArr, i11, i12, bVar);
        protobufList.add(bVar.object1);
        while (decodeMessageField < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeMessageField, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeMessageField = decodeMessageField(l0Var, bArr, decodeVarint32, i12, bVar);
            protobufList.add(bVar.object1);
        }
        return decodeMessageField;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedBoolList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        boolean z10;
        d dVar = (d) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, bVar);
            if (bVar.long1 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            dVar.addBoolean(z10);
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedDoubleList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        h hVar = (h) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            hVar.addDouble(decodeDouble(bArr, decodeVarint32));
            decodeVarint32 += 8;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedFixed32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        o oVar = (o) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            oVar.addInt(decodeFixed32(bArr, decodeVarint32));
            decodeVarint32 += 4;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedFixed64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        s sVar = (s) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            sVar.addLong(decodeFixed64(bArr, decodeVarint32));
            decodeVarint32 += 8;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedFloatList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        m mVar = (m) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            mVar.addFloat(decodeFloat(bArr, decodeVarint32));
            decodeVarint32 += 4;
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedSInt32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        o oVar = (o) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint32(bArr, decodeVarint32, bVar);
            oVar.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedSInt64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        s sVar = (s) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, bVar);
            sVar.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedVarint32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        o oVar = (o) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint32(bArr, decodeVarint32, bVar);
            oVar.addInt(bVar.int1);
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodePackedVarint64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        s sVar = (s) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + decodeVarint32;
        while (decodeVarint32 < i11) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, bVar);
            sVar.addLong(bVar.long1);
        }
        if (decodeVarint32 == i11) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeSInt32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        o oVar = (o) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i11, bVar);
        oVar.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        while (decodeVarint32 < i12) {
            int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeVarint32 = decodeVarint32(bArr, decodeVarint322, bVar);
            oVar.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        }
        return decodeVarint32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeSInt64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        s sVar = (s) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i11, bVar);
        sVar.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        while (decodeVarint64 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, bVar);
            sVar.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        }
        return decodeVarint64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeString(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                bVar.object1 = "";
                return decodeVarint32;
            }
            bVar.object1 = new String(bArr, decodeVarint32, i11, Internal.UTF_8);
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
    public static int decodeStringList(int r4, byte[] r5, int r6, int r7, com.google.protobuf.Internal.ProtobufList<?> r8, com.google.protobuf.c.b r9) throws com.google.protobuf.InvalidProtocolBufferException {
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
            java.nio.charset.Charset r3 = com.google.protobuf.Internal.UTF_8
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
            java.nio.charset.Charset r3 = com.google.protobuf.Internal.UTF_8
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
            goto L1a
        L3f:
            com.google.protobuf.InvalidProtocolBufferException r4 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        L44:
            return r6
        L45:
            com.google.protobuf.InvalidProtocolBufferException r4 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.c.decodeStringList(int, byte[], int, int, com.google.protobuf.Internal$ProtobufList, com.google.protobuf.c$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0022 -> B:11:0x0023). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeStringListRequireUtf8(int r5, byte[] r6, int r7, int r8, com.google.protobuf.Internal.ProtobufList<?> r9, com.google.protobuf.c.b r10) throws com.google.protobuf.InvalidProtocolBufferException {
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
            boolean r3 = com.google.protobuf.Utf8.isValidUtf8(r6, r7, r2)
            if (r3 == 0) goto L5a
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.protobuf.Internal.UTF_8
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
            boolean r3 = com.google.protobuf.Utf8.isValidUtf8(r6, r7, r2)
            if (r3 == 0) goto L4f
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.protobuf.Internal.UTF_8
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
            goto L22
        L4f:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L54:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        L59:
            return r7
        L5a:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L5f:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.c.decodeStringListRequireUtf8(int, byte[], int, int, com.google.protobuf.Internal$ProtobufList, com.google.protobuf.c$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeStringRequireUtf8(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                bVar.object1 = "";
                return decodeVarint32;
            }
            bVar.object1 = Utf8.decodeUtf8(bArr, decodeVarint32, i11);
            return decodeVarint32 + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeUnknownField(int i10, byte[] bArr, int i11, int i12, UnknownFieldSetLite unknownFieldSetLite, b bVar) throws InvalidProtocolBufferException {
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
                        int i14 = bVar.recursionDepth + 1;
                        bVar.recursionDepth = i14;
                        checkRecursionLimit(i14);
                        int i15 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int decodeVarint32 = decodeVarint32(bArr, i11, bVar);
                            int i16 = bVar.int1;
                            if (i16 == i13) {
                                i15 = i16;
                                i11 = decodeVarint32;
                                break;
                            }
                            i15 = i16;
                            i11 = decodeUnknownField(i16, bArr, decodeVarint32, i12, newInstance, bVar);
                        }
                        bVar.recursionDepth--;
                        if (i11 <= i12 && i15 == i13) {
                            unknownFieldSetLite.storeField(i10, newInstance);
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    int decodeVarint322 = decodeVarint32(bArr, i11, bVar);
                    int i17 = bVar.int1;
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
            int decodeVarint64 = decodeVarint64(bArr, i11, bVar);
            unknownFieldSetLite.storeField(i10, Long.valueOf(bVar.long1));
            return decodeVarint64;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            bVar.int1 = b10;
            return i11;
        }
        return decodeVarint32(b10, bArr, i11, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        o oVar = (o) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i11, bVar);
        oVar.addInt(bVar.int1);
        while (decodeVarint32 < i12) {
            int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeVarint32 = decodeVarint32(bArr, decodeVarint322, bVar);
            oVar.addInt(bVar.int1);
        }
        return decodeVarint32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint64(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            bVar.long1 = j10;
            return i11;
        }
        return decodeVarint64(j10, bArr, i11, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        s sVar = (s) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i11, bVar);
        sVar.addLong(bVar.long1);
        while (decodeVarint64 < i12) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, bVar);
            sVar.addLong(bVar.long1);
        }
        return decodeVarint64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int mergeGroupField(Object obj, l0 l0Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        a0 a0Var = (a0) l0Var;
        int i13 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i13;
        checkRecursionLimit(i13);
        int parseMessage = a0Var.parseMessage(obj, bArr, i10, i11, i12, bVar);
        bVar.recursionDepth--;
        bVar.object1 = obj;
        return parseMessage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int mergeMessageField(Object obj, l0 l0Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = decodeVarint32(i13, bArr, i12, bVar);
            i13 = bVar.int1;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = bVar.recursionDepth + 1;
            bVar.recursionDepth = i15;
            checkRecursionLimit(i15);
            int i16 = i13 + i14;
            l0Var.mergeFrom(obj, bArr, i14, i16, bVar);
            bVar.recursionDepth--;
            bVar.object1 = obj;
            return i16;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static void setRecursionLimit(int i10) {
        recursionLimit = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int skipField(int i10, byte[] bArr, int i11, int i12, b bVar) throws InvalidProtocolBufferException {
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
                            i11 = decodeVarint32(bArr, i11, bVar);
                            i14 = bVar.int1;
                            if (i14 == i13) {
                                break;
                            }
                            i11 = skipField(i14, bArr, i11, i12, bVar);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    return decodeVarint32(bArr, i11, bVar) + bVar.int1;
                }
                return i11 + 8;
            }
            return decodeVarint64(bArr, i11, bVar);
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayDecoders.java */
    /* loaded from: classes5.dex */
    public static final class b {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;
        public int recursionDepth;

        b() {
            this.extensionRegistry = ExtensionRegistryLite.getEmptyRegistry();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ExtensionRegistryLite extensionRegistryLite) {
            extensionRegistryLite.getClass();
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32(int i10, byte[] bArr, int i11, b bVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            bVar.int1 = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            bVar.int1 = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            bVar.int1 = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            bVar.int1 = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                bVar.int1 = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int decodeVarint64(long j10, byte[] bArr, int i10, b bVar) {
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
        bVar.long1 = j11;
        return i11;
    }
}
