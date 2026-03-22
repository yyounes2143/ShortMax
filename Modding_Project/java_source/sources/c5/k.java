package c5;

import java.util.concurrent.Executor;
/* compiled from: ExecutionModule_ExecutorFactory.java */
/* loaded from: classes4.dex */
public final class k implements e5.b<Executor> {

    /* compiled from: ExecutionModule_ExecutorFactory.java */
    /* loaded from: classes4.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final k f3126a = new k();
    }

    public static k a() {
        return a.f3126a;
    }

    public static Executor b() {
        return (Executor) e5.d.d(j.a());
    }

    @Override // ls.a
    /* renamed from: c */
    public Executor get() {
        return b();
    }
}
