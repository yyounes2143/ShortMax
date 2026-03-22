package io.bidmachine.iab.vast.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.measurer.VastAdMeasurer;
import io.bidmachine.iab.vast.VastPlaybackListener;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import sm.q;
import tm.d;
import tm.f;
import tm.i;
import yq.n;
/* loaded from: classes7.dex */
public class VastActivity extends io.bidmachine.rendering.internal.a {
    @NonNull
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    static final Map<String, WeakReference<tm.a>> f54739h = new ConcurrentHashMap();
    @NonNull
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    static final Map<String, WeakReference<VastView>> f54740i = new ConcurrentHashMap();
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static WeakReference<VastPlaybackListener> f54741j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static WeakReference<VastAdMeasurer> f54742k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static WeakReference<MraidAdMeasurer> f54743l;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private io.bidmachine.iab.vast.a f54745b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private VastView f54746c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private tm.a f54747d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54749f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54750g;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final i f54744a = new c();

    /* renamed from: e  reason: collision with root package name */
    private boolean f54748e = false;

    /* loaded from: classes7.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private io.bidmachine.iab.vast.a f54751a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private tm.a f54752b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private VastView f54753c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private VastPlaybackListener f54754d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private VastAdMeasurer f54755e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private MraidAdMeasurer f54756f;

        @VisibleForTesting
        Intent a(Context context) {
            Intent intent = new Intent(context, VastActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            return intent;
        }

        @Nullable
        public qm.a b(Context context) {
            io.bidmachine.iab.vast.a aVar = this.f54751a;
            if (aVar == null) {
                d.b("VastActivity", "VastRequest is null", new Object[0]);
                return qm.a.f("VastRequest is null");
            }
            try {
                f.b(aVar);
                Intent a10 = a(context);
                a10.putExtra("vast_request_id", this.f54751a.H());
                tm.a aVar2 = this.f54752b;
                if (aVar2 != null) {
                    VastActivity.t(this.f54751a, aVar2);
                }
                VastView vastView = this.f54753c;
                if (vastView != null) {
                    VastActivity.s(this.f54751a, vastView);
                }
                if (this.f54754d != null) {
                    WeakReference unused = VastActivity.f54741j = new WeakReference(this.f54754d);
                } else {
                    WeakReference unused2 = VastActivity.f54741j = null;
                }
                if (this.f54755e != null) {
                    WeakReference unused3 = VastActivity.f54742k = new WeakReference(this.f54755e);
                } else {
                    WeakReference unused4 = VastActivity.f54742k = null;
                }
                if (this.f54756f != null) {
                    WeakReference unused5 = VastActivity.f54743l = new WeakReference(this.f54756f);
                } else {
                    WeakReference unused6 = VastActivity.f54743l = null;
                }
                context.startActivity(a10);
                return null;
            } catch (Throwable th2) {
                d.c("VastActivity", th2);
                VastActivity.y(this.f54751a);
                VastActivity.z(this.f54751a);
                WeakReference unused7 = VastActivity.f54741j = null;
                WeakReference unused8 = VastActivity.f54742k = null;
                WeakReference unused9 = VastActivity.f54743l = null;
                return qm.a.j("Exception during displaying VastActivity", th2);
            }
        }

        public a c(@Nullable VastAdMeasurer vastAdMeasurer) {
            this.f54755e = vastAdMeasurer;
            return this;
        }

        public a d(@Nullable tm.a aVar) {
            this.f54752b = aVar;
            return this;
        }

        public a e(@Nullable VastPlaybackListener vastPlaybackListener) {
            this.f54754d = vastPlaybackListener;
            return this;
        }

        public a f(@Nullable MraidAdMeasurer mraidAdMeasurer) {
            this.f54756f = mraidAdMeasurer;
            return this;
        }

        public a g(@NonNull io.bidmachine.iab.vast.a aVar) {
            this.f54751a = aVar;
            return this;
        }

        public a h(@Nullable VastView vastView) {
            this.f54753c = vastView;
            return this;
        }
    }

    /* loaded from: classes7.dex */
    private class c implements i {
        private c() {
        }

        @Override // tm.i
        public void a(@NonNull VastView vastView, @NonNull io.bidmachine.iab.vast.a aVar, boolean z10) {
            VastActivity.this.l(aVar, z10);
        }

        @Override // tm.i
        public void b(@NonNull VastView vastView, @NonNull io.bidmachine.iab.vast.a aVar, int i10) {
            int F = aVar.F();
            if (F > -1) {
                i10 = F;
            }
            VastActivity.this.g(i10);
        }

        @Override // tm.i
        public void c(@NonNull VastView vastView, @NonNull io.bidmachine.iab.vast.a aVar, @NonNull sm.d dVar, @NonNull String str) {
            if (VastActivity.this.f54747d != null) {
                VastActivity.this.f54747d.d(VastActivity.this, aVar, dVar, str);
            }
        }

        @Override // tm.i
        public void d(@NonNull VastView vastView, @NonNull io.bidmachine.iab.vast.a aVar) {
            if (VastActivity.this.f54747d != null) {
                VastActivity.this.f54747d.a(VastActivity.this, aVar);
            }
        }

        @Override // tm.i
        public void e(@NonNull VastView vastView, @NonNull io.bidmachine.iab.vast.a aVar) {
            if (VastActivity.this.f54747d != null) {
                VastActivity.this.f54747d.c(VastActivity.this, aVar);
            }
        }

