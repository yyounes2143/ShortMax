package f7;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class r implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t f51648a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r(t tVar, s sVar) {
        this.f51648a = tVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        t.f(this.f51648a).c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f51648a.c().post(new p(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        t.f(this.f51648a).c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f51648a.c().post(new q(this));
    }
}
