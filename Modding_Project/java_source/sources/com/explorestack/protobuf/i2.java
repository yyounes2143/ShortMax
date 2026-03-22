package com.explorestack.protobuf;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnknownFieldSchema.java */
/* loaded from: classes3.dex */
public abstract class i2<T, B> {
    abstract void a(B b10, int i10, int i11);

    abstract void b(B b10, int i10, long j10);

    abstract void c(B b10, int i10, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(B b10, int i10, ByteString byteString);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e(B b10, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B f(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T g(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int h(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int i(T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void j(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T k(T t10, T t11);

    final void l(B b10, o1 o1Var) throws IOException {
        while (o1Var.getFieldNumber() != Integer.MAX_VALUE && m(b10, o1Var)) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m(B b10, o1 o1Var) throws IOException {
        int tag = o1Var.getTag();
        int a10 = WireFormat.a(tag);
        int b11 = WireFormat.b(tag);
        if (b11 != 0) {
            if (b11 != 1) {
                if (b11 != 2) {
                    if (b11 != 3) {
                        if (b11 != 4) {
                            if (b11 == 5) {
                                a(b10, a10, o1Var.readFixed32());
                                return true;
                            }
                            throw InvalidProtocolBufferException.invalidWireType();
                        }
                        return false;
                    }
                    B n10 = n();
                    int c10 = WireFormat.c(a10, 4);
                    l(n10, o1Var);
                    if (c10 == o1Var.getTag()) {
                        c(b10, a10, r(n10));
                        return true;
                    }
                    throw InvalidProtocolBufferException.invalidEndTag();
                }
                d(b10, a10, o1Var.readBytes());
                return true;
            }
            b(b10, a10, o1Var.readFixed64());
            return true;
        }
        e(b10, a10, o1Var.readInt64());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B n();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void o(Object obj, B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void p(Object obj, T t10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean q(o1 o1Var);

    abstract T r(B b10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void s(T t10, Writer writer) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void t(T t10, Writer writer) throws IOException;
}
