package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.ExpirationHandler;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.protobuf.AdCacheControl;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdResponse.java */
/* loaded from: classes7.dex */
public class u implements ExpirationHandler.Listener {

    /* renamed from: x  reason: collision with root package name */
    private static final long f58629x = TimeUnit.MINUTES.toSeconds(29);
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f58630a;

    /* renamed from: b  reason: collision with root package name */
    private final long f58631b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AdRequestParameters f58632c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final NetworkAdUnitManager f58633d;

    /* renamed from: e  reason: collision with root package name */
    private final String f58634e;

    /* renamed from: f  reason: collision with root package name */
    private final Struct f58635f;

    /* renamed from: g  reason: collision with root package name */
    private final String f58636g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final Ad f58637h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final lp.c f58638i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final AdExtension.EventConfiguration f58639j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final AdCacheControl f58640k;

    /* renamed from: l  reason: collision with root package name */
    private final long f58641l;
    @NonNull
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    final BidMachineTrackingObject f58642m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final NetworkAdUnit f58643n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final ExpirationHandler f58644o;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    final Map<TrackEventType, List<String>> f58645p = new EnumMap(TrackEventType.class);
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final AtomicBoolean f58646q = new AtomicBoolean(false);
    @NonNull
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    final List<WeakReference<AdRequest<?, ?, ?>>> f58647r = new CopyOnWriteArrayList();

    /* renamed from: s  reason: collision with root package name */
    private volatile AdResponseStatus f58648s = AdResponseStatus.Idle;
    @NonNull
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    final d f58649t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private volatile lp.a f58650u;
    @Nullable
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    ExpirationHandler f58651v;

    /* renamed from: w  reason: collision with root package name */
    final boolean f58652w;

    /* compiled from: AdResponse.java */
    /* loaded from: classes7.dex */
    class a extends BidMachineTrackingObject {
        a(Object obj) {
            super(obj);
        }

        @Override // wq.l, wq.k
        @Nullable
        public AdExtension.EventConfiguration getEventConfiguration() {
            return u.this.E();
        }

