package com.explorestack.protobuf;

import com.explorestack.protobuf.e0;
import com.explorestack.protobuf.e0.c;
import java.io.IOException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtensionSchema.java */
/* loaded from: classes3.dex */
public abstract class z<T extends e0.c<T>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a(Map.Entry<?, ?> entry);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object b(y yVar, MessageLite messageLite, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract e0<T> c(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract e0<T> d(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean e(MessageLite messageLite);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void f(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <UT, UB> UB g(o1 o1Var, Object obj, y yVar, e0<T> e0Var, UB ub2, i2<UT, UB> i2Var) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void h(o1 o1Var, Object obj, y yVar, e0<T> e0Var) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void i(ByteString byteString, Object obj, y yVar, e0<T> e0Var) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void j(Writer writer, Map.Entry<?, ?> entry) throws IOException;
}
