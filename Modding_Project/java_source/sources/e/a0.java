package e;

import ca.f;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes.dex */
public final class a0 extends VideoController.VideoLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ca.f f50612a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ca.d f50613b;

    public a0(ca.d dVar, ca.f fVar) {
        this.f50612a = fVar;
        this.f50613b = dVar;
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        f.InterfaceC0089f o10 = this.f50612a.o();
        if (o10 != null) {
            o10.b(this.f50613b);
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        f.InterfaceC0089f o10 = this.f50612a.o();
        if (o10 != null) {
            o10.a(this.f50613b);
        }
    }
}
