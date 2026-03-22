package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.iab.mraid.MraidType;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
/* compiled from: MraidFullScreenAd.java */
/* loaded from: classes7.dex */
class g extends xq.h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MraidType f53844a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private io.bidmachine.iab.mraid.e f53845b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private MraidOMSDKAdMeasurer f53846c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MraidFullScreenAd.java */
    /* loaded from: classes7.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m f53847a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f53848b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ xq.i f53849c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f53850d;

        a(m mVar, Context context, xq.i iVar, String str) {
            this.f53847a = mVar;
            this.f53848b = context;
            this.f53849c = iVar;
            this.f53850d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                g.this.f53845b = io.bidmachine.iab.mraid.e.u().e(this.f53847a.f53865g).m(this.f53847a.f53866h).g(this.f53847a.f53867i).b(this.f53847a.f53863e).k(new l(this.f53848b, this.f53849c, g.this.f53846c)).p(this.f53847a.f53868j).q(this.f53847a.f53869k).i(this.f53847a.f53871m).n(this.f53847a.f53870l).f(this.f53847a.f53872n).h(this.f53847a.f53873o).o(this.f53847a.f53874p).c(g.this.f53846c).a(this.f53848b);
                g.this.f53845b.t(this.f53850d);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                this.f53849c.onAdLoadFailed(fr.a.l("Exception loading MRAID fullscreen object", th2));
            }
        }
    }

    /* compiled from: MraidFullScreenAd.java */
    /* loaded from: classes7.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                g.this.p();
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(@NonNull MraidType mraidType) {
        this.f53844a = mraidType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        io.bidmachine.iab.mraid.e eVar = this.f53845b;
        if (eVar != null) {
            eVar.n();
            this.f53845b = null;
        }
    }

    @Override // xq.b
    public void d() {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.f53846c;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.R(new b());
            this.f53846c = null;
            return;
        }
        p();
    }

    @Override // xq.h
    public void k(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        io.bidmachine.iab.mraid.e eVar = this.f53845b;
        if (eVar == null) {
            iVar.onAdShowFailed(fr.a.i("MRAID fullscreen object is null"));
        } else if (!eVar.q()) {
            iVar.onAdShowFailed(fr.a.i("MRAID fullscreen object is not ready"));
        } else if (this.f53845b.s()) {
            iVar.onAdShowFailed(fr.a.i("MRAID fullscreen object is already was shown"));
        } else {
            this.f53845b.w(contextProvider.getContext(), this.f53844a);
        }
    }

    @Override // xq.b
    /* renamed from: q */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @NonNull xq.j jVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        String str;
        m mVar = new m(kVar);
        if (!mVar.a(iVar)) {
            return;
        }
        Context applicationContext = contextProvider.getApplicationContext();
        if (mVar.f53864f) {
            MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = new MraidOMSDKAdMeasurer();
            this.f53846c = mraidOMSDKAdMeasurer;
            str = mraidOMSDKAdMeasurer.p(mVar.f53860b);
        } else {
            str = mVar.f53860b;
        }
        io.bidmachine.core.g.Z(new a(mVar, applicationContext, iVar, str));
    }
}
