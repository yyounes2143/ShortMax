package com.google.protobuf;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnknownFieldSchema.java */
/* loaded from: classes5.dex */
public abstract class q0<T, B> {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    private final void mergeFrom(B b10, k0 k0Var, int i10) throws IOException {
        while (k0Var.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b10, k0Var, i10)) {
        }
    }

    abstract void addFixed32(B b10, int i10, int i11);

    abstract void addFixed64(B b10, int i10, long j10);

    abstract void addGroup(B b10, int i10, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void addLengthDelimited(B b10, int i10, ByteString byteString);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void addVarint(B b10, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B getBuilderFromMessage(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T getFromMessage(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getSerializedSize(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getSerializedSizeAsMessageSet(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void makeImmutable(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T merge(T t10, T t11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean mergeOneFieldFrom(B b10, k0 k0Var, int i10) throws IOException {
        int tag = k0Var.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType != 0) {
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    if (tagWireType != 3) {
                        if (tagWireType != 4) {
                            if (tagWireType == 5) {
                                addFixed32(b10, tagFieldNumber, k0Var.readFixed32());
                                return true;
                            }
                            throw InvalidProtocolBufferException.invalidWireType();
                        }
                        return false;
                    }
                    B newBuilder = newBuilder();
                    int makeTag = WireFormat.makeTag(tagFieldNumber, 4);
                    int i11 = i10 + 1;
                    if (i11 < recursionLimit) {
                        mergeFrom(newBuilder, k0Var, i11);
                        if (makeTag == k0Var.getTag()) {
                            addGroup(b10, tagFieldNumber, toImmutable(newBuilder));
                            return true;
                        }
                        throw InvalidProtocolBufferException.invalidEndTag();
                    }
                    throw InvalidProtocolBufferException.recursionLimitExceeded();
                }
                addLengthDelimited(b10, tagFieldNumber, k0Var.readBytes());
                return true;
            }
            addFixed64(b10, tagFieldNumber, k0Var.readFixed64());
            return true;
        }
        addVarint(b10, tagFieldNumber, k0Var.readInt64());
        return true;
    }

    abstract B newBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setBuilderToMessage(Object obj, B b10);

    public void setRecursionLimit(int i10) {
        recursionLimit = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setToMessage(Object obj, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean shouldDiscardUnknownFields(k0 k0Var);

    abstract T toImmutable(B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeAsMessageSetTo(T t10, Writer writer) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeTo(T t10, Writer writer) throws IOException;
}
