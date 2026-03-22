package gu;

import fu.c0;
/* compiled from: Result.java */
/* loaded from: classes8.dex */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c0<T> f52581a;

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f52582b;

    private a(c0<T> c0Var, Throwable th2) {
        this.f52581a = c0Var;
        this.f52582b = th2;
    }

    public static <T> a<T> a(Throwable th2) {
        if (th2 != null) {
            return new a<>(null, th2);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> a<T> b(c0<T> c0Var) {
        if (c0Var != null) {
            return new a<>(c0Var, null);
        }
        throw new NullPointerException("response == null");
    }

    public String toString() {
        if (this.f52582b != null) {
            return "Result{isError=true, error=\"" + this.f52582b + "\"}";
        }
        return "Result{isError=false, response=" + this.f52581a + '}';
    }
}
