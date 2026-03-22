package io.bidmachine.ads.networks.gam_dynamic;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.protobuf.Waterfall;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: GAMNetworkImpl.java */
/* loaded from: classes7.dex */
class s implements o {
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private static final Map<String, g> f53821f = new HashMap();
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private static final Object f53822g = new Object();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53823a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f53824b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final im.b f53825c;
    @NonNull
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final g f53826d;
    @NonNull
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Map<AdsFormat, j0> f53827e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(@NonNull Context context, @NonNull hm.s sVar, @NonNull Waterfall.Context context2, @NonNull im.b bVar) {
        this(context, sVar, context2, bVar, n(sVar.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String k(NetworkAdUnit networkAdUnit) {
        return String.format("Fail to load banner (Can't find reserved ad by network ad unit id - %s)", networkAdUnit.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String l(NetworkAdUnit networkAdUnit) {
        return String.format("Fail to load interstitial (Can't find reserved ad by network ad unit id - %s)", networkAdUnit.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String m(NetworkAdUnit networkAdUnit) {
        return String.format("Fail to load rewarded (Can't find reserved ad by network ad unit id - %s)", networkAdUnit.getId());
    }

    @NonNull
    private static g n(@NonNull String str) {
        Map<String, g> map = f53821f;
        g gVar = map.get(str);
        if (gVar != null) {
            return gVar;
        }
        synchronized (f53822g) {
            try {
                g gVar2 = map.get(str);
                if (gVar2 != null) {
                    return gVar2;
                }
                g gVar3 = new g(str);
                map.put(str, gVar3);
                return gVar3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public void a() {
        for (AdsFormat adsFormat : AdsFormat.values()) {
            d(adsFormat, false);
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public void b(@NonNull NetworkAdUnit networkAdUnit) {
        this.f53826d.z(networkAdUnit);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public void c(@NonNull final NetworkAdUnit networkAdUnit, @NonNull z zVar) {
        InternalAd k10 = this.f53826d.k(networkAdUnit);
        if (k10 == null) {
            io.bidmachine.core.a.b(this.f53823a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.r
                @Override // hr.b
                public final Object get() {
                    String m10;
                    m10 = s.m(NetworkAdUnit.this);
                    return m10;
                }
            });
            o(zVar, null, fr.a.i("Can't find reserved InternalAd by NetworkAdUnit"));
        } else if (k10 instanceof hm.r) {
            k10.H(zVar);
            zVar.a((hm.r) k10);
        } else {
            o(zVar, k10, fr.a.i("InternalAd object has an incompatible ad type"));
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public boolean d(@NonNull AdsFormat adsFormat, boolean z10) {
        j0 j0Var = this.f53827e.get(adsFormat);
        if (j0Var == null) {
            return false;
        }
        j0Var.q(z10);
        return true;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public void e(@NonNull final NetworkAdUnit networkAdUnit, @NonNull y yVar) {
        InternalAd k10 = this.f53826d.k(networkAdUnit);
        if (k10 == null) {
            io.bidmachine.core.a.b(this.f53823a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.p
                @Override // hr.b
                public final Object get() {
                    String l10;
                    l10 = s.l(NetworkAdUnit.this);
                    return l10;
                }
            });
            o(yVar, null, fr.a.i("Can't find reserved InternalAd by NetworkAdUnit"));
        } else if (k10 instanceof hm.p) {
            k10.H(yVar);
            yVar.a((hm.p) k10);
        } else {
            o(yVar, k10, fr.a.i("InternalAd object has an incompatible ad type"));
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    @Nullable
    public hm.j f(@NonNull NetworkAdUnit networkAdUnit, @NonNull AdsFormat adsFormat) {
        AdsFormat parent;
        hm.j v10 = this.f53826d.v(networkAdUnit, adsFormat);
        if (v10 == null && (parent = adsFormat.getParent()) != null) {
            return this.f53826d.v(networkAdUnit, parent);
        }
        return v10;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public void g(@NonNull final NetworkAdUnit networkAdUnit, @NonNull w wVar) {
        InternalAd k10 = this.f53826d.k(networkAdUnit);
        if (k10 == null) {
            io.bidmachine.core.a.b(this.f53823a, new hr.b() { // from class: io.bidmachine.ads.networks.gam_dynamic.q
                @Override // hr.b
                public final Object get() {
                    String k11;
                    k11 = s.k(NetworkAdUnit.this);
                    return k11;
                }
            });
            o(wVar, null, fr.a.i("Can't find reserved InternalAd by NetworkAdUnit"));
        } else if (k10 instanceof v) {
            k10.H(wVar);
            wVar.a((v) k10);
        } else {
            o(wVar, k10, fr.a.i("InternalAd object has an incompatible ad type"));
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    @Nullable
    public String getVersion() {
        try {
            lr.a version = this.f53825c.getVersion();
            if (version != null) {
                return version.toString();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    @SuppressLint({"MissingPermission"})
    public void init(@NonNull Context context) {
        if (this.f53824b.getAndSet(true)) {
            return;
        }
        try {
            this.f53825c.a(context);
        } catch (Throwable unused) {
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.o
    public boolean isInitialized() {
        return this.f53824b.get();
    }

    @VisibleForTesting
    void o(@NonNull u<?> uVar, @Nullable InternalAd internalAd, @Nullable fr.a aVar) {
        if (internalAd != null) {
            internalAd.i();
        }
        if (aVar == null) {
            aVar = fr.a.f51921q;
        }
        uVar.onAdLoadFailed(aVar);
    }

    s(@NonNull Context context, @NonNull hm.s sVar, @NonNull Waterfall.Context context2, @NonNull im.b bVar, @NonNull g gVar) {
        s sVar2 = this;
        sVar2.f53823a = new fr.j(sVar.getNetworkName() + AndroidInitializeBoldSDK.MSG_NETWORK);
        sVar2.f53824b = new AtomicBoolean(false);
        sVar2.f53825c = bVar;
        sVar2.f53826d = gVar;
        sVar2.f53827e = new EnumMap(AdsFormat.class);
        k kVar = new k(context2.getEventConfig());
        a0 a0Var = new a0();
        for (Waterfall.Configuration configuration : context2.getConfigurationsList()) {
            AdsFormat byRemoteName = AdsFormat.byRemoteName(configuration.getFormat());
            if (byRemoteName != null) {
                sVar2.f53827e.put(byRemoteName, new j0(context, sVar, byRemoteName, configuration, bVar, this, gVar, kVar, a0Var));
                sVar2 = this;
            }
        }
    }
}
