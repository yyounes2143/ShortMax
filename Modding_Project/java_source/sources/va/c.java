package va;

import java.util.concurrent.Executor;
import ua.f;
/* loaded from: classes5.dex */
public final class c<TResult> implements ua.b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private ua.d f68852a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f68853b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f68854c = new Object();

    /* loaded from: classes5.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f68855a;

        a(f fVar) {
            this.f68855a = fVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (c.this.f68854c) {
                try {
                    if (c.this.f68852a != null) {
                        c.this.f68852a.onFailure(this.f68855a.d());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Executor executor, ua.d dVar) {
        this.f68852a = dVar;
        this.f68853b = executor;
    }

    @Override // ua.b
    public final void onComplete(f<TResult> fVar) {
        if (!fVar.g() && !fVar.f()) {
            this.f68853b.execute(new a(fVar));
        }
    }
}
