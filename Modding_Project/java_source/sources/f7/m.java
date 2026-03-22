package f7;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class m extends j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f51641b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ j f51642c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ t f51643d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(t tVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, j jVar) {
        super(taskCompletionSource);
        this.f51641b = taskCompletionSource2;
        this.f51642c = jVar;
        this.f51643d = tVar;
    }

    @Override // f7.j
    public final void a() {
        Object obj;
        AtomicInteger atomicInteger;
        i iVar;
        obj = this.f51643d.f51655f;
        synchronized (obj) {
            try {
                t.n(this.f51643d, this.f51641b);
                atomicInteger = this.f51643d.f51660k;
                if (atomicInteger.getAndIncrement() > 0) {
                    iVar = this.f51643d.f51651b;
                    iVar.c("Already connected to the service.", new Object[0]);
                }
                t.p(this.f51643d, this.f51642c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
