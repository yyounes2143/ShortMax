package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdsFormat;
import io.bidmachine.ExpirationHandler;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import io.bidmachine.protobuf.Waterfall;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes7.dex */
public abstract class InternalAd implements hm.j, ExpirationHandler.Listener {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53722a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final hm.u f53723b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AdsFormat f53724c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Waterfall.Configuration.AdUnit f53725d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final hm.k f53726e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final ExpirationHandler f53727f;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private WeakReference<hm.m> f53730i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private hm.l f53731j;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private volatile Status f53729h = Status.Idle;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Object> f53728g = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum Status {
        Idle,
        Loading,
        Loaded,
        Showing,
        Shown,
        Expired
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalAd(@NonNull hm.s sVar, @NonNull hm.u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar) {
        this.f53722a = new fr.j(sVar.getNetworkName() + "Ad");
        this.f53723b = uVar;
        this.f53724c = adsFormat;
        this.f53725d = adUnit;
        this.f53726e = kVar;
        this.f53727f = new ExpirationHandler(adUnit.getExpirationTime(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String s() {
        return String.format("destroy (%s)", hm.a.a(this.f53725d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String t() {
        return String.format("load (%s)", hm.a.a(this.f53725d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(Context context, hm.q qVar) {
        try {
            J(Status.Loading);
            B(context, qVar);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            qVar.b(this, fr.a.l("Exception loading InternalAd object", th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String v(Waterfall.Result.EstimatedPrice estimatedPrice) {
        return String.format("onAdLoaded (%s, %s)", hm.a.a(this.f53725d), hm.a.c(estimatedPrice));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String w() {
        return String.format("onAdShown (%s)", hm.a.a(this.f53725d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String x() {
        return String.format("onExpired (%s)", hm.a.a(this.f53725d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String y(Waterfall.Result.EstimatedPrice estimatedPrice) {
        return String.format("onPaidEvent (%s, %s)", hm.a.a(this.f53725d), hm.a.c(estimatedPrice));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        try {
            k();
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void A(@NonNull Context context, @NonNull final hm.q qVar) {
        io.bidmachine.core.a.b(this.f53722a, new hr.b() { // from class: hm.f
            @Override // hr.b
            public final Object get() {
                String t10;
                t10 = InternalAd.this.t();
                return t10;
            }
        });
        final Context applicationContext = context.getApplicationContext();
        io.bidmachine.core.g.Z(new Runnable() { // from class: hm.g
            @Override // java.lang.Runnable
            public final void run() {
                InternalAd.this.u(applicationContext, qVar);
            }
        });
    }

    @UiThread
    protected abstract void B(@NonNull Context context, @NonNull hm.q qVar) throws Throwable;

    public void C(@Nullable hm.l lVar) {
        final Waterfall.Result.EstimatedPrice estimatedPrice;
        this.f53731j = lVar;
        if (lVar != null) {
            estimatedPrice = lVar.b();
        } else {
            estimatedPrice = null;
        }
        io.bidmachine.core.a.b(this.f53722a, new hr.b() { // from class: hm.i
            @Override // hr.b
            public final Object get() {
                String v10;
                v10 = InternalAd.this.v(estimatedPrice);
                return v10;
            }
        });
        String c10 = fr.e.c(estimatedPrice);
        if (c10 != null) {
            I("gam_estimated_price", c10);
        }
        J(Status.Loaded);
        this.f53727f.start();
    }

    public void D() {
        io.bidmachine.core.a.b(this.f53722a, new hr.b() { // from class: hm.d
            @Override // hr.b
            public final Object get() {
                String w10;
                w10 = InternalAd.this.w();
                return w10;
            }
        });
        this.f53726e.a(this);
        J(Status.Shown);
        this.f53727f.stop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E(@NonNull Runnable runnable) {
        this.f53723b.execute(runnable);
    }

    public void F(@NonNull final Waterfall.Result.EstimatedPrice estimatedPrice) {
        io.bidmachine.core.a.b(this.f53722a, new hr.b() { // from class: hm.h
            @Override // hr.b
            public final Object get() {
                String y10;
                y10 = InternalAd.this.y(estimatedPrice);
                return y10;
            }
        });
        String c10 = fr.e.c(estimatedPrice);
        if (c10 != null) {
            I("gam_estimated_price", c10);
        }
        this.f53726e.d(this);
    }

    @VisibleForTesting
    void G() {
        this.f53727f.stop();
        io.bidmachine.core.g.Z(new Runnable() { // from class: hm.e
            @Override // java.lang.Runnable
            public final void run() {
                InternalAd.this.z();
            }
        });
    }

    public void H(@Nullable hm.m mVar) {
        this.f53730i = new WeakReference<>(mVar);
    }

    public void I(@NonNull String str, @NonNull Object obj) {
        this.f53728g.put(str, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(@NonNull Status status) {
        this.f53729h = status;
    }

    @Override // hm.j
    @NonNull
    public String getAdUnitId() {
        return m().getAdUnitId();
    }

    @Override // hm.j
    @NonNull
    public Map<String, Object> getCustomParamsMap() {
        return this.f53728g;
    }

    @Override // hm.j
    public double getPrice() {
        return m().getPrice();
    }

    public void i() {
        j(r());
    }

    @VisibleForTesting
    void j(boolean z10) {
        try {
            io.bidmachine.core.a.b(this.f53722a, new hr.b() { // from class: hm.c
                @Override // hr.b
                public final Object get() {
                    String s10;
                    s10 = InternalAd.this.s();
                    return s10;
                }
            });
            WeakReference<hm.m> weakReference = this.f53730i;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f53730i = null;
            if (z10) {
                G();
            }
            this.f53726e.c(this, z10);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    @UiThread
    protected abstract void k() throws Throwable;

    @Nullable
    public hm.m l() {
        WeakReference<hm.m> weakReference = this.f53730i;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NonNull
    public Waterfall.Configuration.AdUnit m() {
        return this.f53725d;
    }

    @NonNull
    public AdsFormat n() {
        return this.f53724c;
    }

    @Nullable
    public hm.l o() {
        return this.f53731j;
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        if (r()) {
            return;
        }
        io.bidmachine.core.a.b(this.f53722a, new hr.b() { // from class: hm.b
            @Override // hr.b
            public final Object get() {
                String x10;
                x10 = InternalAd.this.x();
                return x10;
            }
        });
        this.f53726e.b(this);
        J(Status.Expired);
        hm.m l10 = l();
        if (l10 != null) {
            l10.onAdExpired();
        }
        j(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        if (this.f53729h == Status.Expired) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        if (this.f53729h == Status.Loaded) {
            return true;
        }
        return false;
    }

    boolean r() {
        Status status = this.f53729h;
        if (status != null && status.ordinal() >= Status.Shown.ordinal()) {
            return true;
        }
        return false;
    }

    @NonNull
    public String toString() {
        return this.f53722a + ", " + hm.a.a(this.f53725d);
    }
}
