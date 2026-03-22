package com.google.protobuf;

import java.io.IOException;
/* compiled from: UnknownFieldSetLiteSchema.java */
/* loaded from: classes5.dex */
class r0 extends q0<UnknownFieldSetLite, UnknownFieldSetLite> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void makeImmutable(Object obj) {
        getFromMessage(obj).makeImmutable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public boolean shouldDiscardUnknownFields(k0 k0Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void addFixed32(UnknownFieldSetLite unknownFieldSetLite, int i10, int i11) {
        unknownFieldSetLite.storeField(WireFormat.makeTag(i10, 5), Integer.valueOf(i11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void addFixed64(UnknownFieldSetLite unknownFieldSetLite, int i10, long j10) {
        unknownFieldSetLite.storeField(WireFormat.makeTag(i10, 1), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void addGroup(UnknownFieldSetLite unknownFieldSetLite, int i10, UnknownFieldSetLite unknownFieldSetLite2) {
        unknownFieldSetLite.storeField(WireFormat.makeTag(i10, 3), unknownFieldSetLite2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void addLengthDelimited(UnknownFieldSetLite unknownFieldSetLite, int i10, ByteString byteString) {
        unknownFieldSetLite.storeField(WireFormat.makeTag(i10, 2), byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void addVarint(UnknownFieldSetLite unknownFieldSetLite, int i10, long j10) {
        unknownFieldSetLite.storeField(WireFormat.makeTag(i10, 0), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.protobuf.q0
    public UnknownFieldSetLite getBuilderFromMessage(Object obj) {
        UnknownFieldSetLite fromMessage = getFromMessage(obj);
        if (fromMessage == UnknownFieldSetLite.getDefaultInstance()) {
            UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
            setToMessage(obj, newInstance);
            return newInstance;
        }
        return fromMessage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.protobuf.q0
    public UnknownFieldSetLite getFromMessage(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public int getSerializedSize(UnknownFieldSetLite unknownFieldSetLite) {
        return unknownFieldSetLite.getSerializedSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public int getSerializedSizeAsMessageSet(UnknownFieldSetLite unknownFieldSetLite) {
        return unknownFieldSetLite.getSerializedSizeAsMessageSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public UnknownFieldSetLite merge(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
        if (UnknownFieldSetLite.getDefaultInstance().equals(unknownFieldSetLite2)) {
            return unknownFieldSetLite;
        }
        if (UnknownFieldSetLite.getDefaultInstance().equals(unknownFieldSetLite)) {
            return UnknownFieldSetLite.mutableCopyOf(unknownFieldSetLite, unknownFieldSetLite2);
        }
        return unknownFieldSetLite.mergeFrom(unknownFieldSetLite2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.protobuf.q0
    public UnknownFieldSetLite newBuilder() {
        return UnknownFieldSetLite.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void setBuilderToMessage(Object obj, UnknownFieldSetLite unknownFieldSetLite) {
        setToMessage(obj, unknownFieldSetLite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void setToMessage(Object obj, UnknownFieldSetLite unknownFieldSetLite) {
        ((GeneratedMessageLite) obj).unknownFields = unknownFieldSetLite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public UnknownFieldSetLite toImmutable(UnknownFieldSetLite unknownFieldSetLite) {
        unknownFieldSetLite.makeImmutable();
        return unknownFieldSetLite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void writeAsMessageSetTo(UnknownFieldSetLite unknownFieldSetLite, Writer writer) throws IOException {
        unknownFieldSetLite.writeAsMessageSetTo(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.q0
    public void writeTo(UnknownFieldSetLite unknownFieldSetLite, Writer writer) throws IOException {
        unknownFieldSetLite.writeTo(writer);
    }
}
