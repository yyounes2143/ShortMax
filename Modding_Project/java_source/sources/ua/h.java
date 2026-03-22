package ua;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: d  reason: collision with root package name */
    private static final h f67903d = new h();

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f67905b = va.a.a();

    /* renamed from: a  reason: collision with root package name */
    private final Executor f67904a = new a();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f67906c = va.a.b();

    /* loaded from: classes5.dex */
    static final class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    }

    private h() {
    }

    public static Executor a() {
        return f67903d.f67906c;
    }
}
