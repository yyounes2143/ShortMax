package io.bidmachine.ads.networks.gam_dynamic;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import io.bidmachine.ads.networks.gam_dynamic.x;
import io.bidmachine.protobuf.Waterfall;
/* compiled from: InternalFullscreenAd.java */
/* loaded from: classes7.dex */
public abstract class x extends InternalAd {
    public x(@NonNull hm.s sVar, @NonNull hm.u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar) {
        super(sVar, uVar, adsFormat, adUnit, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(Activity activity, hm.o oVar) {
        try {
            J(InternalAd.Status.Showing);
            N(activity, oVar);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            oVar.onAdShowFailed(fr.a.l("Exception showing InternalAd object", th2));
        }
    }

    public final void M(@NonNull final Activity activity, @NonNull final hm.o oVar) {
        io.bidmachine.core.g.Z(new Runnable() { // from class: hm.n
            @Override // java.lang.Runnable
            public final void run() {
                x.this.L(activity, oVar);
            }
        });
    }

    @UiThread
    protected abstract void N(@NonNull Activity activity, @NonNull hm.o oVar) throws Throwable;
}
