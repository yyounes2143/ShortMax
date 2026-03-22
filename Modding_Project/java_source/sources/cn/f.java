package cn;

import android.os.Looper;
/* compiled from: BackgroundThreadStateHandler.java */
/* loaded from: classes8.dex */
public final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final n f3580a;

    /* renamed from: b  reason: collision with root package name */
    private final n f3581b;

    /* renamed from: c  reason: collision with root package name */
    private final a<T> f3582c;

    /* renamed from: d  reason: collision with root package name */
    private T f3583d;

    /* renamed from: e  reason: collision with root package name */
    private T f3584e;

    /* renamed from: f  reason: collision with root package name */
    private int f3585f;

    /* compiled from: BackgroundThreadStateHandler.java */
    /* loaded from: classes8.dex */
    public interface a<T> {
        void a(T t10, T t11);
    }

    public f(T t10, Looper looper, Looper looper2, h hVar, a<T> aVar) {
        this.f3580a = hVar.createHandler(looper, null);
        this.f3581b = hVar.createHandler(looper2, null);
        this.f3583d = t10;
        this.f3584e = t10;
        this.f3582c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void e(Object obj) {
        if (this.f3585f == 0) {
            k(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void f(Object obj) {
        int i10 = this.f3585f - 1;
        this.f3585f = i10;
        if (i10 == 0) {
            k(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(h7.e eVar) {
        final T t10 = (T) eVar.apply(this.f3584e);
        this.f3584e = t10;
        this.f3581b.post(new Runnable() { // from class: cn.e
            @Override // java.lang.Runnable
            public final void run() {
                f.this.f(t10);
            }
        });
    }

    private void k(T t10) {
        T t11 = this.f3583d;
        this.f3583d = t10;
        if (!t11.equals(t10)) {
            this.f3582c.a(t11, t10);
        }
    }

    public T d() {
        boolean z10;
        Looper myLooper = Looper.myLooper();
        if (myLooper == this.f3581b.getLooper()) {
            return this.f3583d;
        }
        if (myLooper == this.f3580a.getLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        return this.f3584e;
    }

    public void h(Runnable runnable) {
        this.f3580a.post(runnable);
    }

    public void i(final T t10) {
        this.f3584e = t10;
        this.f3581b.post(new Runnable() { // from class: cn.c
            @Override // java.lang.Runnable
            public final void run() {
                f.this.e(t10);
            }
        });
    }

    public void j(h7.e<T, T> eVar, final h7.e<T, T> eVar2) {
        boolean z10;
        if (Looper.myLooper() == this.f3581b.getLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f3585f++;
        this.f3580a.post(new Runnable() { // from class: cn.d
            @Override // java.lang.Runnable
            public final void run() {
                f.this.g(eVar2);
            }
        });
        k(eVar.apply(this.f3583d));
    }
}
