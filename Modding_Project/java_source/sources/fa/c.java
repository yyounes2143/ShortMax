package fa;

import android.content.Context;
import android.os.Handler;
import ca.e;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import d.d;
import da.f;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p000admanager.e.g;
import p000admanager.e.h;
@Metadata
/* loaded from: classes5.dex */
public final class c extends f {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final f.f f51689q = new f.f();

    /* renamed from: m  reason: collision with root package name */
    public final Context f51690m;

    /* renamed from: n  reason: collision with root package name */
    public final g0 f51691n;

    /* renamed from: o  reason: collision with root package name */
    public final AtomicBoolean f51692o;

    /* renamed from: p  reason: collision with root package name */
    public final AtomicBoolean f51693p;

    public c(@NotNull Context context, @NotNull ca.a config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f51690m = applicationContext;
        this.f51691n = i.a(r1.b(null, 1, null).plus(q0.b()));
        this.f51692o = new AtomicBoolean(false);
        this.f51693p = new AtomicBoolean(false);
        Context applicationContext2 = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "context.applicationContext");
        Q(applicationContext2);
        P(config);
        U();
    }

    public static final void V(c cVar, AppLovinSdkConfiguration appLovinSdkConfiguration) {
        cVar.f51693p.set(true);
        cVar.f51692o.set(false);
        cVar.R(true);
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdManager:ApplovinMax:Loader", "Init AppLovin SDK -> SUCCESS. ConsentFlow: " + appLovinSdkConfiguration.getConsentDialogState());
    }

    public static final boolean W(c cVar, e eVar) {
        if (!cVar.f51693p.get()) {
            ga.a.f52235a.c(cVar.T(eVar), "Load failed -> SDK not initialized yet. Triggering init...");
            cVar.U();
            cVar.H(eVar, -1, "SDK Not Initialized", "AppLovin");
            return false;
        }
        return true;
    }

    @Override // da.f
    public void A(@NotNull String cacheId, @NotNull e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new g(this, adLoadParam, cacheId));
    }

    @Override // da.f
    public void B(@NotNull String cacheId, @NotNull e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
    }

    @Override // da.f
    public void C(@NotNull String cacheId, @NotNull e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new h(this, adLoadParam, cacheId));
    }

    @Override // da.f
    public void D(@NotNull String cacheId, @NotNull e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
    }

    @Override // da.f
    public void E(@NotNull String cacheId, @NotNull e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
    }

    @Override // da.f
    public void F(@NotNull String cacheId, @NotNull e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new p000admanager.e.i(this, adLoadParam, cacheId));
    }

    @Override // da.f
    @NotNull
    public String T(@Nullable Object obj) {
        return d.h.b(obj, "AdManager:ApplovinMax:Loader");
    }

    public final void U() {
        if (!this.f51693p.get() && !this.f51692o.get() && this.f51692o.compareAndSet(false, true)) {
            gt.g.d(this.f51691n, q0.b(), null, new p000admanager.e.f(this, null), 2, null);
        }
    }

    public final void Z() {
        a aVar;
        String l10;
        ga.a aVar2 = ga.a.f52235a;
        aVar2.d("AdManager:ApplovinMax:Loader", "Start init AppLovin SDK");
        ca.a s10 = s();
        if (s10 instanceof a) {
            aVar = (a) s10;
        } else {
            aVar = null;
        }
        if (aVar == null) {
            aVar2.c("AdManager:ApplovinMax:Loader", "Init failed -> Config mismatch");
            this.f51692o.set(false);
            return;
        }
        try {
            AppLovinSdkInitializationConfiguration.Builder builder = AppLovinSdkInitializationConfiguration.builder(aVar.m(), this.f51690m);
            builder.setMediationProvider(AppLovinMediationProvider.MAX);
            if (aVar.b() && (l10 = aVar.l()) != null) {
                builder.setTestDeviceAdvertisingIds(CollectionsKt.e(l10));
            }
            AppLovinSdkInitializationConfiguration build = builder.build();
            AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(this.f51690m);
            if (aVar.b() || Intrinsics.areEqual(aVar.k(), Boolean.TRUE)) {
                appLovinSdk.getSettings().setVerboseLogging(true);
            }
            appLovinSdk.initialize(build, new AppLovinSdk.SdkInitializationListener() { // from class: fa.b
                @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
                public final void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                    c.V(c.this, appLovinSdkConfiguration);
                }
            });
        } catch (Exception e10) {
            ga.a aVar3 = ga.a.f52235a;
            aVar3.c("AdManager:ApplovinMax:Loader", "Init AppLovin SDK -> EXCEPTION " + e10);
            this.f51692o.set(false);
        }
    }

    @Override // da.b
    public boolean a(@Nullable Object obj) {
        if (!this.f51693p.get()) {
            return false;
        }
        return true;
    }

    public final void a0(@NotNull e adLoadParam, @NotNull g.a elapsedTime, @NotNull String cacheId, int i10, @NotNull String errMsg, @NotNull String mediationName) {
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(elapsedTime, "elapsedTime");
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(errMsg, "errMsg");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        long a10 = d.a(elapsedTime);
        ga.a aVar = ga.a.f52235a;
        String T = T(adLoadParam);
        aVar.c(T, "ApplovinMaxLoader Load Failed -> format(" + adLoadParam.f() + ") cost(" + a10 + "ms) err(" + i10 + ':' + errMsg + ") mediation(" + mediationName + ')');
        M(cacheId);
        H(adLoadParam, i10, errMsg, mediationName);
    }

    public final void b0(@NotNull String cacheId, @NotNull Object realAd, @NotNull g.a elapsedTime, @Nullable String str) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(realAd, "realAd");
        Intrinsics.checkNotNullParameter(elapsedTime, "elapsedTime");
        long a10 = d.a(elapsedTime);
        if (str == null) {
            str = "";
        }
        super.S(cacheId, realAd, a10, str, "");
    }

    @Override // da.b
    public void init() {
        U();
    }
}
