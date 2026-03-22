package com.mbridge.msdk.tracker.network;

import com.mbridge.msdk.tracker.network.b;
/* compiled from: Response.java */
/* loaded from: classes6.dex */
public class v<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f30391a;

    /* renamed from: b  reason: collision with root package name */
    public final b.a f30392b;

    /* renamed from: c  reason: collision with root package name */
    public final b0 f30393c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f30394d;

    /* compiled from: Response.java */
    /* loaded from: classes6.dex */
    public interface a {
        void a(b0 b0Var);
    }

    /* compiled from: Response.java */
    /* loaded from: classes6.dex */
    public interface b<T> {
        void a(T t10);
    }

    private v(T t10, b.a aVar) {
        this.f30394d = false;
        this.f30391a = t10;
        this.f30392b = aVar;
        this.f30393c = null;
    }

    public static <T> v<T> a(T t10, b.a aVar) {
        return new v<>(t10, aVar);
    }

    public static <T> v<T> a(b0 b0Var) {
        return new v<>(b0Var);
    }

    public boolean a() {
        return this.f30393c == null;
    }

    private v(b0 b0Var) {
        this.f30394d = false;
        this.f30391a = null;
        this.f30392b = null;
        this.f30393c = b0Var;
    }
}
