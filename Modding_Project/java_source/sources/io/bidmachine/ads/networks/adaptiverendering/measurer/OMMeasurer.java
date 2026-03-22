package io.bidmachine.ads.networks.adaptiverendering.measurer;

import android.os.Handler;
import android.view.View;
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
import fr.j;
import io.bidmachine.core.g;
import io.bidmachine.rendering.measurer.Measurer;
import java.util.concurrent.atomic.AtomicBoolean;
import rq.t;
/* loaded from: classes7.dex */
public abstract class OMMeasurer<AdView extends View> implements Measurer<AdView> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final j f53608a = new j("OMMeasurer");
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f53609b = new AtomicBoolean(false);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f53610c = new AtomicBoolean(false);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private AdSession f53611d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private AdEvents f53612e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    protected MediaEvents f53613f;

    /* loaded from: classes7.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMMeasurer.this.g() && OMMeasurer.this.f53612e != null) {
                    OMMeasurer.this.f53612e.impressionOccurred();
                    OMMeasurer.this.h("onAdShown");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MediaEvents mediaEvents = OMMeasurer.this.f53613f;
                if (mediaEvents != null) {
                    mediaEvents.adUserInteraction(InteractionType.CLICK);
                    OMMeasurer.this.h("onAdClicked");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f53616a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Handler f53617b;

        c(Runnable runnable, Handler handler) {
            this.f53616a = runnable;
            this.f53617b = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                OMMeasurer oMMeasurer = OMMeasurer.this;
                oMMeasurer.f53613f = null;
                oMMeasurer.f53612e = null;
                if (OMMeasurer.this.f53611d != null) {
                    OMMeasurer.this.f53611d.finish();
                }
                OMMeasurer.this.h("destroy");
                Runnable runnable = this.f53616a;
                if (runnable != null) {
                    this.f53617b.postDelayed(runnable, OMMeasurer.this.f());
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMMeasurer.this.g() && OMMeasurer.this.f53612e != null) {
                    OMMeasurer oMMeasurer = OMMeasurer.this;
                    oMMeasurer.i(oMMeasurer.f53612e);
                    OMMeasurer.this.h("onAdLoaded");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ErrorType f53620a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f53621b;

        e(ErrorType errorType, String str) {
            this.f53620a = errorType;
            this.f53621b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMMeasurer.this.f53611d != null) {
                    OMMeasurer.this.f53611d.error(this.f53620a, this.f53621b);
                    OMMeasurer.this.h("error");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    /* loaded from: classes7.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f53623a;

        f(View view) {
            this.f53623a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (OMMeasurer.this.f53611d != null) {
                    OMMeasurer.this.f53611d.registerAdView(this.f53623a);
                    OMMeasurer.this.h("registerView");
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    private void n(@NonNull ErrorType errorType, @NonNull String str) {
        g.Z(new e(errorType, str));
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void R(@Nullable Runnable runnable) {
        g.Z(new c(runnable, g.m()));
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void a(@NonNull t tVar) {
        q(tVar.b());
    }

    protected long f() {
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean g() {
        if (this.f53611d != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(@NonNull String str) {
        io.bidmachine.core.a.c(this.f53608a, str);
    }

    @UiThread
    protected abstract void i(@NonNull AdEvents adEvents) throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    @UiThread
    public void j(@NonNull AdSessionConfiguration adSessionConfiguration, @NonNull AdSessionContext adSessionContext) {
        try {
            AdSession createAdSession = AdSession.createAdSession(adSessionConfiguration, adSessionContext);
            this.f53611d = createAdSession;
            this.f53612e = AdEvents.createAdEvents(createAdSession);
            if (adSessionConfiguration.isNativeMediaEventsOwner()) {
                this.f53613f = MediaEvents.createMediaEvents(this.f53611d);
            }
            this.f53611d.start();
            h("prepareAdSession");
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(@NonNull View view) {
        g.Z(new f(view));
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onClicked() {
        g.Z(new b());
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void onShown() {
        if (!this.f53610c.compareAndSet(false, true)) {
            return;
        }
        g.Z(new a());
    }

    public void q(@NonNull String str) {
        n(ErrorType.GENERIC, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r() {
        if (!this.f53609b.compareAndSet(false, true)) {
            return;
        }
        g.Z(new d());
    }

    @Override // io.bidmachine.rendering.measurer.Measurer
    public void A0(@NonNull AdView adview) {
    }
}
