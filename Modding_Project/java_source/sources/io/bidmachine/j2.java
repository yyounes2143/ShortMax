package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdRequest;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.e4;
import io.bidmachine.internal.KotlinEngine;
import io.bidmachine.protobuf.AdCachePlacementControl;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.protobuf.InitResponse;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BidMachineImpl.java */
/* loaded from: classes7.dex */
public final class j2 {
    @NonNull
    private static final AtomicBoolean B = new AtomicBoolean(false);
    @Nullable
    private static volatile j2 C;
    @NonNull
    private final e4.d A;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<InitializationCallback> f55003a = new CopyOnWriteArraySet();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f55004b = new AtomicBoolean(false);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f55005c = new AtomicBoolean(false);
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final wq.e f55006d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final wq.f f55007e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final v5 f55008f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final PriceFloorParams f55009g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final a1 f55010h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final v3 f55011i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final o5 f55012j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final x3 f55013k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final Map<TrackEventType, List<String>> f55014l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final List<AdRequest.AdRequestListener<?>> f55015m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final z0 f55016n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final w1 f55017o;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    Context f55018p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f55019q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    private TargetingParams f55020r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private CustomParams f55021s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Publisher f55022t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f55023u;
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    int f55024v;

    /* renamed from: w  reason: collision with root package name */
    private int f55025w;
    @Nullable
    @VisibleForTesting

    /* renamed from: x  reason: collision with root package name */
    String f55026x;
    @VisibleForTesting

    /* renamed from: y  reason: collision with root package name */
    long f55027y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    e4 f55028z;

