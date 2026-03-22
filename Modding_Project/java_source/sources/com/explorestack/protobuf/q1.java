package com.explorestack.protobuf;

import com.explorestack.protobuf.g;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Schema.java */
/* loaded from: classes3.dex */
public interface q1<T> {
    void a(T t10, byte[] bArr, int i10, int i11, g.b bVar) throws IOException;

    void b(T t10, Writer writer) throws IOException;

    void c(T t10, o1 o1Var, y yVar) throws IOException;

    boolean equals(T t10, T t11);

    int getSerializedSize(T t10);

    int hashCode(T t10);

    boolean isInitialized(T t10);

    void makeImmutable(T t10);

    void mergeFrom(T t10, T t11);

    T newInstance();
}
