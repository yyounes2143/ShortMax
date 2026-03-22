package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.UInt32Value;
import com.explorestack.protobuf.UInt64Value;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.q0;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.Waterfall;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WaterfallController.java */
/* loaded from: classes7.dex */
public class j0 {
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    private static final cr.c f53763w = new dr.a();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53764a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Context f53765b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final hm.s f53766c;
    @NonNull
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final AdsFormat f53767d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final im.b f53768e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final o f53769f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final g f53770g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final j f53771h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final hm.u f53772i;
    @NonNull
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final List<Waterfall.Configuration.AdUnit> f53773j = new LinkedList();
    @NonNull
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    final AtomicBoolean f53774k = new AtomicBoolean(false);
    @NonNull
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    final AtomicBoolean f53775l = new AtomicBoolean(false);
    @NonNull
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    final AtomicBoolean f53776m = new AtomicBoolean(false);
    @NonNull
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    final AtomicInteger f53777n = new AtomicInteger(0);
    @Nullable
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    String f53778o;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    String f53779p;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    int f53780q;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    int f53781r;
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    int f53782s;
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    long f53783t;
    @Nullable
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    StringValue f53784u;
    @Nullable
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    q0 f53785v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WaterfallController.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public class a implements NetworkRequest.b, NetworkRequest.c {
        a() {
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: b */
        public void a(@Nullable fr.a aVar) {
            String str;
            j0 j0Var = j0.this;
            if (aVar != null) {
                str = aVar.g();
            } else {
                str = "Unknown";
            }
            j0Var.s(str);
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: c */
        public void onSuccess(@Nullable Waterfall.Configuration configuration) {
            if (configuration != null) {
                j0.this.t(configuration);
            } else {
                j0.this.s("Configuration response is null");
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.c
        public void onCanceled() {
            j0.this.s("Request is canceled");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WaterfallController.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public class b implements q0.c {
        @NonNull
        @VisibleForTesting

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f53787a = new AtomicBoolean(false);

        public b() {
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.q0.c
        public void a(@NonNull Queue<Waterfall.Result.AdUnit> queue) {
            j0.this.f53775l.set(false);
            if (!this.f53787a.get()) {
                j0.this.f53777n.incrementAndGet();
            }
            j0.this.v(queue);
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.q0.c
        public void onAdLoaded() {
            this.f53787a.set(true);
            j0.this.f53777n.set(0);
        }
    }

    public j0(@NonNull Context context, @NonNull hm.s sVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration configuration, @NonNull im.b bVar, @NonNull o oVar, @NonNull g gVar, @NonNull j jVar, @NonNull hm.u uVar) {
        this.f53764a = new fr.j(sVar.getNetworkName() + "WaterfallController");
        this.f53765b = context.getApplicationContext();
        this.f53766c = sVar;
        this.f53767d = adsFormat;
        this.f53768e = bVar;
        this.f53769f = oVar;
        this.f53770g = gVar;
        this.f53772i = uVar;
        this.f53771h = jVar;
        w(configuration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String j(long j10) {
        return String.format("(%s) Execution waterfall load started after - %s ms (failedAttempts - %s, maxRetryDegree - %s, retryBase - %s sec)", this.f53767d, Long.valueOf(j10), Integer.valueOf(this.f53777n.get()), Integer.valueOf(this.f53782s), Integer.valueOf(this.f53781r));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String k() {
        return String.format("(%s) Fail to start loading waterfall", this.f53767d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String l(String str) {
        return String.format("(%s) onWaterfallRequestFail - %s", this.f53767d, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String m() {
        return String.format("(%s) onWaterfallRequestSuccess", this.f53767d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String n() {
        return String.format("(%s) Loading completed", this.f53767d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String o() {
        return String.format("(%s) Request next waterfall", this.f53767d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int p(Waterfall.Configuration.AdUnit adUnit, Waterfall.Configuration.AdUnit adUnit2) {
        return -Double.compare(adUnit.getPrice(), adUnit2.getPrice());
    }

    @VisibleForTesting
    long h() {
        return (long) (Math.pow(this.f53781r, Math.min(this.f53777n.get(), this.f53782s)) * 1000.0d);
    }

    @VisibleForTesting
    void i() {
        this.f53785v = null;
    }

    public void q(boolean z10) {
        if (!this.f53774k.compareAndSet(false, true)) {
            if (z10 && !this.f53775l.get()) {
                this.f53776m.set(true);
                return;
            }
            return;
        }
        this.f53775l.set(true);
        this.f53777n.set(0);
        r();
    }

    @VisibleForTesting
    void r() {
        this.f53776m.set(false);
        this.f53785v = new q0(this.f53765b, this.f53766c, this.f53767d, this.f53768e, this.f53769f, this.f53770g, this.f53771h, this.f53772i, this.f53778o, this.f53773j, this.f53780q, new b());
        final long h10 = h();
        io.bidmachine.core.a.b(this.f53764a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.c0
            @Override // hr.b
            public final Object get() {
                String j10;
                j10 = j0.this.j(h10);
                return j10;
            }
        });
        if (!this.f53772i.a(this.f53785v, h10)) {
            io.bidmachine.core.a.b(this.f53764a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.d0
                @Override // hr.b
                public final Object get() {
                    String k10;
                    k10 = j0.this.k();
                    return k10;
                }
            });
            u();
        }
    }

    @VisibleForTesting
    void s(@NonNull final String str) {
        io.bidmachine.core.a.b(this.f53764a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.h0
            @Override // hr.b
            public final Object get() {
                String l10;
                l10 = j0.this.l(str);
                return l10;
            }
        });
        r();
    }

    @VisibleForTesting
    void t(@NonNull Waterfall.Configuration configuration) {
        io.bidmachine.core.a.b(this.f53764a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.i0
            @Override // hr.b
            public final Object get() {
                String m10;
                m10 = j0.this.m();
                return m10;
            }
        });
        w(configuration);
        if (!this.f53776m.get() && configuration.getShouldBreak()) {
            u();
        } else {
            r();
        }
    }

    @VisibleForTesting
    void u() {
        io.bidmachine.core.a.b(this.f53764a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.f0
            @Override // hr.b
            public final Object get() {
                String n10;
                n10 = j0.this.n();
                return n10;
            }
        });
        i();
        this.f53774k.set(false);
    }

    @VisibleForTesting
    void v(@NonNull Queue<Waterfall.Result.AdUnit> queue) {
        io.bidmachine.core.a.b(this.f53764a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.g0
            @Override // hr.b
            public final Object get() {
                String o10;
                o10 = j0.this.o();
                return o10;
            }
        });
        if (!TextUtils.isEmpty(this.f53779p) && io.bidmachine.core.g.K(this.f53779p)) {
            Waterfall.Result.Builder addAllAdUnitResults = Waterfall.Result.newBuilder().setFormat(StringValue.newBuilder().setValue(this.f53767d.getRemoteName()).build()).addAllAdUnitResults(queue);
            String str = this.f53778o;
            if (str != null) {
                addAllAdUnitResults.setWaterfallId(str);
            }
            List<Waterfall.Result.CachedAdUnit> i10 = this.f53770g.i(this.f53767d);
            if (i10 != null && !i10.isEmpty()) {
                addAllAdUnitResults.addAllCachedAdUnits(i10);
            }
            Struct b10 = this.f53766c.b(this.f53765b);
            if (b10 != null) {
                addAllAdUnitResults.setExt(b10);
            }
            StringValue stringValue = this.f53784u;
            if (stringValue != null) {
                addAllAdUnitResults.setServerParams(stringValue);
            }
            a aVar = new a();
            hm.v vVar = new hm.v(this.f53779p, addAllAdUnitResults.build(), (int) this.f53783t);
            vVar.setCallback(aVar);
            vVar.setCancelCallback(aVar);
            vVar.request(f53763w);
            return;
        }
        s("Request next waterfall failed (refreshUrl is null or empty or incorrect)");
    }

    @VisibleForTesting
    void w(@NonNull Waterfall.Configuration configuration) {
        StringValue stringValue;
        UInt32Value uInt32Value;
        int i10;
        UInt32Value uInt32Value2;
        int i11;
        UInt32Value uInt32Value3;
        int i12;
        UInt64Value uInt64Value;
        long j10;
        this.f53778o = configuration.getId();
        this.f53773j.clear();
        List<Waterfall.Configuration.AdUnit> adUnitsList = configuration.getAdUnitsList();
        if (adUnitsList != null && !adUnitsList.isEmpty()) {
            this.f53773j.addAll(adUnitsList);
            x(this.f53773j);
        }
        StringValue stringValue2 = null;
        if (configuration.hasRefreshUrl()) {
            stringValue = configuration.getRefreshUrl();
        } else {
            stringValue = null;
        }
        if (stringValue != null) {
            String value = stringValue.getValue();
            if (!TextUtils.isEmpty(value) && io.bidmachine.core.g.K(value)) {
                this.f53779p = stringValue.getValue();
            }
        }
        if (configuration.hasCacheSize()) {
            uInt32Value = configuration.getCacheSize();
        } else {
            uInt32Value = null;
        }
        if (uInt32Value != null) {
            i10 = uInt32Value.getValue();
        } else {
            i10 = 1;
        }
        this.f53780q = i10;
        if (configuration.hasRetryBase()) {
            uInt32Value2 = configuration.getRetryBase();
        } else {
            uInt32Value2 = null;
        }
        if (uInt32Value2 != null) {
            i11 = uInt32Value2.getValue();
        } else {
            i11 = 2;
        }
        this.f53781r = i11;
        if (configuration.hasMaxRetryDegree()) {
            uInt32Value3 = configuration.getMaxRetryDegree();
        } else {
            uInt32Value3 = null;
        }
        if (uInt32Value3 != null) {
            i12 = uInt32Value3.getValue();
        } else {
            i12 = 5;
        }
        this.f53782s = i12;
        if (configuration.hasRefreshTimeout()) {
            uInt64Value = configuration.getRefreshTimeout();
        } else {
            uInt64Value = null;
        }
        if (uInt64Value != null) {
            j10 = uInt64Value.getValue();
        } else {
            j10 = 10000;
        }
        this.f53783t = j10;
        if (configuration.hasServerParams()) {
            stringValue2 = configuration.getServerParams();
        }
        this.f53784u = stringValue2;
    }

    @VisibleForTesting
    void x(@NonNull List<Waterfall.Configuration.AdUnit> list) {
        Collections.sort(list, new Comparator() { // from class: io.bidmachine.ads.networks.gam_dynamic.e0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int p10;
                p10 = j0.p((Waterfall.Configuration.AdUnit) obj, (Waterfall.Configuration.AdUnit) obj2);
                return p10;
            }
        });
    }
}
