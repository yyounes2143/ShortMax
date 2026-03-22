package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.LazyField;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* compiled from: MessageSetSchema.java */
/* loaded from: classes5.dex */
final class b0<T> implements l0<T> {
    private final MessageLite defaultInstance;
    private final j<?> extensionSchema;
    private final boolean hasExtensions;
    private final q0<?, ?> unknownFieldSchema;

    private b0(q0<?, ?> q0Var, j<?> jVar, MessageLite messageLite) {
        this.unknownFieldSchema = q0Var;
        this.hasExtensions = jVar.hasExtensions(messageLite);
        this.extensionSchema = jVar;
        this.defaultInstance = messageLite;
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(q0<UT, UB> q0Var, T t10) {
        return q0Var.getSerializedSizeAsMessageSet(q0Var.getFromMessage(t10));
    }

    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(q0<UT, UB> q0Var, j<ET> jVar, T t10, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        UB builderFromMessage = q0Var.getBuilderFromMessage(t10);
        FieldSet<ET> mutableExtensions = jVar.getMutableExtensions(t10);
        do {
            try {
                if (k0Var.getFieldNumber() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                q0Var.setBuilderToMessage(t10, builderFromMessage);
            }
        } while (parseMessageSetItemOrUnknownField(k0Var, extensionRegistryLite, jVar, mutableExtensions, q0Var, builderFromMessage));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b0<T> newSchema(q0<?, ?> q0Var, j<?> jVar, MessageLite messageLite) {
        return new b0<>(q0Var, jVar, messageLite);
    }

    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> boolean parseMessageSetItemOrUnknownField(k0 k0Var, ExtensionRegistryLite extensionRegistryLite, j<ET> jVar, FieldSet<ET> fieldSet, q0<UT, UB> q0Var, UB ub2) throws IOException {
        int tag = k0Var.getTag();
        int i10 = 0;
        if (tag != WireFormat.MESSAGE_SET_ITEM_TAG) {
            if (WireFormat.getTagWireType(tag) == 2) {
                Object findExtensionByNumber = jVar.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, WireFormat.getTagFieldNumber(tag));
                if (findExtensionByNumber != null) {
                    jVar.parseLengthPrefixedMessageSetItem(k0Var, findExtensionByNumber, extensionRegistryLite, fieldSet);
                    return true;
                }
                return q0Var.mergeOneFieldFrom(ub2, k0Var, 0);
            }
            return k0Var.skipField();
        }
        Object obj = null;
        ByteString byteString = null;
        while (k0Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = k0Var.getTag();
            if (tag2 == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                i10 = k0Var.readUInt32();
                obj = jVar.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, i10);
            } else if (tag2 == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (obj != null) {
                    jVar.parseLengthPrefixedMessageSetItem(k0Var, obj, extensionRegistryLite, fieldSet);
                } else {
                    byteString = k0Var.readBytes();
                }
            } else if (!k0Var.skipField()) {
                break;
            }
        }
        if (k0Var.getTag() == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
            if (byteString != null) {
                if (obj != null) {
                    jVar.parseMessageSetItem(byteString, obj, extensionRegistryLite, fieldSet);
                } else {
                    q0Var.addLengthDelimited(ub2, i10, byteString);
                }
            }
            return true;
        }
        throw InvalidProtocolBufferException.invalidEndTag();
    }

    private <UT, UB> void writeUnknownFieldsHelper(q0<UT, UB> q0Var, T t10, Writer writer) throws IOException {
        q0Var.writeAsMessageSetTo(q0Var.getFromMessage(t10), writer);
    }

    @Override // com.google.protobuf.l0
    public boolean equals(T t10, T t11) {
        if (!this.unknownFieldSchema.getFromMessage(t10).equals(this.unknownFieldSchema.getFromMessage(t11))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t10).equals(this.extensionSchema.getExtensions(t11));
        }
        return true;
    }

