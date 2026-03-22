package va;

import java.util.concurrent.Executor;
import ua.f;
/* loaded from: classes5.dex */
public final class d<TResult> implements ua.b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private ua.e<TResult> f68857a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f68858b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f68859c = new Object();

    /* loaded from: classes5.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f68860a;

        a(f fVar) {
            this.f68860a = fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (d.this.f68859c) {
                try {
                    if (d.this.f68857a != null) {
                        d.this.f68857a.onSuccess(this.f68860a.e());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Executor executor, ua.e<TResult> eVar) {
        this.f68857a = eVar;
        this.f68858b = executor;
    }

    @Override // ua.b
    public final void onComplete(f<TResult> fVar) {
        if (fVar.g() && !fVar.f()) {
            this.f68858b.execute(new a(fVar));
        }
    }
}
