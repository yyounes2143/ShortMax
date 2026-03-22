package com.facebook.datasource;
/* compiled from: BaseDataSubscriber.java */
/* loaded from: classes3.dex */
public abstract class a<T> implements d<T> {
    @Override // com.facebook.datasource.d
    public void c(b<T> bVar) {
        try {
            e(bVar);
        } finally {
            bVar.close();
        }
    }

    @Override // com.facebook.datasource.d
    public void d(b<T> bVar) {
        boolean e10 = bVar.e();
        try {
            f(bVar);
        } finally {
            if (e10) {
                bVar.close();
            }
        }
    }

    protected abstract void e(b<T> bVar);

    protected abstract void f(b<T> bVar);

    @Override // com.facebook.datasource.d
    public void a(b<T> bVar) {
    }

    @Override // com.facebook.datasource.d
    public void b(b<T> bVar) {
    }
}