    @Override // com.google.protobuf.l0
    public int getSerializedSize(T t10) {
        int unknownFieldsSerializedSize = getUnknownFieldsSerializedSize(this.unknownFieldSchema, t10);
        if (this.hasExtensions) {
            return unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t10).getMessageSetSerializedSize();
        }
        return unknownFieldsSerializedSize;
    }

    @Override // com.google.protobuf.l0
    public int hashCode(T t10) {
        int hashCode = this.unknownFieldSchema.getFromMessage(t10).hashCode();
        if (this.hasExtensions) {
            return (hashCode * 53) + this.extensionSchema.getExtensions(t10).hashCode();
        }
        return hashCode;
    }

    @Override // com.google.protobuf.l0
    public final boolean isInitialized(T t10) {
        return this.extensionSchema.getExtensions(t10).isInitialized();
    }

    @Override // com.google.protobuf.l0
    public void makeImmutable(T t10) {
        this.unknownFieldSchema.makeImmutable(t10);
        this.extensionSchema.makeImmutable(t10);
    }

    @Override // com.google.protobuf.l0
    public void mergeFrom(T t10, T t11) {
        n0.mergeUnknownFields(this.unknownFieldSchema, t10, t11);
        if (this.hasExtensions) {
            n0.mergeExtensions(this.extensionSchema, t10, t11);
        }
    }

    @Override // com.google.protobuf.l0
    public T newInstance() {
        MessageLite messageLite = this.defaultInstance;
        if (messageLite instanceof GeneratedMessageLite) {
            return (T) ((GeneratedMessageLite) messageLite).newMutableInstance();
        }
        return (T) messageLite.newBuilderForType().buildPartial();
    }

    @Override // com.google.protobuf.l0
    public void writeTo(T t10, Writer writer) throws IOException {
        Iterator<Map.Entry<?, Object>> it = this.extensionSchema.getExtensions(t10).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) next.getKey();
            if (fieldDescriptorLite.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !fieldDescriptorLite.isRepeated() && !fieldDescriptorLite.isPacked()) {
                if (next instanceof LazyField.b) {
                    writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), ((LazyField.b) next).getField().toByteString());
                } else {
                    writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        writeUnknownFieldsHelper(this.unknownFieldSchema, t10, writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb A[EDGE_INSN: B:57:0x00cb->B:34:0x00cb ?: BREAK  , SYNTHETIC] */
    @Override // com.google.protobuf.l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mergeFrom(T r11, byte[] r12, int r13, int r14, com.google.protobuf.c.b r15) throws java.io.IOException {
        /*
            r10 = this;
            r0 = r11
            com.google.protobuf.GeneratedMessageLite r0 = (com.google.protobuf.GeneratedMessageLite) r0
            com.google.protobuf.UnknownFieldSetLite r1 = r0.unknownFields
            com.google.protobuf.UnknownFieldSetLite r2 = com.google.protobuf.UnknownFieldSetLite.getDefaultInstance()
            if (r1 != r2) goto L11
            com.google.protobuf.UnknownFieldSetLite r1 = com.google.protobuf.UnknownFieldSetLite.newInstance()
            r0.unknownFields = r1
        L11:
            com.google.protobuf.GeneratedMessageLite$ExtendableMessage r11 = (com.google.protobuf.GeneratedMessageLite.ExtendableMessage) r11
            com.google.protobuf.FieldSet r11 = r11.ensureExtensionsAreMutable()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Ld7
            int r4 = com.google.protobuf.c.decodeVarint32(r12, r13, r15)
            int r13 = r15.int1
            int r3 = com.google.protobuf.WireFormat.MESSAGE_SET_ITEM_TAG
            r5 = 2
            if (r13 == r3) goto L6b
            int r3 = com.google.protobuf.WireFormat.getTagWireType(r13)
            if (r3 != r5) goto L66
            com.google.protobuf.j<?> r2 = r10.extensionSchema
            com.google.protobuf.ExtensionRegistryLite r3 = r15.extensionRegistry
            com.google.protobuf.MessageLite r5 = r10.defaultInstance
            int r6 = com.google.protobuf.WireFormat.getTagFieldNumber(r13)
            java.lang.Object r2 = r2.findExtensionByNumber(r3, r5, r6)
            r8 = r2
            com.google.protobuf.GeneratedMessageLite$GeneratedExtension r8 = (com.google.protobuf.GeneratedMessageLite.GeneratedExtension) r8
            if (r8 == 0) goto L5c
            com.google.protobuf.h0 r13 = com.google.protobuf.h0.getInstance()
            com.google.protobuf.MessageLite r2 = r8.getMessageDefaultInstance()
            java.lang.Class r2 = r2.getClass()
            com.google.protobuf.l0 r13 = r13.schemaFor(r2)
            int r13 = com.google.protobuf.c.decodeMessageField(r13, r12, r4, r14, r15)
            com.google.protobuf.GeneratedMessageLite$b r2 = r8.descriptor
            java.lang.Object r3 = r15.object1
            r11.setField(r2, r3)
        L5a:
            r2 = r8
            goto L19
        L5c:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.google.protobuf.c.decodeUnknownField(r2, r3, r4, r5, r6, r7)
            goto L5a
        L66:
            int r13 = com.google.protobuf.c.skipField(r13, r12, r4, r14, r15)
            goto L19
        L6b:
            r13 = 0
            r3 = r0
        L6d:
            if (r4 >= r14) goto Lcb
            int r4 = com.google.protobuf.c.decodeVarint32(r12, r4, r15)
            int r6 = r15.int1
            int r7 = com.google.protobuf.WireFormat.getTagFieldNumber(r6)
            int r8 = com.google.protobuf.WireFormat.getTagWireType(r6)
            if (r7 == r5) goto Lac
            r9 = 3
            if (r7 == r9) goto L83
            goto Lc1
        L83:
            if (r2 == 0) goto La1
            com.google.protobuf.h0 r6 = com.google.protobuf.h0.getInstance()
            com.google.protobuf.MessageLite r7 = r2.getMessageDefaultInstance()
            java.lang.Class r7 = r7.getClass()
            com.google.protobuf.l0 r6 = r6.schemaFor(r7)
            int r4 = com.google.protobuf.c.decodeMessageField(r6, r12, r4, r14, r15)
            com.google.protobuf.GeneratedMessageLite$b r6 = r2.descriptor
            java.lang.Object r7 = r15.object1
            r11.setField(r6, r7)
            goto L6d
        La1:
            if (r8 != r5) goto Lc1
            int r4 = com.google.protobuf.c.decodeBytes(r12, r4, r15)
            java.lang.Object r3 = r15.object1
            com.google.protobuf.ByteString r3 = (com.google.protobuf.ByteString) r3
            goto L6d
        Lac:
            if (r8 != 0) goto Lc1
            int r4 = com.google.protobuf.c.decodeVarint32(r12, r4, r15)
            int r13 = r15.int1
            com.google.protobuf.j<?> r2 = r10.extensionSchema
            com.google.protobuf.ExtensionRegistryLite r6 = r15.extensionRegistry
            com.google.protobuf.MessageLite r7 = r10.defaultInstance
            java.lang.Object r2 = r2.findExtensionByNumber(r6, r7, r13)
            com.google.protobuf.GeneratedMessageLite$GeneratedExtension r2 = (com.google.protobuf.GeneratedMessageLite.GeneratedExtension) r2
            goto L6d
        Lc1:
            int r7 = com.google.protobuf.WireFormat.MESSAGE_SET_ITEM_END_TAG
            if (r6 != r7) goto Lc6
            goto Lcb
        Lc6:
            int r4 = com.google.protobuf.c.skipField(r6, r12, r4, r14, r15)
            goto L6d
        Lcb:
            if (r3 == 0) goto Ld4
            int r13 = com.google.protobuf.WireFormat.makeTag(r13, r5)
            r1.storeField(r13, r3)
        Ld4:
            r13 = r4
            goto L19
        Ld7:
            if (r13 != r14) goto Lda
            return
        Lda:
            com.google.protobuf.InvalidProtocolBufferException r11 = com.google.protobuf.InvalidProtocolBufferException.parseFailure()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.b0.mergeFrom(java.lang.Object, byte[], int, int, com.google.protobuf.c$b):void");
    }

    @Override // com.google.protobuf.l0
    public void mergeFrom(T t10, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t10, k0Var, extensionRegistryLite);
    }
}
