package io.bidmachine.ads.networks.gam;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
/* compiled from: InternalGAMFullscreenAd.java */
/* loaded from: classes7.dex */
public abstract class h0 extends InternalGAMAd {
    public h0(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar) {
        super(jVar, adsFormat, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(Activity activity, i0 i0Var) {
        try {
            G(InternalGAMAd.Status.Showing);
            K(activity, i0Var);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            i0Var.onAdShowFailed(fr.a.l("Exception showing InternalGAM object", th2));
        }
    }

    public final void J(@NonNull final Activity activity, @NonNull final i0 i0Var) {
        io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.ads.networks.gam.g0
            @Override // java.lang.Runnable
            public final void run() {
                h0.this.I(activity, i0Var);
            }
        });
    }

    @UiThread
    protected abstract void K(@NonNull Activity activity, @NonNull i0 i0Var) throws Throwable;
}
