package va;

import java.util.concurrent.Executor;
import ua.f;
/* loaded from: classes5.dex */
public final class b<TResult> implements ua.b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private ua.c<TResult> f68847a;

    /* renamed from: b  reason: collision with root package name */
    Executor f68848b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f68849c = new Object();

    /* loaded from: classes5.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f68850a;

        a(f fVar) {
            this.f68850a = fVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (b.this.f68849c) {
                try {
                    if (b.this.f68847a != null) {
                        b.this.f68847a.onComplete(this.f68850a);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Executor executor, ua.c<TResult> cVar) {
        this.f68847a = cVar;
        this.f68848b = executor;
    }

    @Override // ua.b
    public final void onComplete(f<TResult> fVar) {
        this.f68848b.execute(new a(fVar));
    }
}
