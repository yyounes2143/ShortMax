package xn;

import cn.l;
import java.util.concurrent.Executor;
/* compiled from: ReleasableExecutor.java */
/* loaded from: classes8.dex */
public interface a extends Executor {

    /* compiled from: ReleasableExecutor.java */
    /* renamed from: xn.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    class C0969a implements a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f70509a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l f70510b;

        C0969a(Executor executor, l lVar) {
            this.f70509a = executor;
            this.f70510b = lVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f70509a.execute(runnable);
        }

        @Override // xn.a
        public void release() {
            this.f70510b.accept(this.f70509a);
        }
    }

    static <T extends Executor> a r(T t10, l<T> lVar) {
        return new C0969a(t10, lVar);
    }

    void release();
}
