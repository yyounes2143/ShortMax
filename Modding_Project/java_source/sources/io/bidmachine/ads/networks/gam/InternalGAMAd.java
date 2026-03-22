package io.bidmachine.ads.networks.gam;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import io.bidmachine.AdsFormat;
import io.bidmachine.ExpirationHandler;
import java.lang.ref.WeakReference;
/* loaded from: classes7.dex */
public abstract class InternalGAMAd implements ExpirationHandler.Listener {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f53641a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final j f53642b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AdsFormat f53643c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final t f53644d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ExpirationHandler f53645e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile Status f53646f = Status.Idle;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private WeakReference<d0> f53647g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum Status {
        Idle,
        Loading,
        Loaded,
        Showing,
        Shown,
        Expired
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InternalGAMAd(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar) {
        this.f53641a = new fr.j(jVar.l() + "Ad");
        this.f53642b = jVar;
        this.f53643c = adsFormat;
        this.f53644d = tVar;
        this.f53645e = new ExpirationHandler(jVar.k(), this);
    }

    private void i(boolean z10) {
        io.bidmachine.core.a.b(this.f53641a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.w
            @Override // hr.b
            public final Object get() {
                String t10;
                t10 = InternalGAMAd.this.t();
                return t10;
            }
        });
        WeakReference<d0> weakReference = this.f53647g;
        if (weakReference != null) {
            weakReference.clear();
            this.f53647g = null;
        }
        this.f53645e.stop();
        this.f53642b.x(this, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String t() {
        return String.format("destroy (%s)", this.f53644d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String u() {
        return String.format("load (%s)", this.f53644d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(Context context, n0 n0Var) {
        try {
            G(Status.Loading);
            B(context, n0Var);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            n0Var.b(this, fr.a.l("Exception loading InternalGAM object", th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String w() {
        return String.format("onAdLoaded (%s)", this.f53644d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String x() {
        return String.format("onAdShown (%s)", this.f53644d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String y() {
        return String.format("onExpired (%s)", this.f53644d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z() {
        try {
            j();
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void A(@NonNull Context context, @NonNull final n0 n0Var) {
        io.bidmachine.core.a.b(this.f53641a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.x
            @Override // hr.b
            public final Object get() {
                String u10;
                u10 = InternalGAMAd.this.u();
                return u10;
            }
        });
        final Context applicationContext = context.getApplicationContext();
        io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.ads.networks.gam.y
            @Override // java.lang.Runnable
            public final void run() {
                InternalGAMAd.this.v(applicationContext, n0Var);
            }
        });
    }

    @UiThread
    protected abstract void B(@NonNull Context context, @NonNull n0 n0Var) throws Throwable;

    public void C() {
        io.bidmachine.core.a.b(this.f53641a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.a0
            @Override // hr.b
            public final Object get() {
                String w10;
                w10 = InternalGAMAd.this.w();
                return w10;
            }
        });
        G(Status.Loaded);
        this.f53645e.start();
    }

    public void D() {
        io.bidmachine.core.a.b(this.f53641a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.z
            @Override // hr.b
            public final Object get() {
                String x10;
                x10 = InternalGAMAd.this.x();
                return x10;
            }
        });
        this.f53642b.y(this);
        G(Status.Shown);
        this.f53645e.stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void E() {
        io.bidmachine.core.g.Z(new Runnable() { // from class: io.bidmachine.ads.networks.gam.b0
            @Override // java.lang.Runnable
            public final void run() {
                InternalGAMAd.this.z();
            }
        });
    }

    public void F(@Nullable d0 d0Var) {
        this.f53647g = new WeakReference<>(d0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(@NonNull Status status) {
        this.f53646f = status;
    }

    public void h() {
        i(s());
    }

    @UiThread
    protected abstract void j() throws Throwable;

    @Nullable
    public d0 k() {
        WeakReference<d0> weakReference = this.f53647g;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NonNull
    public String l() {
        return o().a();
    }

    @NonNull
    public AdsFormat m() {
        return this.f53643c;
    }

    @NonNull
    public j n() {
        return this.f53642b;
    }

    @NonNull
    public t o() {
        return this.f53644d;
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        if (s()) {
            return;
        }
        io.bidmachine.core.a.b(this.f53641a, new hr.b() { // from class: io.bidmachine.ads.networks.gam.v
            @Override // hr.b
            public final Object get() {
                String y10;
                y10 = InternalGAMAd.this.y();
                return y10;
            }
        });
        G(Status.Expired);
        d0 k10 = k();
        if (k10 != null) {
            k10.onAdExpired();
        }
        i(true);
        this.f53642b.v(this.f53643c);
    }

    public float p() {
        return o().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        if (this.f53646f == Status.Expired) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r() {
        if (this.f53646f == Status.Loaded) {
            return true;
        }
        return false;
    }

    boolean s() {
        Status status = this.f53646f;
        if (status != null && status.ordinal() >= Status.Shown.ordinal()) {
            return true;
        }
        return false;
    }

    @NonNull
    public String toString() {
        return this.f53641a + ", " + o();
    }
}
