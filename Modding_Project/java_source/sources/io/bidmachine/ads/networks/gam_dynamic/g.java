package io.bidmachine.ads.networks.gam_dynamic;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.StringValue;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.protobuf.Waterfall;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMAdManager.java */
/* loaded from: classes7.dex */
public class g {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53749a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final List<InternalAd> f53750b = new ArrayList();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Object f53751c = new Object();
    @NonNull
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Map<NetworkAdUnit, InternalAd> f53752d = new WeakHashMap();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Object f53753e = new Object();

    public g(@NonNull String str) {
        this.f53749a = new fr.j(str + "AdManager");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String n(InternalAd internalAd) {
        return String.format("Remove ad from caches (%s, size - %s)", internalAd, Integer.valueOf(j(internalAd.n())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String o(NetworkAdUnit networkAdUnit, InternalAd internalAd) {
        return String.format("Reserve ad (networkAdUnitId - %s, %s, %s / %s)", networkAdUnit.getId(), internalAd, Integer.valueOf(l(internalAd.n())), Integer.valueOf(j(internalAd.n())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int p(InternalAd internalAd, InternalAd internalAd2) {
        return -Double.compare(internalAd.getPrice(), internalAd2.getPrice());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String q(InternalAd internalAd) {
        return String.format("Store ad (%s, size - %s)", internalAd, Integer.valueOf(j(internalAd.n())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String r(InternalAd internalAd) {
        return String.format("Remove cheapest ad (%s)", internalAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String s(NetworkAdUnit networkAdUnit, InternalAd internalAd) {
        return String.format("UnReserve ad (networkAdUnitId - %s, %s, %s / %s)", networkAdUnit.getId(), internalAd, Integer.valueOf(l(internalAd.n())), Integer.valueOf(j(internalAd.n())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(@NonNull InternalAd internalAd) {
        synchronized (this.f53753e) {
            try {
                ArrayList<NetworkAdUnit> arrayList = new ArrayList();
                for (Map.Entry<NetworkAdUnit, InternalAd> entry : this.f53752d.entrySet()) {
                    if (entry.getValue().equals(internalAd)) {
                        arrayList.add(entry.getKey());
                    }
                }
                for (NetworkAdUnit networkAdUnit : arrayList) {
                    z(networkAdUnit);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public InternalAd g(@NonNull AdsFormat adsFormat) {
        synchronized (this.f53751c) {
            try {
                for (int size = this.f53750b.size() - 1; size >= 0; size--) {
                    InternalAd internalAd = this.f53750b.get(size);
                    if (internalAd.n() == adsFormat && !m(internalAd)) {
                        return internalAd;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    InternalAd h(@NonNull AdsFormat adsFormat) {
        synchronized (this.f53751c) {
            try {
                for (InternalAd internalAd : this.f53750b) {
                    if (internalAd.n() == adsFormat && !m(internalAd)) {
                        return internalAd;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public List<Waterfall.Result.CachedAdUnit> i(@NonNull AdsFormat adsFormat) {
        synchronized (this.f53751c) {
            try {
                if (this.f53750b.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (InternalAd internalAd : this.f53750b) {
                    if (internalAd.n() == adsFormat) {
                        Waterfall.Configuration.AdUnit m10 = internalAd.m();
                        Waterfall.Result.CachedAdUnit.Builder frozen = Waterfall.Result.CachedAdUnit.newBuilder().setPrice(m10.getPrice()).setFrozen(m(internalAd));
                        if (m10.getAdUnitId() != null) {
                            frozen.setAdUnitId(m10.getAdUnitId());
                        }
                        StringValue serverParams = m10.getServerParams();
                        if (serverParams != null) {
                            frozen.setServerParams(serverParams);
                        }
                        hm.l o10 = internalAd.o();
                        if (o10 != null) {
                            Waterfall.Result.EstimatedPrice b10 = o10.b();
                            if (b10 != null) {
                                frozen.setEstimatedPrice(b10);
                            }
                            String a10 = o10.a();
                            if (!TextUtils.isEmpty(a10)) {
                                frozen.setAdResponse(StringValue.newBuilder().setValue(a10).build());
                            }
                        }
                        arrayList.add(frozen.build());
                    }
                }
                return arrayList;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(@NonNull AdsFormat adsFormat) {
        int i10;
        synchronized (this.f53751c) {
            try {
                i10 = 0;
                for (InternalAd internalAd : this.f53750b) {
                    if (internalAd.n() == adsFormat) {
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public InternalAd k(@NonNull NetworkAdUnit networkAdUnit) {
        InternalAd internalAd;
        synchronized (this.f53753e) {
            internalAd = this.f53752d.get(networkAdUnit);
        }
        return internalAd;
    }

    int l(@NonNull AdsFormat adsFormat) {
        int i10;
        synchronized (this.f53753e) {
            try {
                i10 = 0;
                for (InternalAd internalAd : this.f53752d.values()) {
                    if (internalAd.n() == adsFormat) {
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    boolean m(@NonNull InternalAd internalAd) {
        boolean containsValue;
        synchronized (this.f53753e) {
            containsValue = this.f53752d.containsValue(internalAd);
        }
        return containsValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t(@NonNull final InternalAd internalAd) {
        boolean remove;
        synchronized (this.f53751c) {
            try {
                remove = this.f53750b.remove(internalAd);
                if (remove) {
                    io.bidmachine.core.a.b(this.f53749a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.c
                        @Override // hr.b
                        public final Object get() {
                            String n10;
                            n10 = g.this.n(internalAd);
                            return n10;
                        }
                    });
                }
                A(internalAd);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return remove;
    }

    void u(@NonNull final NetworkAdUnit networkAdUnit, @NonNull final InternalAd internalAd) {
        synchronized (this.f53753e) {
            io.bidmachine.core.a.b(this.f53749a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.a
                @Override // hr.b
                public final Object get() {
                    String o10;
                    o10 = g.this.o(networkAdUnit, internalAd);
                    return o10;
                }
            });
            this.f53752d.put(networkAdUnit, internalAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public hm.j v(@NonNull NetworkAdUnit networkAdUnit, @NonNull AdsFormat adsFormat) {
        synchronized (this.f53751c) {
            try {
                InternalAd h10 = h(adsFormat);
                if (h10 != null) {
                    u(networkAdUnit, h10);
                    return h10;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    void w(@NonNull List<InternalAd> list) {
        Collections.sort(list, new Comparator() { // from class: io.bidmachine.ads.networks.gam_dynamic.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int p10;
                p10 = g.p((InternalAd) obj, (InternalAd) obj2);
                return p10;
            }
        });
    }

    void x(@NonNull final InternalAd internalAd) {
        synchronized (this.f53751c) {
            try {
                if (this.f53750b.contains(internalAd)) {
                    return;
                }
                this.f53750b.add(internalAd);
                w(this.f53750b);
                io.bidmachine.core.a.b(this.f53749a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.e
                    @Override // hr.b
                    public final Object get() {
                        String q10;
                        q10 = g.this.q(internalAd);
                        return q10;
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public InternalAd y(@NonNull InternalAd internalAd, int i10) {
        synchronized (this.f53751c) {
            try {
                AdsFormat n10 = internalAd.n();
                InternalAd internalAd2 = null;
                if (j(n10) >= i10) {
                    final InternalAd g10 = g(n10);
                    if (g10 != null && g10.getPrice() <= internalAd.getPrice()) {
                        io.bidmachine.core.a.b(this.f53749a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.d
                            @Override // hr.b
                            public final Object get() {
                                String r10;
                                r10 = g.r(InternalAd.this);
                                return r10;
                            }
                        });
                        t(g10);
                        internalAd2 = g10;
                    }
                    return null;
                }
                x(internalAd);
                return internalAd2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(@NonNull final NetworkAdUnit networkAdUnit) {
        synchronized (this.f53753e) {
            try {
                final InternalAd remove = this.f53752d.remove(networkAdUnit);
                if (remove != null) {
                    io.bidmachine.core.a.b(this.f53749a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.b
                        @Override // hr.b
                        public final Object get() {
                            String s10;
                            s10 = g.this.s(networkAdUnit, remove);
                            return s10;
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
