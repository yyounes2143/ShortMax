package io.bidmachine.measurer;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.iab.omid.library.appodeal.adsession.AdEvents;
import com.iab.omid.library.appodeal.adsession.AdSession;
import com.iab.omid.library.appodeal.adsession.AdSessionConfiguration;
import com.iab.omid.library.appodeal.adsession.AdSessionContext;
import com.iab.omid.library.appodeal.adsession.ErrorType;
import com.iab.omid.library.appodeal.adsession.media.InteractionType;
import com.iab.omid.library.appodeal.adsession.media.MediaEvents;
import io.bidmachine.iab.measurer.AdMeasurer;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public abstract class OMSDKAdMeasurer<AdView extends View> implements AdMeasurer<AdView> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f55066a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f55067b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AdSession f55068c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private AdEvents f55069d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private MediaEvents f55070e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<View> f55071f;

    /* loaded from: classes7.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.resume();
                    OMSDKAdMeasurer.this.r("onMediaResumed");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f55073a;

        b(float f10) {
            this.f55073a = f10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.volumeChange(this.f55073a);
                    OMSDKAdMeasurer.this.r("onMediaVolumeChanged");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.skipped();
                    OMSDKAdMeasurer.this.r("onMediaSkipped");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                OMSDKAdMeasurer.this.f55070e = null;
                OMSDKAdMeasurer.this.f55069d = null;
                if (OMSDKAdMeasurer.this.f55068c != null) {
                    OMSDKAdMeasurer.this.f55068c.finish();
                }
                OMSDKAdMeasurer.this.r("destroy");
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ErrorType f55077a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f55078b;

        e(ErrorType errorType, String str) {
            this.f55077a = errorType;
            this.f55078b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55068c != null) {
                    OMSDKAdMeasurer.this.f55068c.error(this.f55077a, this.f55078b);
                    OMSDKAdMeasurer.this.r("error");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f55080a;

        f(ViewGroup viewGroup) {
            this.f55080a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55068c != null) {
                    OMSDKAdMeasurer oMSDKAdMeasurer = OMSDKAdMeasurer.this;
                    oMSDKAdMeasurer.u(oMSDKAdMeasurer.f55068c, this.f55080a);
                } else {
                    OMSDKAdMeasurer.this.f55071f = new WeakReference(this.f55080a);
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55069d != null) {
                    OMSDKAdMeasurer.this.f55069d.impressionOccurred();
                    OMSDKAdMeasurer.this.r("onAdShown");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.adUserInteraction(InteractionType.CLICK);
                    OMSDKAdMeasurer.this.r("onAdClicked");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f55084a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f55085b;

        i(float f10, float f11) {
            this.f55084a = f10;
            this.f55085b = f11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.start(this.f55084a / 1000.0f, this.f55085b);
                    OMSDKAdMeasurer.this.r("onMediaStarted");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.firstQuartile();
                    OMSDKAdMeasurer.this.r("onMediaFirstQuartile");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.midpoint();
                    OMSDKAdMeasurer.this.r("onMediaMidpoint");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.thirdQuartile();
                    OMSDKAdMeasurer.this.r("onMediaThirdQuartile");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.complete();
                    OMSDKAdMeasurer.this.r("onMediaCompleted");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMSDKAdMeasurer.this.f55070e != null) {
                    OMSDKAdMeasurer.this.f55070e.pause();
                    OMSDKAdMeasurer.this.r("onMediaPaused");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    public OMSDKAdMeasurer() {
        this(false);
    }

    private void k(@NonNull ErrorType errorType, @NonNull String str) {
        io.bidmachine.core.g.Z(new e(errorType, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    public void u(@NonNull AdSession adSession, @NonNull View view) throws Throwable {
        adSession.registerAdView(view);
        r("registerAdView");
    }

    @UiThread
    private void v(@NonNull AdSession adSession) throws Throwable {
        View view;
        WeakReference<View> weakReference = this.f55071f;
        if (weakReference != null) {
            view = weakReference.get();
        } else {
            view = null;
        }
        if (view != null) {
            u(adSession, view);
        }
        this.f55071f = null;
    }

    public void D0() {
        io.bidmachine.core.g.Z(new a());
    }

    public void F0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        io.bidmachine.core.g.Z(new b(f10));
    }

    public void b0() {
        io.bidmachine.core.g.Z(new j());
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void c(@NonNull qm.a aVar) {
        n(aVar.d());
    }

    public void c0() {
        io.bidmachine.core.g.Z(new n());
    }

    public void d0() {
        io.bidmachine.core.g.Z(new m());
    }

    public void e0() {
        io.bidmachine.core.g.Z(new k());
    }

    public void j() {
        io.bidmachine.core.g.Z(new d());
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void l(@NonNull ViewGroup viewGroup) {
        io.bidmachine.core.g.Z(new f(viewGroup));
    }

    public void m0() {
        io.bidmachine.core.g.Z(new l());
    }

    public void n(@NonNull String str) {
        k(ErrorType.GENERIC, str);
    }

    public void n0() {
        io.bidmachine.core.g.Z(new c());
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void onAdClicked() {
        io.bidmachine.core.g.Z(new h());
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void onAdShown() {
        if (this.f55066a) {
            return;
        }
        y();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean q() {
        if (this.f55068c != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r(@NonNull String str) {
        io.bidmachine.core.a.c("AdMeasurer", str);
    }

    @UiThread
    protected abstract void s(@NonNull AdEvents adEvents) throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    @UiThread
    public void t(@NonNull AdSessionConfiguration adSessionConfiguration, @NonNull AdSessionContext adSessionContext) {
        try {
            AdSession createAdSession = AdSession.createAdSession(adSessionConfiguration, adSessionContext);
            this.f55068c = createAdSession;
            this.f55069d = AdEvents.createAdEvents(createAdSession);
            if (adSessionConfiguration.isNativeMediaEventsOwner()) {
                this.f55070e = MediaEvents.createMediaEvents(this.f55068c);
            }
            v(this.f55068c);
            this.f55068c.start();
            s(this.f55069d);
            r("prepareAdSession");
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    public void y() {
        if (!this.f55067b.compareAndSet(false, true)) {
            return;
        }
        io.bidmachine.core.g.Z(new g());
    }

    public void z0(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
        io.bidmachine.core.g.Z(new i(f10, f11));
    }

    public OMSDKAdMeasurer(boolean z10) {
        this.f55066a = z10;
        this.f55067b = new AtomicBoolean(false);
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void m(@NonNull AdView adview) {
    }

    @Override // io.bidmachine.iab.measurer.AdMeasurer
    public void t0(@NonNull AdView adview) {
    }
}
