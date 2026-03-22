package com.facebook.datasource;
/* compiled from: SimpleDataSource.java */
/* loaded from: classes3.dex */
public class h<T> extends AbstractDataSource<T> {
    private h() {
    }

    public static <T> h<T> v() {
        return new h<>();
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean n(Throwable th2) {
        return super.n((Throwable) k2.h.g(th2));
    }
}
