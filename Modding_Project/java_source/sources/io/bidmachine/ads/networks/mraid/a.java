package io.bidmachine.ads.networks.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.mraid.MraidView;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: MraidBannerAd.java */
/* loaded from: classes7.dex */
class a extends xq.e {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f53830a = new AtomicBoolean(false);
    @Nullable
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    MraidView f53831b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private MraidOMSDKAdMeasurer f53832c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MraidBannerAd.java */
    /* renamed from: io.bidmachine.ads.networks.mraid.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public class RunnableC0782a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m f53833a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ xq.f f53834b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f53835c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f53836d;

        RunnableC0782a(m mVar, xq.f fVar, Context context, String str) {
            this.f53833a = mVar;
            this.f53834b = fVar;
            this.f53835c = context;
            this.f53836d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.f53831b = new MraidView.a().v(this.f53833a.f53865g).D(this.f53833a.f53866h).B(new f(this.f53834b)).t(a.this.f53832c).c(this.f53835c);
                a.this.f53831b.j0(this.f53836d);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
                this.f53834b.onAdLoadFailed(fr.a.l("Exception loading MRAID banner object", th2));
            }
        }
    }

    /* compiled from: MraidBannerAd.java */
    /* loaded from: classes7.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.l();
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        MraidView mraidView = this.f53831b;
        if (mraidView != null) {
            mraidView.T();
            this.f53831b = null;
        }
    }

    @Override // xq.b
    public void d() {
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.f53832c;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.R(new b());
            this.f53832c = null;
            return;
        }
        l();
    }

    @Override // xq.b
    public void h() {
        super.h();
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.f53832c;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.y();
        }
    }

    @Override // xq.p
    public void i(@Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        MraidView mraidView;
        super.i(rendererConfiguration);
        if (this.f53830a.compareAndSet(false, true) && (mraidView = this.f53831b) != null) {
            mraidView.p0(null);
        }
    }

    @Override // xq.b
    /* renamed from: m */
    public void b(@NonNull ContextProvider contextProvider, @NonNull xq.f fVar, @NonNull xq.g gVar, @NonNull xq.k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        VisibilitySource visibilitySource;
        String str;
        m mVar = new m(kVar);
        if (!mVar.a(fVar)) {
            return;
        }
        if (mVar.f53865g == CacheControl.FullLoad) {
            visibilitySource = VisibilitySource.BidMachine;
        } else {
            visibilitySource = VisibilitySource.All;
        }
        fVar.setVisibilitySource(visibilitySource);
        Context applicationContext = contextProvider.getApplicationContext();
        if (mVar.f53864f) {
            MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = new MraidOMSDKAdMeasurer(true);
            this.f53832c = mraidOMSDKAdMeasurer;
            str = mraidOMSDKAdMeasurer.p(mVar.f53860b);
        } else {
            str = mVar.f53860b;
        }
        io.bidmachine.core.g.Z(new RunnableC0782a(mVar, fVar, applicationContext, str));
    }
}
