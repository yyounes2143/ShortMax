package com.applovin.impl.mediation;

import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.n5;
import com.applovin.impl.o3;
import com.applovin.impl.p3;
import com.applovin.impl.q2;
import com.applovin.impl.q3;
import com.applovin.impl.r3;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t5;
import com.applovin.impl.v2;
import com.applovin.impl.v4;
import com.applovin.impl.x2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8713a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f8714b = new HashMap(4);

    /* renamed from: c  reason: collision with root package name */
    private final Object f8715c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Map f8716d = new HashMap(4);

    /* renamed from: e  reason: collision with root package name */
    private final Object f8717e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Map f8718f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final Object f8719g = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements n5.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f8720a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f8721b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f8722c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ x2 f8723d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Context f8724e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0113a f8725f;

        a(long j10, Map map, String str, x2 x2Var, Context context, a.InterfaceC0113a interfaceC0113a) {
            this.f8720a = j10;
            this.f8721b = map;
            this.f8722c = str;
            this.f8723d = x2Var;
            this.f8724e = context;
            this.f8725f = interfaceC0113a;
        }

        @Override // com.applovin.impl.n5.b
        public void a(JSONArray jSONArray) {
            this.f8721b.put("sct_ms", Long.valueOf(SystemClock.elapsedRealtime() - this.f8720a));
            this.f8721b.put("calfc", Integer.valueOf(d.this.b(this.f8722c)));
            t5 t5Var = new t5(this.f8723d, jSONArray, this.f8724e, d.this.f8713a, this.f8725f);
            if (((Boolean) d.this.f8713a.a(o3.f9114e8)).booleanValue()) {
                d.this.f8713a.r0().a((g5) t5Var, b6.b.MEDIATION);
            } else {
                d.this.f8713a.r0().a(t5Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b implements a.InterfaceC0113a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f8727a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference f8728b;

        /* renamed from: c  reason: collision with root package name */
        private final d f8729c;

        /* renamed from: d  reason: collision with root package name */
        private final c f8730d;

        /* renamed from: e  reason: collision with root package name */
        private final MaxAdFormat f8731e;

        /* renamed from: f  reason: collision with root package name */
        private final Map f8732f;

        /* renamed from: g  reason: collision with root package name */
        private final Map f8733g;

        /* renamed from: h  reason: collision with root package name */
        private final Map f8734h;

        /* renamed from: i  reason: collision with root package name */
        private final int f8735i;

        /* renamed from: j  reason: collision with root package name */
        private long f8736j;

        /* renamed from: k  reason: collision with root package name */
        private long f8737k;

        /* synthetic */ b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j10, long j11, d dVar, com.applovin.impl.sdk.k kVar, Context context, a aVar) {
            this(map, map2, map3, cVar, maxAdFormat, j10, j11, dVar, kVar, context);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, MaxError maxError) {
            boolean z10;
            this.f8729c.c(str);
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f8736j;
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) maxError.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.f8727a.X().processWaterfallInfoPostback(maxAdWaterfallInfoImpl, maxError, this.f8737k, elapsedRealtime);
            }
            if (maxError.getCode() == -5603 && k7.c(this.f8727a) && ((Boolean) this.f8727a.a(v4.f10320o6)).booleanValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!this.f8727a.a(o3.Y7, this.f8731e) || this.f8730d.f8740c >= this.f8735i || z10) {
                this.f8730d.f8740c = 0;
                this.f8730d.f8739b.set(false);
                if (this.f8730d.f8741d != null) {
                    MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxError;
                    maxErrorImpl.setLoadTag(this.f8730d.f8738a);
                    maxErrorImpl.setRequestLatencyMillis(elapsedRealtime);
                    q2.a(this.f8730d.f8741d, str, maxError);
                    this.f8730d.f8741d = null;
                    return;
                }
                return;
            }
            c.e(this.f8730d);
            final int pow = (int) Math.pow(2.0d, this.f8730d.f8740c);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.t
                @Override // java.lang.Runnable
                public final void run() {
                    d.b.this.a(pow, str);
                }
            }, TimeUnit.SECONDS.toMillis(pow));
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            v2 v2Var = (v2) maxAd;
            v2Var.i(this.f8730d.f8738a);
            v2Var.a(SystemClock.elapsedRealtime() - this.f8736j);
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) v2Var.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.f8727a.X().processWaterfallInfoPostback(maxAdWaterfallInfoImpl, null, this.f8737k, v2Var.getRequestLatencyMillis());
            }
            this.f8729c.a(maxAd.getAdUnitId());
            this.f8730d.f8740c = 0;
            if (this.f8730d.f8741d == null) {
                this.f8729c.a(v2Var);
                this.f8730d.f8739b.set(false);
                return;
            }
            v2Var.A().c().a(this.f8730d.f8741d);
            this.f8730d.f8741d.onAdLoaded(v2Var);
            if (v2Var.N().endsWith("load")) {
                this.f8730d.f8741d.onAdRevenuePaid(v2Var);
            }
            this.f8730d.f8741d = null;
            if ((this.f8727a.c(o3.U7).contains(maxAd.getAdUnitId()) || this.f8727a.a(o3.T7, maxAd.getFormat())) && !this.f8727a.t0().c() && !this.f8727a.t0().d()) {
                Context context = (Context) this.f8728b.get();
                if (context == null) {
                    context = com.applovin.impl.sdk.k.o();
                }
                Context context2 = context;
                this.f8736j = SystemClock.elapsedRealtime();
                this.f8737k = System.currentTimeMillis();
                this.f8734h.put("art", com.applovin.impl.i.SEQUENTIAL_OR_PRECACHE.b());
                this.f8729c.a(maxAd.getAdUnitId(), maxAd.getFormat(), this.f8732f, this.f8733g, this.f8734h, context2, this);
                return;
            }
            this.f8730d.f8739b.set(false);
        }

        private b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j10, long j11, d dVar, com.applovin.impl.sdk.k kVar, Context context) {
            this.f8727a = kVar;
            this.f8728b = new WeakReference(context);
            this.f8729c = dVar;
            this.f8730d = cVar;
            this.f8731e = maxAdFormat;
            this.f8733g = map2;
            this.f8732f = map;
            this.f8734h = map3;
            this.f8736j = j10;
            this.f8737k = j11;
            if (CollectionUtils.getBoolean(map2, "disable_auto_retries")) {
                this.f8735i = -1;
            } else if (maxAdFormat.isAdViewAd() && CollectionUtils.getBoolean(map2, "auto_refresh_stopped")) {
                this.f8735i = Math.min(2, ((Integer) kVar.a(o3.X7)).intValue());
            } else {
                this.f8735i = ((Integer) kVar.a(o3.X7)).intValue();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i10, String str) {
            this.f8733g.put("retry_delay_sec", Integer.valueOf(i10));
            this.f8733g.put("retry_attempt", Integer.valueOf(this.f8730d.f8740c));
            Context context = (Context) this.f8728b.get();
            if (context == null) {
                context = com.applovin.impl.sdk.k.o();
            }
            Context context2 = context;
            this.f8734h.put("art", com.applovin.impl.i.EXPONENTIAL_RETRY.b());
            this.f8734h.put("era", Integer.valueOf(this.f8730d.f8740c));
            this.f8737k = System.currentTimeMillis();
            this.f8729c.a(str, this.f8731e, this.f8732f, this.f8733g, this.f8734h, context2, this);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f8738a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f8739b;

        /* renamed from: c  reason: collision with root package name */
        private int f8740c;

        /* renamed from: d  reason: collision with root package name */
        private volatile a.InterfaceC0113a f8741d;

        /* synthetic */ c(String str, a aVar) {
            this(str);
        }

        static /* synthetic */ int e(c cVar) {
            int i10 = cVar.f8740c;
            cVar.f8740c = i10 + 1;
            return i10;
        }

        private c(String str) {
            this.f8739b = new AtomicBoolean();
            this.f8738a = str;
        }
    }

    public d(com.applovin.impl.sdk.k kVar) {
        this.f8713a = kVar;
    }

    private v2 e(String str) {
        v2 v2Var;
        synchronized (this.f8717e) {
            v2Var = (v2) this.f8716d.get(str);
            this.f8716d.remove(str);
        }
        return v2Var;
    }

    public void c(String str, String str2) {
        synchronized (this.f8715c) {
            this.f8714b.remove(b(str, str2));
        }
    }

    public boolean d(String str) {
        boolean z10;
        synchronized (this.f8717e) {
            if (this.f8716d.get(str) != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    private String b(String str, String str2) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        if (str2 != null) {
            str3 = "-" + str2;
        } else {
            str3 = "";
        }
        sb2.append(str3);
        return sb2.toString();
    }

    public int b(String str) {
        int intValue;
        synchronized (this.f8719g) {
            try {
                Integer num = (Integer) this.f8718f.get(str);
                intValue = num != null ? num.intValue() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return intValue;
    }

    public void a(String str, String str2, MaxAdFormat maxAdFormat, com.applovin.impl.i iVar, Map map, Map map2, Context context, a.InterfaceC0113a interfaceC0113a) {
        v2 e10 = (this.f8713a.t0().d() || k7.h(com.applovin.impl.sdk.k.o())) ? null : e(str);
        if (e10 != null) {
            e10.i(str2);
            e10.A().c().a(interfaceC0113a);
            interfaceC0113a.onAdLoaded(e10);
            if (e10.N().endsWith("load")) {
                interfaceC0113a.onAdRevenuePaid(e10);
            }
        }
        c a10 = a(str, str2);
        if (!a10.f8739b.compareAndSet(false, true)) {
            if (a10.f8741d != null && a10.f8741d != interfaceC0113a) {
                com.applovin.impl.sdk.o.j("MediationAdLoadManager", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
            }
            a10.f8741d = interfaceC0113a;
            return;
        }
        if (e10 == null) {
            a10.f8741d = interfaceC0113a;
        }
        Map synchronizedMap = Collections.synchronizedMap(new HashMap());
        synchronizedMap.put("art", iVar.b());
        if (StringUtils.isValidString(str2)) {
            synchronizedMap.put("alt", str2);
        }
        a(str, maxAdFormat, map, map2, synchronizedMap, context, new b(map, map2, synchronizedMap, a10, maxAdFormat, SystemClock.elapsedRealtime(), System.currentTimeMillis(), this, this.f8713a, context, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        synchronized (this.f8719g) {
            try {
                this.f8713a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f8713a.O();
                    O.a("MediationAdLoadManager", "Incrementing ad load failures count for ad unit ID: " + str);
                }
                Integer num = (Integer) this.f8718f.get(str);
                if (num == null) {
                    num = 0;
                }
                this.f8718f.put(str, Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, Context context, a.InterfaceC0113a interfaceC0113a) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        x2 x2Var = new x2(str, maxAdFormat, map, map2, map3, a(str, maxAdFormat));
        this.f8713a.r0().a((g5) new n5(x2Var, context, this.f8713a, new a(elapsedRealtime, map3, str, x2Var, context, interfaceC0113a)), b6.b.MEDIATION);
    }

    private com.applovin.impl.h a(String str, MaxAdFormat maxAdFormat) {
        if (((Boolean) this.f8713a.a(v4.C4)).booleanValue()) {
            r3 Y = this.f8713a.Y();
            p3 p3Var = p3.f9202e;
            Map a10 = Y.a(p3Var, q3.a(str));
            p3.a aVar = p3.a.SESSION;
            int a11 = a(a10, aVar);
            p3.a aVar2 = p3.a.INSTALL;
            int a12 = a(a10, aVar2);
            Map a13 = this.f8713a.Y().a(p3Var, q3.a(maxAdFormat));
            return new com.applovin.impl.h(a11, a12, a(a13, aVar), a(a13, aVar2));
        }
        return new com.applovin.impl.h(-1, -1, -1, -1);
    }

    private int a(Map map, p3.a aVar) {
        Long l10;
        if (map == null || (l10 = (Long) map.get(aVar.b())) == null) {
            return -1;
        }
        return l10.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v2 v2Var) {
        synchronized (this.f8717e) {
            try {
                if (this.f8716d.containsKey(v2Var.getAdUnitId())) {
                    com.applovin.impl.sdk.o.h("AppLovinSdk", "Ad in cache already: " + v2Var.getAdUnitId());
                }
                this.f8716d.put(v2Var.getAdUnitId(), v2Var);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private c a(String str, String str2) {
        c cVar;
        synchronized (this.f8715c) {
            try {
                String b10 = b(str, str2);
                cVar = (c) this.f8714b.get(b10);
                if (cVar == null) {
                    cVar = new c(str2, null);
                    this.f8714b.put(b10, cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.f8719g) {
            try {
                this.f8713a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f8713a.O();
                    O.a("MediationAdLoadManager", "Clearing ad load failures count for ad unit ID: " + str);
                }
                this.f8718f.remove(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
