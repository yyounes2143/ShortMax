package io.bidmachine.ads.networks.gam;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.ads.networks.gam.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: GAMLoader.java */
/* loaded from: classes7.dex */
public class j {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53666a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Context f53667b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final dm.b f53668c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final String f53669d;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f53671f;

    /* renamed from: g  reason: collision with root package name */
    private final long f53672g;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Map<AdsFormat, r> f53670e = new HashMap();
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final b f53673h = new b();
    @NonNull
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    final List<InternalGAMAd> f53674i = new ArrayList();
    @NonNull
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    final Map<NetworkAdUnit, InternalGAMAd> f53675j = new WeakHashMap();
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final Object f53676k = new Object();
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final Object f53677l = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GAMLoader.java */
    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: d  reason: collision with root package name */
        private static final int f53678d;

        /* renamed from: e  reason: collision with root package name */
        private static final int f53679e;
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ScheduledExecutorService f53680a = Executors.newScheduledThreadPool(f53679e);
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<AdsFormat, Map<String, Future<?>>> f53681b = new EnumMap(AdsFormat.class);
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final Object f53682c = new Object();

        static {
            int availableProcessors = Runtime.getRuntime().availableProcessors();
            f53678d = availableProcessors;
            f53679e = Math.max(2, Math.min(availableProcessors - 1, 4));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(c cVar, AdsFormat adsFormat) {
            cVar.run();
            e(adsFormat, cVar.f53683a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(@NonNull final AdsFormat adsFormat, @NonNull final c cVar) {
            try {
                synchronized (this.f53682c) {
                    Map<String, Future<?>> map = this.f53681b.get(adsFormat);
                    if (map != null && !map.isEmpty()) {
                        return;
                    }
                    Future<?> submit = this.f53680a.submit(new Runnable() { // from class: io.bidmachine.ads.networks.gam.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.b.this.c(cVar, adsFormat);
                        }
                    });
                    if (map == null) {
                        map = new HashMap<>();
                        this.f53681b.put(adsFormat, map);
                    }
                    map.put(cVar.f53683a, submit);
                }
            } catch (Throwable unused) {
            }
        }

        private void e(@NonNull AdsFormat adsFormat, @NonNull String str) {
            synchronized (this.f53682c) {
                try {
                    Map<String, Future<?>> map = this.f53681b.get(adsFormat);
                    if (map != null) {
                        map.remove(str);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GAMLoader.java */
    /* loaded from: classes7.dex */
    public static class c implements Runnable {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f53683a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final j f53684b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final r f53685c;

        /* renamed from: d  reason: collision with root package name */
        private final int f53686d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: GAMLoader.java */
        /* loaded from: classes7.dex */
        public static class a implements n0 {
            @NonNull

            /* renamed from: a  reason: collision with root package name */
            private final CountDownLatch f53687a;

            @Override // io.bidmachine.ads.networks.gam.n0
            public void a(@NonNull InternalGAMAd internalGAMAd) {
                this.f53687a.countDown();
            }

            @Override // io.bidmachine.ads.networks.gam.n0
            public void b(@NonNull InternalGAMAd internalGAMAd, @NonNull fr.a aVar) {
                this.f53687a.countDown();
            }

            private a(@NonNull CountDownLatch countDownLatch) {
                this.f53687a = countDownLatch;
            }
        }

        private boolean c(@NonNull InternalGAMAd internalGAMAd) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            try {
                internalGAMAd.A(this.f53684b.f53667b, new a(countDownLatch));
                countDownLatch.await();
            } catch (Throwable unused) {
                countDownLatch.countDown();
            }
            if (!internalGAMAd.r()) {
                this.f53684b.i(internalGAMAd);
                return false;
            }
            this.f53684b.D(internalGAMAd);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                for (t tVar : new ArrayList(this.f53685c.c())) {
                    InternalGAMAd e10 = this.f53684b.f53668c.e(this.f53684b, this.f53685c.a(), tVar);
                    if (e10 != null) {
                        if (!c(e10)) {
                            Thread.sleep(this.f53686d);
                        } else {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }

        private c(@NonNull j jVar, @NonNull r rVar, int i10) {
            this.f53683a = UUID.randomUUID().toString();
            this.f53684b = jVar;
            this.f53685c = rVar;
            this.f53686d = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(@NonNull Context context, @NonNull dm.b bVar, @NonNull String str, @NonNull Map<AdsFormat, r> map, @Nullable String str2, long j10) {
        this.f53666a = new fr.j(str + "Loader");
        this.f53667b = context;
        this.f53668c = bVar;
        this.f53669d = str;
        this.f53671f = str2;
        this.f53672g = j10;
        for (AdsFormat adsFormat : AdsFormat.values()) {
            r rVar = map.get(adsFormat);
            if (rVar != null && !rVar.c().isEmpty()) {
                C(rVar.c());
                this.f53670e.put(rVar.a(), rVar);
            }
        }
    }

    private void C(@NonNull List<t> list) {
        Collections.sort(list, new Comparator() { // from class: io.bidmachine.ads.networks.gam.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int r10;
                r10 = j.r((t) obj, (t) obj2);
                return r10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(@NonNull InternalGAMAd internalGAMAd) {
        try {
            internalGAMAd.h();
        } catch (Throwable unused) {
        }
        z(internalGAMAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String p(InternalGAMAd internalGAMAd) {
        return String.format("removeFromCaches (%s)", internalGAMAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String q(NetworkAdUnit networkAdUnit, InternalGAMAd internalGAMAd) {
        return String.format("reserveGAMAd (networkAdUnitId - %s, %s)", networkAdUnit.getId(), internalGAMAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int r(t tVar, t tVar2) {
        return -Float.compare(tVar.d(), tVar2.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int s(InternalGAMAd internalGAMAd, InternalGAMAd internalGAMAd2) {
        return -Float.compare(internalGAMAd.p(), internalGAMAd2.p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String t(NetworkAdUnit networkAdUnit) {
        return String.format("unReserveGAMAd (networkAdUnitId - %s)", networkAdUnit.getId());
    }

    private int w(@NonNull r rVar) {
        int i10;
        synchronized (this.f53676k) {
            try {
                i10 = 0;
                for (InternalGAMAd internalGAMAd : this.f53674i) {
                    if (internalGAMAd.m() == rVar.a()) {
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    private void z(@NonNull final InternalGAMAd internalGAMAd) {
        synchronized (this.f53676k) {
            try {
                if (this.f53674i.remove(internalGAMAd)) {
                    io.bidmachine.core.a.b(this.f53666a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.h
                        @Override // hr.b
                        public final Object get() {
                            String p10;
                            p10 = j.p(InternalGAMAd.this);
                            return p10;
                        }
                    });
                }
                F(internalGAMAd);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void A(@NonNull final NetworkAdUnit networkAdUnit, @NonNull final InternalGAMAd internalGAMAd) {
        synchronized (this.f53677l) {
            io.bidmachine.core.a.b(this.f53666a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.i
                @Override // hr.b
                public final Object get() {
                    String q10;
                    q10 = j.q(NetworkAdUnit.this, internalGAMAd);
                    return q10;
                }
            });
            this.f53675j.put(networkAdUnit, internalGAMAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public t B(@NonNull NetworkAdUnit networkAdUnit, @NonNull String str) {
        synchronized (this.f53676k) {
            try {
                InternalGAMAd j10 = j(str);
                if (j10 != null) {
                    A(networkAdUnit, j10);
                    return j10.o();
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    void D(@NonNull InternalGAMAd internalGAMAd) {
        synchronized (this.f53676k) {
            try {
                if (this.f53674i.contains(internalGAMAd)) {
                    return;
                }
                this.f53674i.add(internalGAMAd);
                Collections.sort(this.f53674i, new Comparator() { // from class: io.bidmachine.ads.networks.gam.e
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int s10;
                        s10 = j.s((InternalGAMAd) obj, (InternalGAMAd) obj2);
                        return s10;
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E(@NonNull final NetworkAdUnit networkAdUnit) {
        synchronized (this.f53677l) {
            io.bidmachine.core.a.b(this.f53666a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.f
                @Override // hr.b
                public final Object get() {
                    String t10;
                    t10 = j.t(NetworkAdUnit.this);
                    return t10;
                }
            });
            this.f53675j.remove(networkAdUnit);
        }
    }

    @VisibleForTesting
    void F(@NonNull InternalGAMAd internalGAMAd) {
        synchronized (this.f53677l) {
            try {
                ArrayList<NetworkAdUnit> arrayList = new ArrayList();
                for (Map.Entry<NetworkAdUnit, InternalGAMAd> entry : this.f53675j.entrySet()) {
                    if (entry.getValue().equals(internalGAMAd)) {
                        arrayList.add(entry.getKey());
                    }
                }
                for (NetworkAdUnit networkAdUnit : arrayList) {
                    E(networkAdUnit);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    @VisibleForTesting
    InternalGAMAd j(@NonNull String str) {
        synchronized (this.f53676k) {
            try {
                for (InternalGAMAd internalGAMAd : this.f53674i) {
                    if (internalGAMAd.l().equals(str) && !o(internalGAMAd)) {
                        return internalGAMAd;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public long k() {
        return this.f53672g;
    }

    @NonNull
    public String l() {
        return this.f53669d;
    }

    @Nullable
    public String m() {
        return this.f53671f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public InternalGAMAd n(@NonNull NetworkAdUnit networkAdUnit) {
        InternalGAMAd internalGAMAd;
        synchronized (this.f53677l) {
            internalGAMAd = this.f53675j.get(networkAdUnit);
        }
        return internalGAMAd;
    }

    @VisibleForTesting
    boolean o(@NonNull InternalGAMAd internalGAMAd) {
        boolean containsValue;
        synchronized (this.f53677l) {
            containsValue = this.f53675j.containsValue(internalGAMAd);
        }
        return containsValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        for (AdsFormat adsFormat : AdsFormat.values()) {
            v(adsFormat);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v(@NonNull AdsFormat adsFormat) {
        r rVar = this.f53670e.get(adsFormat);
        if (rVar != null && w(rVar) < rVar.b()) {
            this.f53673h.d(adsFormat, new c(rVar, 500));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(@NonNull InternalGAMAd internalGAMAd, boolean z10) {
        if (z10) {
            internalGAMAd.E();
            z(internalGAMAd);
            return;
        }
        F(internalGAMAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(@NonNull InternalGAMAd internalGAMAd) {
        z(internalGAMAd);
    }
}
