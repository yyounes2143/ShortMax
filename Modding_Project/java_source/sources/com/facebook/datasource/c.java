package com.facebook.datasource;

import k2.k;
/* compiled from: DataSources.java */
/* loaded from: classes3.dex */
public class c {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: DataSources.java */
    /* loaded from: classes3.dex */
    class a<T> implements k<b<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f15347a;

        a(Throwable th2) {
            this.f15347a = th2;
        }

        @Override // k2.k
        /* renamed from: a */
        public b<T> get() {
            return c.b(this.f15347a);
        }
    }

    public static <T> k<b<T>> a(Throwable th2) {
        return new a(th2);
    }

    public static <T> b<T> b(Throwable th2) {
        h v10 = h.v();
        v10.n(th2);
        return v10;
    }
}