        @Override // tm.i
        public void f(@NonNull VastView vastView, @Nullable io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
            VastActivity.this.j(aVar, aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i10) {
        int i11;
        if (i10 == 1) {
            i11 = 7;
        } else if (i10 == 2) {
            i11 = 6;
        } else {
            i11 = 4;
        }
        setRequestedOrientation(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@Nullable io.bidmachine.iab.vast.a aVar, @NonNull qm.a aVar2) {
        tm.a aVar3 = this.f54747d;
        if (aVar3 != null) {
            aVar3.b(aVar, aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@Nullable io.bidmachine.iab.vast.a aVar, boolean z10) {
        tm.a aVar2 = this.f54747d;
        if (aVar2 != null && !this.f54750g) {
            aVar2.e(this, aVar, z10);
        }
        this.f54750g = true;
        try {
            getWindow().clearFlags(128);
        } catch (Exception e10) {
            d.b("VastActivity", e10.getMessage(), new Object[0]);
        }
        if (aVar != null) {
            g(aVar.L());
        }
        n.a(this);
    }

    private void p(@NonNull VastView vastView) {
        q.h(this);
        q.J(vastView);
        setContentView(vastView);
        q.j(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull VastView vastView) {
        f54740i.put(aVar.H(), new WeakReference<>(vastView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull tm.a aVar2) {
        f54739h.put(aVar.H(), new WeakReference<>(aVar2));
    }

    @Nullable
    private Integer u(@NonNull io.bidmachine.iab.vast.a aVar) {
        int F = aVar.F();
        if (F > -1) {
            return Integer.valueOf(F);
        }
        int K = aVar.K();
        if (K != 0 && K != getResources().getConfiguration().orientation) {
            return Integer.valueOf(K);
        }
        return null;
    }

    @Nullable
    private static tm.a w(@NonNull io.bidmachine.iab.vast.a aVar) {
        WeakReference<tm.a> weakReference = f54739h.get(aVar.H());
        if (weakReference != null && weakReference.get() != null) {
            return weakReference.get();
        }
        y(aVar);
        return null;
    }

    @Nullable
    private static VastView x(@NonNull io.bidmachine.iab.vast.a aVar) {
        WeakReference<VastView> weakReference = f54740i.get(aVar.H());
        if (weakReference != null && weakReference.get() != null) {
            return weakReference.get();
        }
        z(aVar);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void y(@NonNull io.bidmachine.iab.vast.a aVar) {
        f54739h.remove(aVar.H());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void z(@NonNull io.bidmachine.iab.vast.a aVar) {
        f54740i.remove(aVar.H());
    }

    @Override // io.bidmachine.rendering.internal.a
    protected void b() {
        VastView vastView = this.f54746c;
        if (vastView != null) {
            vastView.u0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.rendering.internal.a, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        Integer u10;
        super.onCreate(bundle);
        this.f54745b = f.a(getIntent().getStringExtra("vast_request_id"));
        if (bundle != null && bundle.getBoolean("isFinishedPerformed")) {
            finish();
            return;
        }
        io.bidmachine.iab.vast.a aVar = this.f54745b;
        if (aVar == null) {
            j(null, qm.a.f("VastRequest is null"));
            l(null, false);
            return;
        }
        if (bundle == null && (u10 = u(aVar)) != null) {
            g(u10.intValue());
            try {
                if ((getPackageManager().getActivityInfo(getComponentName(), 65536).configChanges & 128) == 0) {
                    return;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        this.f54747d = w(this.f54745b);
        VastView x10 = x(this.f54745b);
        this.f54746c = x10;
        if (x10 == null) {
            this.f54748e = true;
            this.f54746c = new VastView(this);
        }
        this.f54746c.setId(1);
        this.f54746c.setListener(this.f54744a);
        WeakReference<VastPlaybackListener> weakReference = f54741j;
        if (weakReference != null) {
            this.f54746c.setPlaybackListener(weakReference.get());
        }
        WeakReference<VastAdMeasurer> weakReference2 = f54742k;
        if (weakReference2 != null) {
            this.f54746c.setAdMeasurer(weakReference2.get());
        }
        WeakReference<MraidAdMeasurer> weakReference3 = f54743l;
        if (weakReference3 != null) {
            this.f54746c.setPostBannerAdMeasurer(weakReference3.get());
        }
        if (bundle != null && bundle.getBoolean("isLoadPerformed")) {
            p(this.f54746c);
            return;
        }
        this.f54749f = true;
        if (this.f54746c.f0(this.f54745b, Boolean.TRUE)) {
            p(this.f54746c);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        io.bidmachine.iab.vast.a aVar;
        boolean z10;
        VastView vastView;
        super.onDestroy();
        if (!isChangingConfigurations() && (aVar = this.f54745b) != null) {
            VastView vastView2 = this.f54746c;
            if (vastView2 != null && vastView2.z0()) {
                z10 = true;
            } else {
                z10 = false;
            }
            l(aVar, z10);
            if (this.f54748e && (vastView = this.f54746c) != null) {
                vastView.e0();
            }
            y(this.f54745b);
            z(this.f54745b);
            f54741j = null;
            f54742k = null;
            f54743l = null;
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isLoadPerformed", this.f54749f);
        bundle.putBoolean("isFinishedPerformed", this.f54750g);
    }
}
