package e;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.facebook.ads.AdSettings;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.hades.aar.admanager.core.AdFormat;
import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import gt.q0;
import gt.r1;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class t extends da.f {

    /* renamed from: q  reason: collision with root package name */
    public static final /* synthetic */ int f50688q = 0;

    /* renamed from: m  reason: collision with root package name */
    public final Context f50689m;

    /* renamed from: n  reason: collision with root package name */
    public final gt.g0 f50690n;

    /* renamed from: o  reason: collision with root package name */
    public final AtomicBoolean f50691o;

    /* renamed from: p  reason: collision with root package name */
    public final AtomicBoolean f50692p;

    public t(Context context, ca.a config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f50689m = applicationContext;
        this.f50690n = kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()));
        this.f50691o = new AtomicBoolean(false);
        this.f50692p = new AtomicBoolean(false);
        Context applicationContext2 = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "context.applicationContext");
        Q(applicationContext2);
        P(config);
        W();
    }

    public static final AdRequest U(t tVar, ca.d dVar) {
        Bundle bundle;
        if (dVar != null) {
            tVar.getClass();
            if (dVar.f().b()) {
                ea.b bVar = ea.b.f51279a;
                Bundle d10 = bVar.d(dVar.h());
                ea.a aVar = null;
                if (d10 != null) {
                    bundle = d10.getBundle("admob_custom_keyvals");
                } else {
                    bundle = null;
                }
                if (bundle == null) {
                    ga.a.f52235a.c("AdManager:Admob:Loader", "buildAdRequest -> Get Pam bundle failed. Info: " + dVar);
                    return tVar.V(dVar);
                }
                Set<String> keySet = bundle.keySet();
                Intrinsics.checkNotNullExpressionValue(keySet, "admobCustomKeyValsBundle.keySet()");
                String str = (String) CollectionsKt.s0(keySet);
                if (str != null) {
                    dVar.f().i(str);
                    ca.c f10 = dVar.f();
                    String string = bundle.getString(str);
                    if (string == null) {
                        string = "";
                    } else {
                        Intrinsics.checkNotNullExpressionValue(string, "admobCustomKeyValsBundle.getString(key) ?: \"\"");
                    }
                    f10.j(string);
                }
                dVar.f().k(String.valueOf(bVar.b(dVar.h())));
                AdRequest.Builder addNetworkExtrasBundle = new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, d10);
                Intrinsics.checkNotNullExpressionValue(addNetworkExtrasBundle, "Builder().addNetworkExtr…pter::class.java, bundle)");
                AdRequest.Builder builder = addNetworkExtrasBundle;
                if (dVar.h() == AdFormat.APP_OPEN) {
                    ca.a s10 = tVar.s();
                    if (s10 instanceof ea.a) {
                        aVar = (ea.a) s10;
                    }
                    if (aVar != null) {
                        builder.setHttpTimeoutMillis(aVar.l());
                    }
                }
                AdRequest build = builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
                return build;
            }
        }
        return tVar.V(dVar);
    }

    public static final void X(t tVar, ca.e adLoadParam, g.a elapsedTime, String cacheId, LoadAdError loadAdError) {
        tVar.getClass();
        int code = loadAdError.getCode();
        String errMsg = loadAdError.getMessage();
        Intrinsics.checkNotNullExpressionValue(errMsg, "error.message");
        String mediationName = d.a(loadAdError.getResponseInfo());
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Intrinsics.checkNotNullParameter(elapsedTime, "elapsedTime");
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(errMsg, "errMsg");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        long a10 = d.d.a(elapsedTime);
        ga.a aVar = ga.a.f52235a;
        aVar.c("AdManager:Admob:Loader", "AdmobLoader Load Failed -> format(" + adLoadParam + ") cost(" + a10 + "ms) cacheId(" + cacheId + ") err(" + code + ':' + errMsg + ") mediation(" + mediationName + ')');
        tVar.M(cacheId);
        tVar.H(adLoadParam, code, errMsg, mediationName);
    }

    public static final void Y(t tVar, InitializationStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        String A0 = CollectionsKt.A0(status.getAdapterStatusMap().entrySet(), "\n", null, null, 0, null, p000admanager.d.d.f448d, 30, null);
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdManager:Admob:Loader", "AdMob Init Complete -> \n" + A0);
        tVar.f50692p.set(true);
        tVar.f50691o.set(false);
        tVar.R(true);
    }

    @Override // da.f
    public final void A(String cacheId, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new p000admanager.d.f(this, cacheId, adLoadParam));
    }

    @Override // da.f
    public final void B(String cacheId, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new p000admanager.d.h(this, cacheId, adLoadParam));
    }

    @Override // da.f
    public final void C(String cacheId, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new p000admanager.d.j(this, cacheId, adLoadParam));
    }

    @Override // da.f
    public final void D(String cacheId, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
    }

    @Override // da.f
    public final void E(String cacheId, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new p000admanager.d.l(this, cacheId, adLoadParam));
    }

    @Override // da.f
    public final void F(String cacheId, ca.e adLoadParam) {
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
        Handler handler = g.c.f52135a;
        g.c.b(new p000admanager.d.n(this, cacheId, adLoadParam));
    }

    @Override // da.f
    public final String T(Object obj) {
        return "AdManager:Admob:Loader";
    }

    public final AdManagerAdRequest V(ca.d dVar) {
        AdFormat adFormat;
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        ea.a aVar = null;
        if (dVar != null) {
            adFormat = dVar.h();
        } else {
            adFormat = null;
        }
        if (adFormat == AdFormat.APP_OPEN) {
            ca.a s10 = s();
            if (s10 instanceof ea.a) {
                aVar = (ea.a) s10;
            }
            if (aVar != null) {
                builder.setHttpTimeoutMillis(aVar.l());
            }
        }
        AdManagerAdRequest build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder().apply {\n      …      }\n        }.build()");
        return build;
    }

    public final void W() {
        if (!this.f50692p.get() && !this.f50691o.get()) {
            if (this.f50691o.compareAndSet(false, true)) {
                gt.g.d(this.f50690n, q0.b(), null, new p000admanager.d.c(this, null), 2, null);
                return;
            }
            return;
        }
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdManager:Admob:Loader", "AdMob init skipped. Ready=" + this.f50692p.get());
    }

    public final void Z(String cacheId, Object realAd, g.a elapsedTime, ResponseInfo responseInfo) {
        String str;
        String str2;
        Bundle responseExtras;
        Intrinsics.checkNotNullParameter(cacheId, "cacheId");
        Intrinsics.checkNotNullParameter(realAd, "realAd");
        Intrinsics.checkNotNullParameter(elapsedTime, "elapsedTime");
        long a10 = d.d.a(elapsedTime);
        if (responseInfo != null && (responseExtras = responseInfo.getResponseExtras()) != null) {
            str = responseExtras.getString("mediation_group_name", "");
        } else {
            str = null;
        }
        if (str == null) {
            str2 = "";
        } else {
            str2 = str;
        }
        super.S(cacheId, realAd, a10, d.a(responseInfo), str2);
    }

    @Override // da.b
    public final boolean a(Object obj) {
        return this.f50692p.get();
    }

    public final void a0() {
        ea.a aVar;
        ga.a.f52235a.d("AdManager:Admob:Loader", "Start init AdMob SDK");
        try {
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            MolocoPrivacy.setPrivacy(new MolocoPrivacy.PrivacySettings(bool, bool2, bool2));
        } catch (Exception e10) {
            ga.a aVar2 = ga.a.f52235a;
            aVar2.c("AdManager:Admob:Loader", "Set Moloco Privacy failed " + e10);
        }
        ca.a s10 = s();
        if (s10 instanceof ea.a) {
            aVar = (ea.a) s10;
        } else {
            aVar = null;
        }
        if (aVar != null && aVar.b()) {
            String k10 = aVar.k();
            if (k10 != null) {
                MobileAds.setRequestConfiguration(new RequestConfiguration.Builder().setTestDeviceIds(CollectionsKt.e(k10)).build());
            }
            String m10 = aVar.m();
            if (m10 != null) {
                AdSettings.addTestDevice(m10);
            }
        }
        try {
            MobileAds.initialize(this.f50689m, new OnInitializationCompleteListener() { // from class: e.s
                @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
                public final void onInitializationComplete(InitializationStatus initializationStatus) {
                    t.Y(t.this, initializationStatus);
                }
            });
        } catch (Exception e11) {
            ga.a aVar3 = ga.a.f52235a;
            aVar3.c("AdManager:Admob:Loader", "AdMob Init Exception " + e11);
            this.f50691o.set(false);
        }
    }

    @Override // da.b
    public final void init() {
        W();
    }
}
