package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.UInt32Value;
import io.bidmachine.AdsFormat;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.Waterfall;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WaterfallLoader.java */
/* loaded from: classes7.dex */
public class q0 implements Runnable {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53803a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Context f53804b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final hm.s f53805c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final AdsFormat f53806d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final im.b f53807e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final g f53808f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final j f53809g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final o f53810h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final hm.u f53811i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final String f53812j;
    @NonNull
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final Queue<Waterfall.Configuration.AdUnit> f53813k;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    final int f53815m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final c f53816n;
    @NonNull
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final Queue<Waterfall.Result.AdUnit> f53814l = new ConcurrentLinkedQueue();
    @NonNull
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    final AtomicBoolean f53817o = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WaterfallLoader.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public class a implements hm.k {
        a() {
        }

        @Override // hm.k
        public void a(@NonNull InternalAd internalAd) {
            q0.this.y(internalAd);
            q0.this.A(TrackEventType.AdUnitShown, internalAd);
        }

        @Override // hm.k
        public void b(@NonNull InternalAd internalAd) {
            q0.this.A(TrackEventType.AdUnitExpired, internalAd);
        }

        @Override // hm.k
        public void c(@NonNull InternalAd internalAd, boolean z10) {
            if (z10) {
                q0.this.y(internalAd);
            } else {
                q0.this.f53808f.A(internalAd);
            }
        }

        @Override // hm.k
        public void d(@NonNull InternalAd internalAd) {
            q0.this.A(TrackEventType.AdUnitPaidEvent, internalAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WaterfallLoader.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public class b implements hm.q {
        b() {
        }

        @Override // hm.q
        public void a(@NonNull InternalAd internalAd, @Nullable hm.l lVar) {
            q0.this.A(TrackEventType.AdUnitLoadFinish, internalAd);
            q0.this.A(TrackEventType.AdUnitWin, internalAd);
            q0.this.j(internalAd.m(), Waterfall.Result.AdUnit.Status.STATUS_SUCCESS, lVar, null);
            InternalAd y10 = q0.this.f53808f.y(internalAd, q0.this.f53815m);
            if (y10 != null) {
                q0.this.A(TrackEventType.AdUnitCheapestDequeued, y10);
                y10.i();
            }
            q0.this.f53816n.onAdLoaded();
            q0.this.w(null);
        }

        @Override // hm.q
        public void b(@NonNull InternalAd internalAd, @NonNull fr.a aVar) {
            Waterfall.Configuration.AdUnit m10 = internalAd.m();
            q0.this.B(TrackEventType.AdUnitLoadFinish, m10, internalAd, aVar);
            q0.this.A(TrackEventType.AdUnitLoss, internalAd);
            q0.this.j(m10, Waterfall.Result.AdUnit.Status.STATUS_ERROR, null, aVar);
            internalAd.i();
            q0 q0Var = q0.this;
            q0Var.w(Long.valueOf(q0Var.m(m10)));
        }
    }

    /* compiled from: WaterfallLoader.java */
    /* loaded from: classes7.dex */
    public interface c {
        void a(@NonNull Queue<Waterfall.Result.AdUnit> queue);

        void onAdLoaded();
    }

    public q0(@NonNull Context context, @NonNull hm.s sVar, @NonNull AdsFormat adsFormat, @NonNull im.b bVar, @NonNull o oVar, @NonNull g gVar, @NonNull j jVar, @NonNull hm.u uVar, @Nullable String str, @NonNull List<Waterfall.Configuration.AdUnit> list, int i10, @NonNull c cVar) {
        this.f53803a = new fr.j(sVar.getNetworkName() + "WaterfallLoader");
        this.f53804b = context.getApplicationContext();
        this.f53805c = sVar;
        this.f53806d = adsFormat;
        this.f53807e = bVar;
        this.f53810h = oVar;
        this.f53808f = gVar;
        this.f53809g = jVar;
        this.f53811i = uVar;
        this.f53812j = str;
        this.f53813k = new ConcurrentLinkedQueue(list);
        this.f53815m = i10;
        this.f53816n = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String o() {
        return String.format("(%s) Polling started (waterfallId - %s, ad unit count - %s)", this.f53806d, this.f53812j, Integer.valueOf(this.f53813k.size()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String p(long j10) {
        return String.format("(%s) Execution ad unit load started after %s ms", this.f53806d, Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String q() {
        return String.format("(%s) Stop polling. Waterfall already filled with expensive ads", this.f53806d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String r() {
        return String.format("(%s) Can't create InternalAd", this.f53806d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(Waterfall.Configuration.AdUnit adUnit) {
        InternalAd g10 = this.f53808f.g(this.f53806d);
        if (g10 != null && adUnit.getPrice() <= g10.m().getPrice() && this.f53808f.j(this.f53806d) >= this.f53815m) {
            io.bidmachine.core.a.b(this.f53803a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.o0
                @Override // hr.b
                public final Object get() {
                    String q10;
                    q10 = q0.this.q();
                    return q10;
                }
            });
            j(adUnit, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, null);
            for (Waterfall.Configuration.AdUnit adUnit2 : this.f53813k) {
                j(adUnit2, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, null);
            }
            x();
            return;
        }
        try {
            InternalAd e10 = this.f53807e.e(this.f53805c, this.f53811i, this.f53806d, adUnit, new a());
            if (e10 == null) {
                io.bidmachine.core.a.b(this.f53803a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.p0
                    @Override // hr.b
                    public final Object get() {
                        String r10;
                        r10 = q0.this.r();
                        return r10;
                    }
                });
                j(adUnit, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, fr.a.i("Can't create InternalAd"));
                w(null);
                return;
            }
            if (!TextUtils.isEmpty(this.f53812j)) {
                e10.I("gam_waterfall_id", this.f53812j);
                e10.I("gam_ad_unit_id", adUnit.getAdUnitId());
            }
            e10.A(this.f53804b, new b());
            A(TrackEventType.AdUnitLoadStart, e10);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            j(adUnit, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, fr.a.l("Exception loading InternalAd object", th2));
            w(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String u() {
        StringBuilder sb2 = new StringBuilder(String.format("(%s) Polling completed (waterfallId - %s, ad unit count - %s)", this.f53806d, this.f53812j, Integer.valueOf(this.f53814l.size())));
        for (Waterfall.Result.AdUnit adUnit : this.f53814l) {
            sb2.append(String.format("\n> %s", hm.a.b(adUnit)));
        }
        return sb2.toString();
    }

    @VisibleForTesting
    void A(@NonNull TrackEventType trackEventType, @NonNull InternalAd internalAd) {
        B(trackEventType, internalAd.m(), internalAd, null);
    }

    @VisibleForTesting
    void B(@NonNull TrackEventType trackEventType, @Nullable Waterfall.Configuration.AdUnit adUnit, @Nullable InternalAd internalAd, @Nullable fr.a aVar) {
        wq.a h10 = new wq.a().h(this.f53805c.a());
        if (adUnit != null) {
            h10.i(Double.valueOf(adUnit.getPrice()));
        }
        if (internalAd != null) {
            h10.g(internalAd.getCustomParamsMap());
        }
        if (!TextUtils.isEmpty(this.f53812j)) {
            h10.f("gam_waterfall_id", this.f53812j);
        }
        this.f53809g.f(trackEventType, this.f53806d, h10, aVar);
    }

    @VisibleForTesting
    void j(@NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull Waterfall.Result.AdUnit.Status status, @Nullable hm.l lVar, @Nullable fr.a aVar) {
        this.f53814l.add(l(adUnit, status, lVar, aVar));
    }

    @VisibleForTesting
    long k(@NonNull Waterfall.Configuration.AdUnit adUnit, @Nullable Long l10) {
        long n10 = n(adUnit);
        if (l10 != null) {
            return n10 + l10.longValue();
        }
        return n10;
    }

    @NonNull
    @VisibleForTesting
    Waterfall.Result.AdUnit l(@NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull Waterfall.Result.AdUnit.Status status, @Nullable hm.l lVar, @Nullable fr.a aVar) {
        Waterfall.Result.AdUnit.Builder price = Waterfall.Result.AdUnit.newBuilder().setStatus(status).setPrice(adUnit.getPrice());
        if (adUnit.getAdUnitId() != null) {
            price.setAdUnitId(adUnit.getAdUnitId());
        }
        StringValue serverParams = adUnit.getServerParams();
        if (serverParams != null) {
            price.setServerParams(serverParams);
        }
        if (lVar != null) {
            Waterfall.Result.EstimatedPrice b10 = lVar.b();
            if (b10 != null) {
                price.setEstimatedPrice(b10);
            }
            String a10 = lVar.a();
            if (!TextUtils.isEmpty(a10)) {
                price.setAdResponse(StringValue.newBuilder().setValue(a10).build());
            }
        }
        if (aVar != null) {
            price.setError(Waterfall.Result.AdUnit.Error.newBuilder().setCode(aVar.e()).setDescription(aVar.g()));
        }
        return price.build();
    }

    @VisibleForTesting
    long m(@NonNull Waterfall.Configuration.AdUnit adUnit) {
        UInt32Value uInt32Value;
        if (adUnit.hasSleepTimeAfter()) {
            uInt32Value = adUnit.getSleepTimeAfter();
        } else {
            uInt32Value = null;
        }
        if (uInt32Value != null) {
            return uInt32Value.getValue();
        }
        return 0L;
    }

    @VisibleForTesting
    long n(@NonNull Waterfall.Configuration.AdUnit adUnit) {
        UInt32Value uInt32Value;
        if (adUnit.hasSleepTimeBefore()) {
            uInt32Value = adUnit.getSleepTimeBefore();
        } else {
            uInt32Value = null;
        }
        if (uInt32Value != null) {
            return uInt32Value.getValue();
        }
        return 0L;
    }

    @Override // java.lang.Runnable
    public void run() {
        v();
    }

    @VisibleForTesting
    void v() {
        if (!this.f53817o.compareAndSet(false, true)) {
            return;
        }
        io.bidmachine.core.a.b(this.f53803a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.k0
            @Override // hr.b
            public final Object get() {
                String o10;
                o10 = q0.this.o();
                return o10;
            }
        });
        z(TrackEventType.WaterfallLoadStart);
        w(null);
    }

    @VisibleForTesting
    void w(@Nullable Long l10) {
        if (this.f53813k.isEmpty()) {
            x();
            return;
        }
        final Waterfall.Configuration.AdUnit poll = this.f53813k.poll();
        if (poll == null) {
            w(l10);
            return;
        }
        final long k10 = k(poll, l10);
        io.bidmachine.core.a.b(this.f53803a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.l0
            @Override // hr.b
            public final Object get() {
                String p10;
                p10 = q0.this.p(k10);
                return p10;
            }
        });
        if (!this.f53811i.a(new Runnable() { // from class: io.bidmachine.ads.networks.gam_dynamic.m0
            @Override // java.lang.Runnable
            public final void run() {
                q0.this.t(poll);
            }
        }, k10)) {
            x();
        }
    }

    @VisibleForTesting
    void x() {
        io.bidmachine.core.a.b(this.f53803a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.n0
            @Override // hr.b
            public final Object get() {
                String u10;
                u10 = q0.this.u();
                return u10;
            }
        });
        z(TrackEventType.WaterfallLoadFinish);
        this.f53817o.set(false);
        this.f53816n.a(this.f53814l);
    }

    @VisibleForTesting
    void y(@NonNull InternalAd internalAd) {
        if (this.f53808f.t(internalAd)) {
            this.f53810h.d(internalAd.n(), true);
        }
    }

    @VisibleForTesting
    void z(@NonNull TrackEventType trackEventType) {
        B(trackEventType, null, null, null);
    }
}