    /* compiled from: BidMachineImpl.java */
    /* loaded from: classes7.dex */
    class a extends ir.a {
        a(String str) {
            super(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ir.a
        @NonNull
        public String a(@Nullable Object obj, @Nullable String str, @Nullable hr.b<String> bVar, @Nullable Throwable th2) {
            String a10 = super.a(obj, str, bVar, th2);
            if (j2.e().C()) {
                return "(TEST MODE) " + a10;
            }
            return a10;
        }
    }

    /* compiled from: BidMachineImpl.java */
    /* loaded from: classes7.dex */
    private class b implements e4.d {
        private b() {
        }

        @Override // io.bidmachine.e4.d
        public void a(@NonNull e4.b bVar) {
            InitResponse a10 = bVar.a();
            j2.this.v(SessionManager.get().getSessionId(), a10, bVar.b());
            if (j2.this.f55018p == null) {
                return;
            }
            ExtraParamsManager.get().setExtras(j2.this.f55018p, a10.getExtras());
            j2 j2Var = j2.this;
            j2Var.x(j2Var.f55018p, a10.getAdNetworksList());
        }

        @Override // io.bidmachine.e4.d
        public void b(@NonNull e4.b bVar) {
            j2 j2Var = j2.this;
            Context context = j2Var.f55018p;
            if (context == null) {
                return;
            }
            j2Var.x(context, bVar.a().getAdNetworksList());
        }

        @Override // io.bidmachine.e4.d
        public void c(@NonNull e4.b bVar) {
            j2.this.v(SessionManager.get().getSessionId(), bVar.a(), bVar.b());
        }

        /* synthetic */ b(j2 j2Var, a aVar) {
            this();
        }
    }

    /* compiled from: BidMachineImpl.java */
    @VisibleForTesting
    /* loaded from: classes7.dex */
    static class c implements sq.l {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f55030a;

        public c(@NonNull Context context) {
            this.f55030a = context.getApplicationContext();
        }

        @Override // sq.l
        @Nullable
        public String getUserAgent() {
            return UserAgentManager.getUserAgent(this.f55030a);
        }
    }

    static {
        io.bidmachine.core.a.i(new a("BidMachineLog"));
    }

    j2() {
        wq.e eVar = new wq.e();
        this.f55006d = eVar;
        this.f55007e = new k2(eVar);
        this.f55008f = new v5();
        this.f55009g = new PriceFloorParams().m4923addPriceFloor(UUID.randomUUID().toString(), 0.01d);
        this.f55010h = new a1(new b1());
        this.f55011i = new v3(new w2());
        this.f55012j = new o5();
        this.f55013k = new y3();
        this.f55014l = new EnumMap(TrackEventType.class);
        this.f55015m = new CopyOnWriteArrayList();
        this.f55016n = new z0();
        this.f55017o = new w1();
        this.f55020r = new TargetingParams();
        this.f55021s = new CustomParams();
        this.f55024v = 0;
        this.f55025w = 0;
        this.f55027y = 0L;
        this.A = new b(this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(String str, InitResponse initResponse, String str2, Context context) {
        this.f55017o.a(context, str, initResponse, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(Context context) {
        try {
            Debugger.setup(context);
            this.f55013k.a(context);
            this.f55016n.e(context);
            this.f55028z.f();
            J(context);
            i4.d(context);
            y(context, null);
            H();
            this.f55028z.e();
            KotlinEngine.a();
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static void K(@NonNull final Context context) {
        if (!B.compareAndSet(false, true)) {
            return;
        }
        io.bidmachine.core.g.k0(new fr.k() { // from class: io.bidmachine.e2
            @Override // fr.k
            public final void run() {
                n1.b(context);
            }
        });
        io.bidmachine.core.g.k0(new fr.k() { // from class: io.bidmachine.f2
            @Override // fr.k
            public final void run() {
                w1.b(context);
            }
        });
    }

    private static void M(@Nullable final InitializationCallback initializationCallback) {
        if (initializationCallback == null) {
            return;
        }
        io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.i2
            @Override // java.lang.Runnable
            public final void run() {
                InitializationCallback.this.onInitialized();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static j2 e() {
        j2 j2Var = C;
        if (j2Var == null) {
            synchronized (j2.class) {
                try {
                    j2Var = C;
                    if (j2Var == null) {
                        j2Var = new j2();
                        C = j2Var;
                    }
                } finally {
                }
            }
        }
        return j2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A() {
        return this.f55005c.get();
    }

    boolean B() {
        return this.f55004b.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C() {
        return this.f55023u;
    }

    @VisibleForTesting
    void H() {
        io.bidmachine.core.a.d("Notify initialization finished");
        this.f55005c.set(true);
        this.f55004b.set(false);
        for (InitializationCallback initializationCallback : this.f55003a) {
            M(initializationCallback);
        }
        this.f55003a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String I(@NonNull Context context) {
        if (!this.f55008f.f()) {
            return "00000000-0000-0000-0000-000000000000";
        }
        if (!TextUtils.isEmpty(this.f55026x)) {
            return this.f55026x;
        }
        String p10 = m2.p(context);
        this.f55026x = p10;
        return p10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long J(@NonNull Context context) {
        long j10 = this.f55027y;
        if (j10 != 0) {
            return j10;
        }
        long q10 = m2.q(context);
        this.f55027y = q10;
        return q10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(@Nullable AdRequest.AdRequestListener<?> adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.f55015m.add(adRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N(@Nullable Publisher publisher) {
        this.f55022t = publisher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O(@Nullable TargetingParams targetingParams) {
        if (targetingParams == null) {
            targetingParams = new TargetingParams();
        }
        this.f55020r = targetingParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P(boolean z10) {
        this.f55023u = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(@Nullable AdRequest.AdRequestListener<?> adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.f55015m.remove(adRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<AdRequest.AdRequestListener<?>> f() {
        return this.f55015m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Context g() {
        return this.f55018p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public a1 h() {
        return this.f55010h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public v3 i() {
        return this.f55011i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String j() {
        return this.f55016n.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public x3 k() {
        return this.f55013k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        return this.f55025w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public PriceFloorParams m() {
        return this.f55009g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Publisher n() {
        return this.f55022t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o() {
        return this.f55024v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String p() {
        return this.f55019q;
    }

    @NonNull
    public o5 q() {
        return this.f55012j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public wq.f r() {
        return this.f55007e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public TargetingParams s() {
        return this.f55020r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public List<String> t(@NonNull TrackEventType trackEventType) {
        return this.f55014l.get(trackEventType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public v5 u() {
        return this.f55008f;
    }

    @VisibleForTesting
    void v(@NonNull final String str, @NonNull final InitResponse initResponse, @NonNull final String str2) {
        int i10;
        UrlProvider.setAuctionUrlFromInit(initResponse.getEndpoint());
        this.f55014l.clear();
        fr.e.p(this.f55014l, initResponse.getEventList());
        this.f55006d.k(initResponse.getEventConfiguration());
        SessionManager.get().setSessionResetAfter(initResponse.getSessionResetAfter());
        this.f55024v = initResponse.getAdRequestTmax();
        this.f55025w = initResponse.getAdNetworksLoadingTimeout();
        l2.b(initResponse.getShowWithoutInternet());
        s2.y(initResponse.getTokenConfigurationsList());
        Map<String, AdCachePlacementControl> adCachePlacementControlMap = initResponse.getAdCachePlacementControlMap();
        if (adCachePlacementControlMap != null) {
            w0.o(adCachePlacementControlMap);
            AdCachePlacementControl adCachePlacementControl = adCachePlacementControlMap.get(AdsType.Interstitial.getName());
            if (adCachePlacementControl != null) {
                i10 = adCachePlacementControl.getMaxCacheSize();
            } else {
                i10 = 0;
            }
            AdCachePlacementControl adCachePlacementControl2 = adCachePlacementControlMap.get(AdsType.Rewarded.getName());
            if (adCachePlacementControl2 != null) {
                i10 += adCachePlacementControl2.getMaxCacheSize();
            }
            if (i10 > 5) {
                io.bidmachine.iab.vast.a.Y(i10);
            }
        }
        io.bidmachine.iab.mraid.o.f54635e = fr.f.a(initResponse.getExtras().getInternal(), "mraid_js");
        io.bidmachine.core.g.H(this.f55018p, new Executable() { // from class: io.bidmachine.h2
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                j2.this.D(str, initResponse, str2, (Context) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(@NonNull Context context, @NonNull String str, @Nullable InitializationCallback initializationCallback) {
        K(context);
        if (A()) {
            M(initializationCallback);
        } else if (context == null) {
            io.bidmachine.core.a.d("Initialization fail: Context is not provided");
        } else if (TextUtils.isEmpty(str)) {
            io.bidmachine.core.a.d("Initialization fail: Source id is not provided");
        } else {
            if (initializationCallback != null) {
                this.f55003a.add(initializationCallback);
            }
            if (!this.f55004b.compareAndSet(false, true)) {
                return;
            }
            final Context applicationContext = context.getApplicationContext();
            SessionManager sessionManager = SessionManager.get();
            sessionManager.attachContext(applicationContext);
            this.f55018p = applicationContext;
            this.f55019q = str;
            sessionManager.resume();
            fr.b.e(applicationContext);
            UserAgentManager.initialize(context);
            pp.f.d(new c(applicationContext));
            this.f55028z = new e4(applicationContext, str, this.A);
            io.bidmachine.core.g.X(new Runnable() { // from class: io.bidmachine.g2
                @Override // java.lang.Runnable
                public final void run() {
                    j2.this.E(applicationContext);
                }
            });
        }
    }

    @VisibleForTesting
    void x(@NonNull Context context, @Nullable List<AdNetwork> list) {
        if (list == null) {
            return;
        }
        for (AdNetwork adNetwork : list) {
            NetworkRegistry.registerInitNetwork(context, adNetwork);
        }
    }

    @VisibleForTesting
    void y(@NonNull Context context, @Nullable NetworkRegistry.c cVar) {
        NetworkRegistry.registerCoreNetworks();
        NetworkRegistry.initializeNetworksAsync(context, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z() {
        if (!B() && !A()) {
            return false;
        }
        return true;
    }
}
