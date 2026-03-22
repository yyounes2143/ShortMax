package com.applovin.impl.mediation;

import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.e;
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
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8786a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f8787b = new HashMap(4);

    /* renamed from: c  reason: collision with root package name */
    private final Object f8788c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Map f8789d = new HashMap(4);

    /* renamed from: e  reason: collision with root package name */
    private final Object f8790e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Map f8791f = Collections.synchronizedMap(new HashMap(4));

    /* renamed from: g  reason: collision with root package name */
    private final Map f8792g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    private final Object f8793h = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements n5.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f8794a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f8795b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f8796c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ x2 f8797d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Context f8798e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0113a f8799f;

        a(long j10, Map map, String str, x2 x2Var, Context context, a.InterfaceC0113a interfaceC0113a) {
            this.f8794a = j10;
            this.f8795b = map;
            this.f8796c = str;
            this.f8797d = x2Var;
            this.f8798e = context;
            this.f8799f = interfaceC0113a;
        }

        @Override // com.applovin.impl.n5.b
        public void a(JSONArray jSONArray) {
            this.f8795b.put("sct_ms", Long.valueOf(SystemClock.elapsedRealtime() - this.f8794a));
            this.f8795b.put("calfc", Integer.valueOf(e.this.b(this.f8796c)));
            t5 t5Var = new t5(this.f8797d, jSONArray, this.f8798e, e.this.f8786a, this.f8799f);
            if (((Boolean) e.this.f8786a.a(o3.f9114e8)).booleanValue()) {
                e.this.f8786a.r0().a((g5) t5Var, b6.b.MEDIATION);
            } else {
                e.this.f8786a.r0().a(t5Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b implements a.InterfaceC0113a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.k f8801a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference f8802b;

        /* renamed from: c  reason: collision with root package name */
        private final e f8803c;

        /* renamed from: d  reason: collision with root package name */
        private final c f8804d;

        /* renamed from: e  reason: collision with root package name */
        private final MaxAdFormat f8805e;

        /* renamed from: f  reason: collision with root package name */
        private final Map f8806f;

        /* renamed from: g  reason: collision with root package name */
        private final Map f8807g;

        /* renamed from: h  reason: collision with root package name */
        private final Map f8808h;

        /* renamed from: i  reason: collision with root package name */
        private final int f8809i;

        /* renamed from: j  reason: collision with root package name */
        private long f8810j;

        /* renamed from: k  reason: collision with root package name */
        private long f8811k;

        /* synthetic */ b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j10, long j11, e eVar, com.applovin.impl.sdk.k kVar, Context context, a aVar) {
            this(map, map2, map3, cVar, maxAdFormat, j10, j11, eVar, kVar, context);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, MaxError maxError) {
            boolean z10;
            this.f8803c.d(str);
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f8810j;
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) maxError.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.f8801a.X().processWaterfallInfoPostback(maxAdWaterfallInfoImpl, maxError, this.f8811k, elapsedRealtime);
            }
            if (maxError.getCode() == -5603 && k7.c(this.f8801a) && ((Boolean) this.f8801a.a(v4.f10320o6)).booleanValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!this.f8801a.a(o3.Y7, this.f8805e) || this.f8804d.f8814c >= this.f8809i || z10) {
                this.f8804d.f8814c = 0;
                this.f8804d.f8813b.set(false);
                if (this.f8804d.f8815d != null) {
                    MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxError;
                    maxErrorImpl.setLoadTag(this.f8804d.f8812a);
                    maxErrorImpl.setRequestLatencyMillis(elapsedRealtime);
                    q2.a(this.f8804d.f8815d, str, maxError);
                    this.f8804d.f8815d = null;
                    return;
                }
                return;
            }
            c.e(this.f8804d);
            final int pow = (int) Math.pow(2.0d, this.f8804d.f8814c);
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.u
                @Override // java.lang.Runnable
                public final void run() {
                    e.b.this.a(pow, str);
                }
            }, TimeUnit.SECONDS.toMillis(pow));
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            int sizeSafely;
            v2 v2Var = (v2) maxAd;
            v2Var.i(this.f8804d.f8812a);
            v2Var.a(SystemClock.elapsedRealtime() - this.f8810j);
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) v2Var.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.f8801a.X().processWaterfallInfoPostback(maxAdWaterfallInfoImpl, null, this.f8811k, v2Var.getRequestLatencyMillis());
            }
            this.f8803c.a(maxAd.getAdUnitId());
            this.f8804d.f8814c = 0;
            if (this.f8804d.f8815d == null) {
                this.f8803c.a(v2Var);
                this.f8804d.f8813b.set(false);
                int K = v2Var.K();
                synchronized (this.f8803c.f8790e) {
                    sizeSafely = CollectionUtils.getSizeSafely((Queue) this.f8803c.f8789d.get(maxAd.getAdUnitId()));
                }
                if (sizeSafely < K) {
                    int i10 = sizeSafely + 1;
                    this.f8801a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f8801a.O();
                        O.a("MediationAdLoadManagerV2", "Preloading waterfall " + i10 + " of " + K);
                    }
                    a(maxAd);
                    return;
                }
                return;
            }
            v2Var.A().c().a(this.f8804d.f8815d);
            this.f8804d.f8815d.onAdLoaded(v2Var);
            this.f8803c.f8791f.put(maxAd.getAdUnitId(), v2Var);
            if (v2Var.N().endsWith("load")) {
                this.f8804d.f8815d.onAdRevenuePaid(v2Var);
            }
            this.f8804d.f8815d = null;
            if ((this.f8801a.c(o3.U7).contains(maxAd.getAdUnitId()) || this.f8801a.a(o3.T7, maxAd.getFormat())) && !this.f8801a.t0().c() && !this.f8801a.t0().d()) {
                int K2 = v2Var.K();
                this.f8801a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = this.f8801a.O();
                    O2.a("MediationAdLoadManagerV2", "Preloading waterfall 1 of " + K2);
                }
                a(maxAd);
                return;
            }
            this.f8804d.f8813b.set(false);
        }

        private b(Map map, Map map2, Map map3, c cVar, MaxAdFormat maxAdFormat, long j10, long j11, e eVar, com.applovin.impl.sdk.k kVar, Context context) {
            this.f8801a = kVar;
            this.f8802b = new WeakReference(context);
            this.f8803c = eVar;
            this.f8804d = cVar;
            this.f8805e = maxAdFormat;
            this.f8807g = map2;
            this.f8806f = map;
            this.f8808h = map3;
            this.f8810j = j10;
            this.f8811k = j11;
            if (CollectionUtils.getBoolean(map2, "disable_auto_retries")) {
                this.f8809i = -1;
            } else if (maxAdFormat.isAdViewAd() && CollectionUtils.getBoolean(map2, "auto_refresh_stopped")) {
                this.f8809i = Math.min(2, ((Integer) kVar.a(o3.X7)).intValue());
            } else {
                this.f8809i = ((Integer) kVar.a(o3.X7)).intValue();
            }
        }

        private void a(MaxAd maxAd) {
            Context context = (Context) this.f8802b.get();
            if (context == null) {
                context = com.applovin.impl.sdk.k.o();
            }
            Context context2 = context;
            this.f8810j = SystemClock.elapsedRealtime();
            this.f8811k = System.currentTimeMillis();
            this.f8808h.put("art", com.applovin.impl.i.SEQUENTIAL_OR_PRECACHE.b());
            this.f8803c.a(maxAd.getAdUnitId(), maxAd.getFormat(), this.f8806f, this.f8807g, this.f8808h, context2, this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i10, String str) {
            this.f8807g.put("retry_delay_sec", Integer.valueOf(i10));
            this.f8807g.put("retry_attempt", Integer.valueOf(this.f8804d.f8814c));
            Context context = (Context) this.f8802b.get();
            if (context == null) {
                context = com.applovin.impl.sdk.k.o();
            }
            Context context2 = context;
            this.f8808h.put("art", com.applovin.impl.i.EXPONENTIAL_RETRY.b());
            this.f8808h.put("era", Integer.valueOf(this.f8804d.f8814c));
            this.f8811k = System.currentTimeMillis();
            this.f8803c.a(str, this.f8805e, this.f8806f, this.f8807g, this.f8808h, context2, this);
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
        private final String f8812a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f8813b;

        /* renamed from: c  reason: collision with root package name */
        private int f8814c;

        /* renamed from: d  reason: collision with root package name */
        private volatile a.InterfaceC0113a f8815d;

        /* synthetic */ c(String str, a aVar) {
            this(str);
        }

        static /* synthetic */ int e(c cVar) {
            int i10 = cVar.f8814c;
            cVar.f8814c = i10 + 1;
            return i10;
        }

        private c(String str) {
            this.f8813b = new AtomicBoolean();
            this.f8812a = str;
        }
    }

    public e(com.applovin.impl.sdk.k kVar) {
        this.f8786a = kVar;
    }

    private v2 f(String str) {
        synchronized (this.f8790e) {
            try {
                Queue queue = (Queue) this.f8789d.get(str);
                if (CollectionUtils.isEmpty(queue)) {
                    return null;
                }
                return (v2) queue.poll();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean e(String str) {
        boolean z10;
        synchronized (this.f8790e) {
            z10 = !CollectionUtils.isEmpty((Queue) this.f8789d.get(str));
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

    public Queue c(String str) {
        ArrayDeque arrayDeque = new ArrayDeque();
        v2 v2Var = (v2) this.f8791f.get(str);
        if (v2Var != null) {
            arrayDeque.add(v2Var);
        }
        synchronized (this.f8788c) {
            try {
                Queue queue = (Queue) this.f8789d.get(str);
                if (queue != null) {
                    arrayDeque.addAll(queue);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayDeque;
    }

    public void d(String str) {
        synchronized (this.f8793h) {
            try {
                this.f8786a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f8786a.O();
                    O.a("MediationAdLoadManagerV2", "Incrementing ad load failures count for ad unit ID: " + str);
                }
                Integer num = (Integer) this.f8792g.get(str);
                if (num == null) {
                    num = 0;
                }
                this.f8792g.put(str, Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int b(String str) {
        int intValue;
        synchronized (this.f8793h) {
            try {
                Integer num = (Integer) this.f8792g.get(str);
                intValue = num != null ? num.intValue() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return intValue;
    }

    public void a(String str, String str2, MaxAdFormat maxAdFormat, com.applovin.impl.i iVar, Map map, Map map2, Context context, a.InterfaceC0113a interfaceC0113a) {
        v2 f10 = (this.f8786a.t0().d() || k7.h(com.applovin.impl.sdk.k.o())) ? null : f(str);
        if (f10 != null) {
            f10.i(str2);
            f10.A().c().a(interfaceC0113a);
            interfaceC0113a.onAdLoaded(f10);
            this.f8791f.put(str, f10);
            if (f10.N().endsWith("load")) {
                interfaceC0113a.onAdRevenuePaid(f10);
            }
        }
        c a10 = a(str, str2);
        if (!a10.f8813b.compareAndSet(false, true)) {
            if (a10.f8815d != null && a10.f8815d != interfaceC0113a) {
                com.applovin.impl.sdk.o.j("MediationAdLoadManagerV2", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
            }
            a10.f8815d = interfaceC0113a;
            return;
        }
        if (f10 == null) {
            a10.f8815d = interfaceC0113a;
        }
        Map synchronizedMap = Collections.synchronizedMap(new HashMap());
        synchronizedMap.put("art", iVar.b());
        if (StringUtils.isValidString(str2)) {
            synchronizedMap.put("alt", str2);
        }
        a(str, maxAdFormat, map, map2, synchronizedMap, context, new b(map, map2, synchronizedMap, a10, maxAdFormat, SystemClock.elapsedRealtime(), System.currentTimeMillis(), this, this.f8786a, context, null));
    }

    public void c(String str, String str2) {
        synchronized (this.f8788c) {
            this.f8787b.remove(b(str, str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, Context context, a.InterfaceC0113a interfaceC0113a) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        x2 x2Var = new x2(str, maxAdFormat, map, map2, map3, a(str, maxAdFormat));
        this.f8786a.r0().a((g5) new n5(x2Var, context, this.f8786a, new a(elapsedRealtime, map3, str, x2Var, context, interfaceC0113a)), b6.b.MEDIATION);
    }

    private com.applovin.impl.h a(String str, MaxAdFormat maxAdFormat) {
        if (((Boolean) this.f8786a.a(v4.C4)).booleanValue()) {
            r3 Y = this.f8786a.Y();
            p3 p3Var = p3.f9202e;
            Map a10 = Y.a(p3Var, q3.a(str));
            p3.a aVar = p3.a.SESSION;
            int a11 = a(a10, aVar);
            p3.a aVar2 = p3.a.INSTALL;
            int a12 = a(a10, aVar2);
            Map a13 = this.f8786a.Y().a(p3Var, q3.a(maxAdFormat));
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
        synchronized (this.f8790e) {
            try {
                Queue queue = (Queue) this.f8789d.get(v2Var.getAdUnitId());
                if (queue == null) {
                    queue = new ArrayDeque();
                    this.f8789d.put(v2Var.getAdUnitId(), queue);
                }
                queue.add(v2Var);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private c a(String str, String str2) {
        c cVar;
        synchronized (this.f8788c) {
            try {
                String b10 = b(str, str2);
                cVar = (c) this.f8787b.get(b10);
                if (cVar == null) {
                    cVar = new c(str2, null);
                    this.f8787b.put(b10, cVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.f8793h) {
            try {
                this.f8786a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f8786a.O();
                    O.a("MediationAdLoadManagerV2", "Clearing ad load failures count for ad unit ID: " + str);
                }
                this.f8792g.remove(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