        @Override // wq.l, wq.k
        @Nullable
        public List<String> getTrackingUrls(@NonNull TrackEventType trackEventType) {
            return u.this.I(trackEventType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdResponse.java */
    /* loaded from: classes7.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                lp.a A = u.this.A();
                if (A != null) {
                    A.onDestroy();
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
            u.this.f58650u = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdResponse.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58655a;

        static {
            int[] iArr = new int[VisibilitySource.values().length];
            f58655a = iArr;
            try {
                iArr[VisibilitySource.BidMachine.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58655a[VisibilitySource.Network.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58655a[VisibilitySource.All.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdResponse.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    public static class d implements AdProcessCallback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<u> f58656a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<AdProcessCallback, Boolean> f58657b = new WeakHashMap();
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final Object f58658c = new Object();
        @NonNull
        @VisibleForTesting

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f58659d = new AtomicBoolean(false);
        @NonNull
        @VisibleForTesting

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f58660e = new AtomicBoolean(false);
        @NonNull

        /* renamed from: f  reason: collision with root package name */
        private final AtomicBoolean f58661f = new AtomicBoolean(false);
        @NonNull

        /* renamed from: g  reason: collision with root package name */
        private final AtomicBoolean f58662g = new AtomicBoolean(false);
        @NonNull

        /* renamed from: h  reason: collision with root package name */
        private final AtomicBoolean f58663h = new AtomicBoolean(false);
        @NonNull

        /* renamed from: i  reason: collision with root package name */
        private final AtomicBoolean f58664i = new AtomicBoolean(false);
        @NonNull

        /* renamed from: j  reason: collision with root package name */
        private final AtomicBoolean f58665j = new AtomicBoolean(false);
        @NonNull

        /* renamed from: k  reason: collision with root package name */
        private final AtomicBoolean f58666k = new AtomicBoolean(false);

        /* renamed from: l  reason: collision with root package name */
        private volatile boolean f58667l = false;
        @NonNull

        /* renamed from: m  reason: collision with root package name */
        private volatile VisibilitySource f58668m = VisibilitySource.Network;

        d(@NonNull u uVar) {
            this.f58656a = new WeakReference<>(uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String A(u uVar) {
            return String.format("processClicked - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ String B(u uVar) {
            return String.format("processClosed (%s) - %s", Boolean.valueOf(this.f58667l), uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String C(u uVar) {
            return String.format("processDestroy - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String D(u uVar) {
            return String.format("processExpired - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String E(u uVar) {
            return String.format("processFillAd - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String F(u uVar) {
            return String.format("processFinished - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String G(fr.a aVar) {
            return String.format("processLoadFail - %s", aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String I(u uVar) {
            return String.format("processLoadSuccess - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String J(u uVar) {
            return String.format("processShown - %s", uVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String K(fr.a aVar) {
            return String.format("processShowFail - %s", aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String M(u uVar) {
            return String.format("processImpression - %s", uVar);
        }

        private boolean r() {
            int i10 = c.f58655a[this.f58668m.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return false;
                    }
                    if (w() && y()) {
                        return true;
                    }
                    return false;
                }
                return y();
            }
            return w();
        }

        @NonNull
        private List<AdProcessCallback> u() {
            return new ArrayList(this.f58657b.keySet());
        }

        @Nullable
        private u v() {
            return this.f58656a.get();
        }

        private boolean w() {
            if (this.f58663h.get() && !this.f58664i.get()) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean x() {
            return this.f58660e.get();
        }

        private boolean y() {
            return this.f58662g.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String z(u uVar) {
            return String.format("onBrokenCreativeEvent - %s", uVar);
        }

        @VisibleForTesting
        void N() {
            if (!this.f58665j.compareAndSet(false, true)) {
                return;
            }
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.f0
                    @Override // hr.b
                    public final Object get() {
                        String J;
                        J = u.d.J(u.this);
                        return J;
                    }
                });
                v10.W();
                lp.a A = v10.A();
                if (A != null) {
                    A.onShown();
                }
                v10.s(TrackEventType.Show);
            }
            t(new Executable() { // from class: io.bidmachine.h0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processShown();
                }
            });
        }

        @VisibleForTesting
        void O(@NonNull AdProcessCallback adProcessCallback) {
            synchronized (this.f58658c) {
                this.f58657b.remove(adProcessCallback);
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void onBrokenCreativeEvent(@Nullable Map<String, Object> map) {
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.q0
                    @Override // hr.b
                    public final Object get() {
                        String z10;
                        z10 = u.d.z(u.this);
                        return z10;
                    }
                });
                v10.v(TrackEventType.BrokenCreativeDetector, map);
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClicked() {
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.d0
                    @Override // hr.b
                    public final Object get() {
                        String A;
                        A = u.d.A(u.this);
                        return A;
                    }
                });
                lp.a A = v10.A();
                if (A != null) {
                    A.onClicked();
                }
                v10.s(TrackEventType.Click);
            }
            t(new Executable() { // from class: io.bidmachine.e0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processClicked();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processClosed() {
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.k0
                    @Override // hr.b
                    public final Object get() {
                        String B;
                        B = u.d.this.B(v10);
                        return B;
                    }
                });
                lp.a A = v10.A();
                if (A != null) {
                    A.onClosed(this.f58667l);
                }
                v10.s(TrackEventType.Close);
            }
            t(new Executable() { // from class: io.bidmachine.l0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processClosed();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processDestroy() {
            t(new Executable() { // from class: io.bidmachine.x
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processDestroy();
                }
            });
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.y
                    @Override // hr.b
                    public final Object get() {
                        String C;
                        C = u.d.C(u.this);
                        return C;
                    }
                });
                v10.q();
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processExpired() {
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.b0
                    @Override // hr.b
                    public final Object get() {
                        String D;
                        D = u.d.D(u.this);
                        return D;
                    }
                });
                lp.a A = v10.A();
                if (A != null) {
                    A.onExpired();
                    v10.s(TrackEventType.Expired);
                }
            }
            t(new Executable() { // from class: io.bidmachine.c0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processExpired();
                }
            });
            if (v10 != null) {
                v10.U(false);
            }
            processDestroy();
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFillAd() {
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.m0
                    @Override // hr.b
                    public final Object get() {
                        String E;
                        E = u.d.E(u.this);
                        return E;
                    }
                });
                if (v10.C().isFullscreen()) {
                    v10.W();
                }
                v10.s(TrackEventType.FillAd);
            }
            t(new Executable() { // from class: io.bidmachine.n0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processFillAd();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processFinished() {
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.o0
                    @Override // hr.b
                    public final Object get() {
                        String F;
                        F = u.d.F(u.this);
                        return F;
                    }
                });
                lp.a A = v10.A();
                if (A != null) {
                    A.onFinished();
                }
                this.f58667l = true;
            }
            t(new Executable() { // from class: io.bidmachine.p0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processFinished();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadFail(@NonNull final fr.a aVar) {
            if (this.f58661f.getAndSet(true)) {
                return;
            }
            this.f58659d.set(false);
            this.f58660e.set(false);
            u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.r0
                    @Override // hr.b
                    public final Object get() {
                        String G;
                        G = u.d.G(fr.a.this);
                        return G;
                    }
                });
                v10.o();
                v10.t(TrackEventType.Load, aVar);
            }
            t(new Executable() { // from class: io.bidmachine.w
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processLoadFail(fr.a.this);
                }
            });
            processDestroy();
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processLoadSuccess() {
            if (this.f58661f.getAndSet(true)) {
                return;
            }
            this.f58659d.set(true);
            this.f58660e.set(false);
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.z
                    @Override // hr.b
                    public final Object get() {
                        String I;
                        I = u.d.I(u.this);
                        return I;
                    }
                });
                v10.o();
                v10.s(TrackEventType.Load);
            }
            UserAgentManager.updateWebViewUserAgent();
            t(new Executable() { // from class: io.bidmachine.a0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processLoadSuccess();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShowFail(@NonNull final fr.a aVar) {
            u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.i0
                    @Override // hr.b
                    public final Object get() {
                        String K;
                        K = u.d.K(fr.a.this);
                        return K;
                    }
                });
                lp.a A = v10.A();
                if (A != null) {
                    A.onShowFailed();
                }
                v10.t(TrackEventType.Show, aVar);
            }
            t(new Executable() { // from class: io.bidmachine.j0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processShowFail(fr.a.this);
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processShown() {
            this.f58662g.set(true);
            if (r()) {
                N();
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processStartVisibilityTracker() {
            this.f58663h.set(true);
        }

        @Override // io.bidmachine.AdProcessCallback
        public void processVisibilityTrackerImpression() {
            if (this.f58666k.getAndSet(true)) {
                return;
            }
            final u v10 = v();
            if (v10 != null) {
                io.bidmachine.core.a.b(v10.f58630a, new hr.b() { // from class: io.bidmachine.v
                    @Override // hr.b
                    public final Object get() {
                        String M;
                        M = u.d.M(u.this);
                        return M;
                    }
                });
                lp.a A = v10.A();
                if (A != null) {
                    A.onImpression();
                }
                v10.s(TrackEventType.Impression);
            }
            t(new Executable() { // from class: io.bidmachine.g0
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ((AdProcessCallback) obj).processVisibilityTrackerImpression();
                }
            });
        }

        @Override // io.bidmachine.AdProcessCallback
        public boolean processVisibilityTrackerShown() {
            this.f58664i.set(true);
            if (r()) {
                N();
                return true;
            }
            return false;
        }

        @VisibleForTesting
        void q(@NonNull AdProcessCallback adProcessCallback) {
            synchronized (this.f58658c) {
                this.f58657b.put(adProcessCallback, Boolean.TRUE);
            }
        }

        @VisibleForTesting
        void s() {
            this.f58656a.clear();
            synchronized (this.f58658c) {
                this.f58657b.clear();
            }
        }

        @Override // io.bidmachine.AdProcessCallback
        public void setVisibilitySource(@NonNull VisibilitySource visibilitySource) {
            this.f58668m = visibilitySource;
        }

        @VisibleForTesting
        void t(@NonNull Executable<AdProcessCallback> executable) {
            synchronized (this.f58658c) {
                try {
                    for (AdProcessCallback adProcessCallback : u()) {
                        if (adProcessCallback != null) {
                            executable.execute(adProcessCallback);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* compiled from: AdResponse.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    static class e implements ExpirationHandler.Listener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final AdProcessCallback f58669a;

        public e(@NonNull AdProcessCallback adProcessCallback) {
            this.f58669a = adProcessCallback;
        }

        @Override // io.bidmachine.ExpirationHandler.Listener
        public void onExpired() {
            this.f58669a.processLoadFail(new fr.a(fr.a.f51910f, -1, "Creative loading timeout reached"));
        }
    }

    public u(@NonNull AdRequestParameters adRequestParameters, @NonNull NetworkAdUnitManager networkAdUnitManager, @NonNull Response response, @NonNull Response.Seatbid seatbid, @NonNull Response.Seatbid.Bid bid, @NonNull Ad ad2, @NonNull NetworkAdapter networkAdapter) {
        int i10;
        ExpirationHandler expirationHandler;
        boolean z10 = false;
        d dVar = new d(this);
        this.f58649t = dVar;
        this.f58630a = new fr.j("AdResponse");
        this.f58631b = System.currentTimeMillis();
        this.f58632c = adRequestParameters;
        this.f58633d = networkAdUnitManager;
        this.f58634e = response.getId();
        this.f58635f = seatbid.getExt();
        this.f58636g = bid.getId();
        this.f58637h = ad2;
        AdExtension f10 = fr.e.f(ad2);
        c1 c1Var = new c1(adRequestParameters.getAdsType(), seatbid, bid, ad2, networkAdapter, f10);
        this.f58638i = c1Var;
        this.f58639j = z(f10);
        this.f58640k = y(f10);
        long B = io.bidmachine.core.g.B(bid.getExp(), Response.Seatbid.Bid.getDefaultInstance().getExp(), f58629x) * 1000;
        this.f58641l = B;
        this.f58642m = new a(c1Var.getId());
        this.f58643n = networkAdUnitManager.findOrAddWinnerNetworkAdUnit(networkAdapter, adRequestParameters.getAdsFormat(), c1Var.b());
        this.f58644o = new ExpirationHandler(B, this);
        if (f10 != null) {
            i10 = f10.getCreativeLoadingTimeout();
        } else {
            i10 = 0;
        }
        if (i10 > 0) {
            expirationHandler = new ExpirationHandler(i10, new e(dVar));
        } else {
            expirationHandler = null;
        }
        this.f58651v = expirationHandler;
        if (f10 != null && f10.getCridMonitoringEnabled()) {
            z10 = true;
        }
        this.f58652w = z10;
        x(bid);
        b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String M() {
        return String.format("attachRequest - %s", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String N() {
        return String.format("destroy - %s", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String O() {
        return String.format("detachRequest - %s", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String P() {
        return String.format("notifyExpired - %s", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String Q() {
        return String.format("onLoadStart - %s", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String R() {
        return String.format("release - %s", this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        try {
            lp.a A = A();
            if (A != null) {
                A.hide();
            }
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    private void b0() {
        this.f58644o.start();
    }

    private boolean l() {
        if (!d0() && !L()) {
            return true;
        }
        return false;
    }

    private void x(@NonNull Response.Seatbid.Bid bid) {
        fr.e.a(this.f58645p, TrackEventType.MediationWin, bid.getPurl());
        fr.e.a(this.f58645p, TrackEventType.MediationLoss, bid.getLurl());
    }

    @Nullable
    private AdCacheControl y(@Nullable AdExtension adExtension) {
        AdCacheControl adCacheControl;
        if (adExtension == null || (adCacheControl = adExtension.getAdCacheControl()) == AdCacheControl.UNRECOGNIZED) {
            return null;
        }
        return adCacheControl;
    }

    @Nullable
    public lp.a A() {
        return this.f58650u;
    }

    @NonNull
    public AdRequestParameters B() {
        return this.f58632c;
    }

    @NonNull
    public AdsType C() {
        return this.f58632c.getAdsType();
    }

    @NonNull
    public lp.c D() {
        return this.f58638i;
    }

    @Nullable
    public AdExtension.EventConfiguration E() {
        return this.f58639j;
    }

    public double F() {
        return this.f58638i.getPrice();
    }

    public synchronized AdResponseStatus G() {
        return this.f58648s;
    }

    @Nullable
    public List<String> H(@NonNull TrackEventType trackEventType) {
        return this.f58645p.get(trackEventType);
    }

    @Nullable
    public List<String> I(@NonNull TrackEventType trackEventType) {
        lp.b bVar;
        lp.a A = A();
        if (A != null) {
            bVar = A.getParams();
        } else {
            bVar = null;
        }
        if (bVar == null) {
            return null;
        }
        return bVar.d(trackEventType);
    }

    @NonNull
    public NetworkAdUnit J() {
        return this.f58643n;
    }

    public boolean K() {
        if (A() != null && this.f58649t.f58659d.get()) {
            return true;
        }
        return false;
    }

    public boolean L() {
        return this.f58646q.get();
    }

    public synchronized void T(@NonNull ContextProvider contextProvider, @NonNull AdRequest adRequest, @NonNull BidMachineAd bidMachineAd, @NonNull AdProcessCallback adProcessCallback) {
        V(adRequest);
        this.f58649t.q(adProcessCallback);
        if (K()) {
            adProcessCallback.processLoadSuccess();
        } else if (this.f58649t.f58660e.getAndSet(true)) {
        } else {
            this.f58642m.eventStart(TrackEventType.Load);
            if (L()) {
                this.f58649t.processLoadFail(fr.a.f51915k);
            } else if (d0()) {
                this.f58649t.processLoadFail(fr.a.f51916l);
            } else {
                NetworkAdapter findNetworkAdapter = adRequest.getAdsType().findNetworkAdapter(this.f58637h);
                if (findNetworkAdapter == null) {
                    this.f58649t.processLoadFail(fr.a.h("Failed to get adapter by response"));
                    return;
                }
                lp.b createAdObjectParams = adRequest.getAdsType().createAdObjectParams(this.f58637h);
                if (createAdObjectParams != null && createAdObjectParams.f()) {
                    lp.a createAdObject = bidMachineAd.createAdObject(contextProvider, adRequest, findNetworkAdapter, createAdObjectParams, this.f58649t);
                    if (createAdObject == null) {
                        this.f58649t.processLoadFail(fr.a.h("Failed to create ad object by response"));
                        return;
                    }
                    this.f58650u = createAdObject;
                    a0();
                    createAdObject.load(contextProvider, adRequest.obtainUnifiedRequestParams(), this.f58643n);
                    return;
                }
                this.f58649t.processLoadFail(fr.a.h("Failed to get parameters by response"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(boolean z10) {
        io.bidmachine.core.a.b(this.f58630a, new hr.b() { // from class: io.bidmachine.q
            @Override // hr.b
            public final Object get() {
                String P;
                P = u.this.P();
                return P;
            }
        });
        this.f58646q.set(true);
        c0();
        w(null);
        if (z10) {
            q();
        }
    }

    public void V(@Nullable AdRequest<?, ?, ?> adRequest) {
        io.bidmachine.core.a.b(this.f58630a, new hr.b() { // from class: io.bidmachine.m
            @Override // hr.b
            public final Object get() {
                String Q;
                Q = u.this.Q();
                return Q;
            }
        });
        w(adRequest);
    }

    void W() {
        c0();
        w0.e().n(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X() {
        io.bidmachine.core.a.b(this.f58630a, new hr.b() { // from class: io.bidmachine.n
            @Override // hr.b
            public final Object get() {
                String R;
                R = u.this.R();
                return R;
            }
        });
        w0 e10 = w0.e();
        if (l() && e10.d(this)) {
            n();
            Z(AdResponseStatus.Idle);
            io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.o
                @Override // java.lang.Runnable
                public final void run() {
                    u.this.S();
                }
            });
            return;
        }
        q();
    }

    public void Y(@NonNull AdProcessCallback adProcessCallback) {
        this.f58649t.O(adProcessCallback);
    }

    public synchronized void Z(@NonNull AdResponseStatus adResponseStatus) {
        this.f58648s = adResponseStatus;
    }

    @VisibleForTesting
    void a0() {
        ExpirationHandler expirationHandler = this.f58651v;
        if (expirationHandler != null) {
            expirationHandler.start();
        }
    }

    @VisibleForTesting
    void c0() {
        this.f58644o.stop();
    }

    public boolean d0() {
        return this.f58649t.f58665j.get();
    }

    public void j(@Nullable AdRequest<?, ?, ?> adRequest) {
        if (adRequest == null) {
            return;
        }
        io.bidmachine.core.a.b(this.f58630a, new hr.b() { // from class: io.bidmachine.s
            @Override // hr.b
            public final Object get() {
                String M;
                M = u.this.M();
                return M;
            }
        });
        this.f58647r.add(new WeakReference<>(adRequest));
    }

    public long k() {
        return this.f58641l - (System.currentTimeMillis() - this.f58631b);
    }

    public boolean m() {
        if (this.f58640k == AdCacheControl.AD_CACHE_CONTROL_ENABLED) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.f58647r) {
            weakReference.clear();
        }
        this.f58647r.clear();
    }

    @VisibleForTesting
    void o() {
        ExpirationHandler expirationHandler = this.f58651v;
        if (expirationHandler != null) {
            expirationHandler.stop();
        }
        this.f58651v = null;
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        this.f58649t.processExpired();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Value p() {
        Struct.Builder putFields = Struct.newBuilder().putFields("price", Value.newBuilder().setNumberValue(this.f58638i.getPrice()).build()).putFields("exp", Value.newBuilder().setNumberValue(k()).build()).putFields("request_id", Value.newBuilder().setStringValue(this.f58634e).build()).putFields("bid_id", Value.newBuilder().setStringValue(this.f58636g).build());
        if (this.f58635f.getFieldsCount() > 0) {
            putFields.putFields("seat", Value.newBuilder().setStructValue(this.f58635f).build());
        }
        return Value.newBuilder().setStructValue(putFields).build();
    }

    @VisibleForTesting
    void q() {
        io.bidmachine.core.a.b(this.f58630a, new hr.b() { // from class: io.bidmachine.t
            @Override // hr.b
            public final Object get() {
                String N;
                N = u.this.N();
                return N;
            }
        });
        w0.e().n(this);
        o();
        n();
        c0();
        this.f58649t.s();
        this.f58645p.clear();
        this.f58633d.notifyNetworkClearAuction();
        if (this.f58649t.x()) {
            t(TrackEventType.Load, fr.a.f51919o);
        }
        if (this.f58650u != null) {
            s(TrackEventType.Destroy);
        }
        this.f58642m.clear();
        io.bidmachine.core.g.Z(new b());
    }

    public void r(@Nullable AdRequest<?, ?, ?> adRequest) {
        if (adRequest == null) {
            return;
        }
        io.bidmachine.core.a.b(this.f58630a, new hr.b() { // from class: io.bidmachine.p
            @Override // hr.b
            public final Object get() {
                String O;
                O = u.this.O();
                return O;
            }
        });
        ArrayList arrayList = new ArrayList();
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.f58647r) {
            AdRequest<?, ?, ?> adRequest2 = weakReference.get();
            if (adRequest2 == null || adRequest2 == adRequest) {
                arrayList.add(weakReference);
            }
        }
        this.f58647r.removeAll(arrayList);
        if (this.f58647r.isEmpty()) {
            X();
        }
    }

    @VisibleForTesting
    void s(@NonNull TrackEventType trackEventType) {
        u(trackEventType, null, null);
    }

    @VisibleForTesting
    void t(@NonNull TrackEventType trackEventType, @Nullable fr.a aVar) {
        u(trackEventType, aVar, null);
    }

    @NonNull
    public String toString() {
        return this.f58638i.toString();
    }

    @VisibleForTesting
    void u(@NonNull TrackEventType trackEventType, @Nullable fr.a aVar, @Nullable Map<String, Object> map) {
        this.f58642m.eventFinish(trackEventType, C(), this, aVar, map);
    }

    @VisibleForTesting
    void v(@NonNull TrackEventType trackEventType, @Nullable Map<String, Object> map) {
        u(trackEventType, null, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(@Nullable AdRequest<?, ?, ?> adRequest) {
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.f58647r) {
            AdRequest<?, ?, ?> adRequest2 = weakReference.get();
            if (adRequest2 != null && adRequest2 != adRequest) {
                adRequest2.processExpired();
            }
        }
    }

    @Nullable
    @VisibleForTesting
    AdExtension.EventConfiguration z(@Nullable AdExtension adExtension) {
        AdExtension.EventConfiguration eventConfiguration;
        if (adExtension == null || (eventConfiguration = adExtension.getEventConfiguration()) == AdExtension.EventConfiguration.getDefaultInstance()) {
            return null;
        }
        return eventConfiguration;
    }
}
