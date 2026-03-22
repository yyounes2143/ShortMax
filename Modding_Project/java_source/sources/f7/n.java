package f7;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class n extends j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f51644b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(t tVar) {
        this.f51644b = tVar;
    }

    @Override // f7.j
    public final void a() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        i iVar;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        i iVar2;
        obj = this.f51644b.f51655f;
        synchronized (obj) {
            try {
                atomicInteger = this.f51644b.f51660k;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = this.f51644b.f51660k;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        iVar2 = this.f51644b.f51651b;
                        iVar2.c("Leaving the connection open for other ongoing calls.", new Object[0]);
                        return;
                    }
                }
                t tVar = this.f51644b;
                iInterface = tVar.f51662m;
                if (iInterface != null) {
                    iVar = tVar.f51651b;
                    iVar.c("Unbind from service.", new Object[0]);
                    t tVar2 = this.f51644b;
                    context = tVar2.f51650a;
                    serviceConnection = tVar2.f51661l;
                    context.unbindService(serviceConnection);
                    this.f51644b.f51656g = false;
                    this.f51644b.f51662m = null;
                    this.f51644b.f51661l = null;
                }
                this.f51644b.w();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
