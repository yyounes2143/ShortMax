package io.bidmachine.ads.networks.gam;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMNetwork.java */
/* loaded from: classes7.dex */
public class o {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53694a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f53695b = new AtomicBoolean(false);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final dm.b f53696c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final j f53697d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f53698e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(@NonNull Context context, @NonNull dm.b bVar, @NonNull String str, @NonNull Map<AdsFormat, r> map, @Nullable String str2, long j10, boolean z10) {
        this.f53694a = new fr.j(str + AndroidInitializeBoldSDK.MSG_NETWORK);
        this.f53696c = bVar;
        this.f53697d = new j(context, bVar, str, map, str2, j10);
        this.f53698e = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String j(NetworkAdUnit networkAdUnit) {
        return String.format("Fail to load banner (Can't find reserved GAMAd by network ad unit id - %s)", networkAdUnit.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String k(NetworkAdUnit networkAdUnit) {
        return String.format("Fail to load interstitial (Can't find reserved GAMAd by network ad unit id - %s)", networkAdUnit.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String l(NetworkAdUnit networkAdUnit) {
        return String.format("Fail to load rewarded (Can't find reserved GAMAd by network ad unit id - %s)", networkAdUnit.getId());
    }

    private void p(@NonNull c0<?> c0Var, @Nullable InternalGAMAd internalGAMAd, @Nullable fr.a aVar) {
        if (internalGAMAd != null) {
            try {
                internalGAMAd.h();
            } catch (Throwable unused) {
            }
        }
        if (aVar == null) {
            aVar = fr.a.f51921q;
        }
        c0Var.onAdLoadFailed(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f53697d.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull AdsFormat adsFormat) {
        AdsFormat parent;
        if (!this.f53697d.v(adsFormat) && (parent = adsFormat.getParent()) != null) {
            this.f53697d.v(parent);
        }
    }

    @Nullable
    public String f() {
        try {
            lr.a version = this.f53696c.getVersion();
            if (version != null) {
                return version.toString();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"MissingPermission"})
    public void g(@NonNull Context context) {
        if (this.f53695b.getAndSet(true)) {
            return;
        }
        try {
            this.f53696c.a(context);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.f53695b.get();
    }

    public boolean i() {
        return this.f53698e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(@NonNull final NetworkAdUnit networkAdUnit, @NonNull f0 f0Var) {
        InternalGAMAd n10 = this.f53697d.n(networkAdUnit);
        if (n10 == null) {
            io.bidmachine.core.a.b(this.f53694a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.n
                @Override // hr.b
                public final Object get() {
                    String j10;
                    j10 = o.j(NetworkAdUnit.this);
                    return j10;
                }
            });
            p(f0Var, null, fr.a.i("Can't find reserved GAMAd by NetworkAdUnit"));
        } else if (n10 instanceof e0) {
            n10.F(f0Var);
            f0Var.a((e0) n10);
        } else {
            p(f0Var, n10, fr.a.i("InternalGAM object has an incompatible ad type"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(@NonNull final NetworkAdUnit networkAdUnit, @NonNull k0 k0Var) {
        InternalGAMAd n10 = this.f53697d.n(networkAdUnit);
        if (n10 == null) {
            io.bidmachine.core.a.b(this.f53694a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.m
                @Override // hr.b
                public final Object get() {
                    String k10;
                    k10 = o.k(NetworkAdUnit.this);
                    return k10;
                }
            });
            p(k0Var, null, fr.a.i("Can't find reserved GAMAd by NetworkAdUnit"));
        } else if (n10 instanceof j0) {
            n10.F(k0Var);
            k0Var.a((j0) n10);
        } else {
            p(k0Var, n10, fr.a.i("InternalGAM object has an incompatible ad type"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(@NonNull final NetworkAdUnit networkAdUnit, @NonNull m0 m0Var) {
        InternalGAMAd n10 = this.f53697d.n(networkAdUnit);
        if (n10 == null) {
            io.bidmachine.core.a.b(this.f53694a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.l
                @Override // hr.b
                public final Object get() {
                    String l10;
                    l10 = o.l(NetworkAdUnit.this);
                    return l10;
                }
            });
            p(m0Var, null, fr.a.i("Can't find reserved GAMAd by NetworkAdUnit"));
        } else if (n10 instanceof l0) {
            n10.F(m0Var);
            m0Var.a((l0) n10);
        } else {
            p(m0Var, n10, fr.a.i("InternalGAM object has an incompatible ad type"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public t q(@NonNull NetworkAdUnit networkAdUnit, @NonNull String str) {
        return this.f53697d.B(networkAdUnit, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(@NonNull NetworkAdUnit networkAdUnit) {
        this.f53697d.E(networkAdUnit);
    }
}
