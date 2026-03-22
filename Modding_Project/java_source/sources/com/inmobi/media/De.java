package com.inmobi.media;

import android.content.ComponentName;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import android.webkit.WebView;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.core.app.NotificationCompat;
import androidx.window.embedding.ActivityFilter;
import androidx.window.embedding.ActivityRule;
import androidx.window.embedding.RuleController;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.iab.omid.library.inmobi.Omid;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.De;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class De {

    /* renamed from: b */
    public static boolean f23601b;

    /* renamed from: a */
    public static final De f23600a = new De();

    /* renamed from: c */
    public static final Ce f23602c = new Ce();

    public static final /* synthetic */ void a(De de2) {
        de2.getClass();
        b();
    }

    public static final void b(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("De", "TAG");
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            WebView webView = new WebView(context);
            webView.setWebViewClient(new wf());
            webView.clearCache(true);
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public static final void d(Context context) {
        boolean z10;
        C6 c62;
        String str;
        Context d10;
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(context, "$context");
        Vc vc2 = Vc.f24316a;
        if (vc2.b(context) && F4.a(context).isEmpty()) {
            vc2.a(context, false);
        }
        C2980h3 c2980h3 = C2980h3.f24787a;
        Intrinsics.checkNotNull("h3");
        LinkedList linkedList = new LinkedList(T1.a((C2915d3) Nc.f23913d.getValue(), null, null, null, null, null, null, 63));
        C2980h3.f24788b = linkedList;
        Object clone = linkedList.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        C2980h3.f24789c = (LinkedList) clone;
        ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
        Intrinsics.checkNotNullParameter("AdQualityComponent", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter("starting", "message");
        Log.i("AdQualityComponent", "starting");
        if (C2945f0.f24719d == null) {
            C2945f0.f24719d = new C2912d0(C2945f0.f24720e);
        }
        C2912d0 c2912d0 = C2945f0.f24719d;
        if (c2912d0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            c2912d0 = null;
        }
        if (!c2912d0.f24567b.get()) {
            C2912d0 c2912d02 = C2945f0.f24719d;
            if (c2912d02 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("executor");
                c2912d02 = null;
            }
            c2912d02.a();
        } else {
            Intrinsics.checkNotNullParameter("AdQualityComponent", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("already started", "message");
            Log.i("AdQualityComponent", "already started");
        }
        Q5.b();
        Q5.a();
        V3 v32 = U3.f24244a;
        LinkedHashMap linkedHashMap = O2.f23923a;
        AdConfig adConfig = (AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null);
        C3121q0 adReqDeprecateChecker = adConfig.getAdReqDeprecateChecker();
        if (adReqDeprecateChecker != null) {
            z10 = adReqDeprecateChecker.a(true);
        } else {
            z10 = true;
        }
        U3.f24248e = z10;
        U3.e();
        if (adConfig.getRendering().getEnableImmersive()) {
            if (U3.f24252i && (d10 = Uc.d()) != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "display_info_store");
                Intrinsics.checkNotNullParameter("safe_area", "key");
                String string = a10.f23530a.getString("safe_area", null);
                if (string != null) {
                    try {
                        jSONObject = new JSONObject(string);
                    } catch (JSONException unused) {
                        Intrinsics.checkNotNullExpressionValue("U3", "TAG");
                    }
                    U3.f24249f = jSONObject;
                    Intrinsics.checkNotNullExpressionValue("U3", "TAG");
                    Objects.toString(U3.f24249f);
                }
                jSONObject = null;
                U3.f24249f = jSONObject;
                Intrinsics.checkNotNullExpressionValue("U3", "TAG");
                Objects.toString(U3.f24249f);
            }
            if (U3.f24252i) {
                if (U3.f() != null) {
                    Intrinsics.checkNotNullExpressionValue("U3", "TAG");
                } else {
                    Context d11 = Uc.d();
                    if (d11 != null) {
                        ConcurrentHashMap concurrentHashMap2 = C6.f23529b;
                        C6 a11 = B6.a(d11, "display_info_store");
                        Intrinsics.checkNotNullParameter("nav_bar_type", "key");
                        int i10 = a11.f23530a.getInt("nav_bar_type", -1);
                        Integer valueOf = Integer.valueOf(i10);
                        U3.f24250g = valueOf;
                        if (i10 == -1) {
                            valueOf = null;
                        }
                        U3.f24250g = valueOf;
                        Intrinsics.checkNotNullExpressionValue("U3", "TAG");
                    }
                }
            }
        }
        String str2 = C2923db.f24603a;
        try {
            Context d12 = Uc.d();
            if (d12 != null && C2923db.f24605c.getPurchases().getInapp()) {
                Context d13 = Uc.d();
                if (d13 != null) {
                    ConcurrentHashMap concurrentHashMap3 = C6.f23529b;
                    c62 = B6.a(d13, "purchase_store");
                } else {
                    c62 = null;
                }
                if (c62 != null) {
                    Intrinsics.checkNotNullParameter("purchase_pref", "key");
                    str = c62.f23530a.getString("purchase_pref", null);
                } else {
                    str = null;
                }
                if (str != null) {
                    C2923db.f24603a = str;
                }
                if (C2923db.a(d12)) {
                    C2923db.f24606d = 1;
                    C3195ub c3195ub = new C3195ub();
                    C2923db.f24604b = c3195ub;
                    c3195ub.a(d12, new C2889bb());
                }
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
        b();
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Reflection.getOrCreateKotlinClass(ActivityFilter.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(ActivityRule.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(RuleController.class).getSimpleName();
            RuleController.Companion.getInstance(context).addRule(new ActivityRule.Builder(kotlin.collections.y0.d(new ActivityFilter(new ComponentName(context, InMobiAdActivity.class), (String) null))).setAlwaysExpand(true).build());
        } catch (NoClassDefFoundError unused2) {
        }
        try {
            C3169t1.f25278a.c();
            C3169t1.a();
        } catch (Exception unused3) {
            Intrinsics.checkNotNullExpressionValue("De", "TAG");
        }
        Vc.f24316a.a(context, "10.8.7");
        f23601b = true;
    }

    @UiThread
    public final boolean c() {
        try {
            Reflection.getOrCreateKotlinClass(CustomTabsClient.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(Omid.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(OkHttpClient.class).getSimpleName();
            return false;
        } catch (NoClassDefFoundError unused) {
            return true;
        }
    }

    @UiThread
    public final void e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        C3026k1.f24916a.a(context, f23602c);
    }

    @WorkerThread
    public final void a(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Vc vc2 = Vc.f24316a;
            if (vc2.a(context) != null && Intrinsics.areEqual(vc2.a(context), "10.8.7")) {
                return;
            }
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.u
                @Override // java.lang.Runnable
                public final void run() {
                    De.b(context);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
            vc2.a(context, F4.b(context));
            Uc uc2 = Uc.f24267a;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            uc2.a(applicationContext);
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @WorkerThread
    public final void c(@NotNull final Context context) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        String string7;
        String string8;
        String string9;
        int i10;
        Intrinsics.checkNotNullParameter(context, "context");
        if (f23601b) {
            return;
        }
        LinkedHashMap linkedHashMap = O2.f23923a;
        M2.a();
        Pd.c();
        C3182te.f25312a.a();
        AppSetIdInfo appSetIdInfo = AbstractC2962g1.f24753a;
        ms.i iVar = I5.f23733a;
        L3.f23796a.v();
        int i11 = AbstractC2872ab.f24491a;
        Context d10 = Uc.d();
        int i12 = Integer.MIN_VALUE;
        if (i11 != Integer.MIN_VALUE) {
            AbstractC2872ab.f24491a = i11;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_age", i11, false, 4, (Object) null);
            }
        }
        String str = AbstractC2872ab.f24493c;
        Context d11 = Uc.d();
        if (str != null) {
            AbstractC2872ab.f24493c = str;
            if (d11 != null) {
                ConcurrentHashMap concurrentHashMap2 = C6.f23529b;
                C6.a(B6.a(d11, "user_info_store"), "user_age_group", str, false, 4, (Object) null);
            }
        }
        String str2 = AbstractC2872ab.f24494d;
        Context d12 = Uc.d();
        AbstractC2872ab.f24494d = str2;
        if (d12 != null && str2 != null) {
            ConcurrentHashMap concurrentHashMap3 = C6.f23529b;
            C6.a(B6.a(d12, "user_info_store"), "user_area_code", str2, false, 4, (Object) null);
        }
        String str3 = AbstractC2872ab.f24495e;
        Context d13 = Uc.d();
        if (str3 != null) {
            AbstractC2872ab.f24495e = str3;
            if (d13 != null) {
                ConcurrentHashMap concurrentHashMap4 = C6.f23529b;
                C6.a(B6.a(d13, "user_info_store"), "user_post_code", str3, false, 4, (Object) null);
            }
        }
        String str4 = AbstractC2872ab.f24496f;
        Context d14 = Uc.d();
        if (str4 != null) {
            AbstractC2872ab.f24496f = str4;
            if (d14 != null) {
                ConcurrentHashMap concurrentHashMap5 = C6.f23529b;
                C6.a(B6.a(d14, "user_info_store"), "user_city_code", str4, false, 4, (Object) null);
            }
        }
        String str5 = AbstractC2872ab.f24497g;
        Context d15 = Uc.d();
        if (str5 != null) {
            AbstractC2872ab.f24497g = str5;
            if (d15 != null) {
                ConcurrentHashMap concurrentHashMap6 = C6.f23529b;
                C6.a(B6.a(d15, "user_info_store"), "user_state_code", str5, false, 4, (Object) null);
            }
        }
        String str6 = AbstractC2872ab.f24498h;
        Context d16 = Uc.d();
        if (str6 != null) {
            AbstractC2872ab.f24498h = str6;
            if (d16 != null) {
                ConcurrentHashMap concurrentHashMap7 = C6.f23529b;
                C6.a(B6.a(d16, "user_info_store"), "user_country_code", str6, false, 4, (Object) null);
            }
        }
        int i13 = AbstractC2872ab.f24499i;
        Context d17 = Uc.d();
        if (i13 != Integer.MIN_VALUE) {
            AbstractC2872ab.f24499i = i13;
            if (d17 != null) {
                ConcurrentHashMap concurrentHashMap8 = C6.f23529b;
                C6.a(B6.a(d17, "user_info_store"), "user_yob", i13, false, 4, (Object) null);
            }
        }
        String str7 = AbstractC2872ab.f24500j;
        Context d18 = Uc.d();
        if (str7 != null) {
            AbstractC2872ab.f24500j = str7;
            if (d18 != null) {
                ConcurrentHashMap concurrentHashMap9 = C6.f23529b;
                C6.a(B6.a(d18, "user_info_store"), "user_gender", str7, false, 4, (Object) null);
            }
        }
        String str8 = AbstractC2872ab.f24501k;
        Context d19 = Uc.d();
        if (str8 != null) {
            AbstractC2872ab.f24501k = str8;
            if (d19 != null) {
                ConcurrentHashMap concurrentHashMap10 = C6.f23529b;
                C6.a(B6.a(d19, "user_info_store"), "user_education", str8, false, 4, (Object) null);
            }
        }
        String str9 = AbstractC2872ab.f24502l;
        Context d20 = Uc.d();
        if (str9 != null) {
            AbstractC2872ab.f24502l = str9;
            if (d20 != null) {
                ConcurrentHashMap concurrentHashMap11 = C6.f23529b;
                C6.a(B6.a(d20, "user_info_store"), "user_language", str9, false, 4, (Object) null);
            }
        }
        String str10 = AbstractC2872ab.f24503m;
        Context d21 = Uc.d();
        if (str10 != null) {
            AbstractC2872ab.f24503m = str10;
            if (d21 != null) {
                ConcurrentHashMap concurrentHashMap12 = C6.f23529b;
                C6.a(B6.a(d21, "user_info_store"), "user_interest", str10, false, 4, (Object) null);
            }
        }
        Location location = AbstractC2872ab.f24504n;
        Context d22 = Uc.d();
        if (location != null) {
            AbstractC2872ab.f24504n = location;
            if (d22 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(location.getLatitude());
                sb2.append(',');
                sb2.append(location.getLongitude());
                sb2.append(',');
                sb2.append((int) location.getAccuracy());
                sb2.append(',');
                sb2.append(location.getTime());
                String sb3 = sb2.toString();
                ConcurrentHashMap concurrentHashMap13 = C6.f23529b;
                C6.a(B6.a(d22, "user_info_store"), "user_location", sb3, false, 4, (Object) null);
            }
        }
        if (AbstractC2872ab.f24491a == Integer.MIN_VALUE) {
            Context d23 = Uc.d();
            if (d23 == null) {
                i10 = Integer.MIN_VALUE;
            } else {
                ConcurrentHashMap concurrentHashMap14 = C6.f23529b;
                C6 a10 = B6.a(d23, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age", "key");
                i10 = a10.f23530a.getInt("user_age", Integer.MIN_VALUE);
            }
            AbstractC2872ab.f24491a = i10;
        }
        String str11 = null;
        if (AbstractC2872ab.f24493c == null) {
            Context d24 = Uc.d();
            if (d24 == null) {
                string9 = null;
            } else {
                ConcurrentHashMap concurrentHashMap15 = C6.f23529b;
                C6 a11 = B6.a(d24, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_group", "key");
                string9 = a11.f23530a.getString("user_age_group", null);
            }
            AbstractC2872ab.f24493c = string9;
        }
        if (AbstractC2872ab.f24494d == null) {
            Context d25 = Uc.d();
            if (d25 == null) {
                string8 = null;
            } else {
                ConcurrentHashMap concurrentHashMap16 = C6.f23529b;
                C6 a12 = B6.a(d25, "user_info_store");
                Intrinsics.checkNotNullParameter("user_area_code", "key");
                string8 = a12.f23530a.getString("user_area_code", null);
            }
            AbstractC2872ab.f24494d = string8;
        }
        if (AbstractC2872ab.f24495e == null) {
            Context d26 = Uc.d();
            if (d26 == null) {
                string7 = null;
            } else {
                ConcurrentHashMap concurrentHashMap17 = C6.f23529b;
                C6 a13 = B6.a(d26, "user_info_store");
                Intrinsics.checkNotNullParameter("user_post_code", "key");
                string7 = a13.f23530a.getString("user_post_code", null);
            }
            AbstractC2872ab.f24495e = string7;
        }
        if (AbstractC2872ab.f24496f == null) {
            Context d27 = Uc.d();
            if (d27 == null) {
                string6 = null;
            } else {
                ConcurrentHashMap concurrentHashMap18 = C6.f23529b;
                C6 a14 = B6.a(d27, "user_info_store");
                Intrinsics.checkNotNullParameter("user_city_code", "key");
                string6 = a14.f23530a.getString("user_city_code", null);
            }
            AbstractC2872ab.f24496f = string6;
        }
        if (AbstractC2872ab.f24497g == null) {
            Context d28 = Uc.d();
            if (d28 == null) {
                string5 = null;
            } else {
                ConcurrentHashMap concurrentHashMap19 = C6.f23529b;
                C6 a15 = B6.a(d28, "user_info_store");
                Intrinsics.checkNotNullParameter("user_state_code", "key");
                string5 = a15.f23530a.getString("user_state_code", null);
            }
            AbstractC2872ab.f24497g = string5;
        }
        if (AbstractC2872ab.f24498h == null) {
            Context d29 = Uc.d();
            if (d29 == null) {
                string4 = null;
            } else {
                ConcurrentHashMap concurrentHashMap20 = C6.f23529b;
                C6 a16 = B6.a(d29, "user_info_store");
                Intrinsics.checkNotNullParameter("user_country_code", "key");
                string4 = a16.f23530a.getString("user_country_code", null);
            }
            AbstractC2872ab.f24498h = string4;
        }
        if (AbstractC2872ab.f24499i == Integer.MIN_VALUE) {
            Context d30 = Uc.d();
            if (d30 != null) {
                ConcurrentHashMap concurrentHashMap21 = C6.f23529b;
                C6 a17 = B6.a(d30, "user_info_store");
                Intrinsics.checkNotNullParameter("user_yob", "key");
                i12 = a17.f23530a.getInt("user_yob", Integer.MIN_VALUE);
            }
            AbstractC2872ab.f24499i = i12;
        }
        if (AbstractC2872ab.f24500j == null) {
            Context d31 = Uc.d();
            if (d31 == null) {
                string3 = null;
            } else {
                ConcurrentHashMap concurrentHashMap22 = C6.f23529b;
                C6 a18 = B6.a(d31, "user_info_store");
                Intrinsics.checkNotNullParameter("user_gender", "key");
                string3 = a18.f23530a.getString("user_gender", null);
            }
            AbstractC2872ab.f24500j = string3;
        }
        if (AbstractC2872ab.f24501k == null) {
            Context d32 = Uc.d();
            if (d32 == null) {
                string2 = null;
            } else {
                ConcurrentHashMap concurrentHashMap23 = C6.f23529b;
                C6 a19 = B6.a(d32, "user_info_store");
                Intrinsics.checkNotNullParameter("user_education", "key");
                string2 = a19.f23530a.getString("user_education", null);
            }
            AbstractC2872ab.f24501k = string2;
        }
        if (AbstractC2872ab.f24502l == null) {
            Context d33 = Uc.d();
            if (d33 == null) {
                string = null;
            } else {
                ConcurrentHashMap concurrentHashMap24 = C6.f23529b;
                C6 a20 = B6.a(d33, "user_info_store");
                Intrinsics.checkNotNullParameter("user_language", "key");
                string = a20.f23530a.getString("user_language", null);
            }
            AbstractC2872ab.f24502l = string;
        }
        if (AbstractC2872ab.f24503m == null) {
            Context d34 = Uc.d();
            if (d34 != null) {
                ConcurrentHashMap concurrentHashMap25 = C6.f23529b;
                C6 a21 = B6.a(d34, "user_info_store");
                Intrinsics.checkNotNullParameter("user_interest", "key");
                str11 = a21.f23530a.getString("user_interest", null);
            }
            AbstractC2872ab.f24503m = str11;
        }
        AbstractC2872ab.b();
        AbstractC2872ab.c();
        Uc.a(new Runnable() { // from class: ub.v
            @Override // java.lang.Runnable
            public final void run() {
                De.d(context);
            }
        });
    }

    public static void b() {
        try {
            C3182te.f25312a.a();
            AppSetIdInfo appSetIdInfo = AbstractC2962g1.f24753a;
            LinkedHashMap linkedHashMap = O2.f23923a;
            M2.a();
            C3234x2.f25412a.h();
            Pd.c();
            C2908cd.f24557a.a();
            sf sfVar = sf.f25274a;
            C3169t1.f25278a.c();
            Cb.f23542c.set(true);
            Cb.b();
            Uc.f().a(new int[]{2, 1, 100, 151, 150, 152}, Cb.f23546g);
            Aa.a();
            S5.f24132a.a();
            Pd.b("SessionStarted", new HashMap(), Td.f24224a);
            Jd.b();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("De", "TAG");
            Intrinsics.checkNotNullExpressionValue("De", "TAG");
            AbstractC2984h7.a((byte) 2, "De", "SDK encountered unexpected error while starting internal components");
        }
    }

    @WorkerThread
    public static final void a() {
        try {
            if (O2.f23925c.getAndSet(false)) {
                Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
                ((I2) O2.f23924b.getValue()).sendEmptyMessage(5);
            }
            Pd.f23991d.set(false);
            C3172t4 c3172t4 = Pd.f23993f;
            if (c3172t4 != null) {
                ScheduledExecutorService scheduledExecutorService = c3172t4.f25301h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c3172t4.f25301h = null;
                c3172t4.f25298e.set(false);
                c3172t4.f25299f.set(true);
                c3172t4.f25300g.clear();
                c3172t4.f25302i = null;
            }
            Pd.f23993f = null;
            Pd.f23996i = null;
            Uc.f().a(Pd.f23995h);
            synchronized (C2908cd.f24557a) {
                Intrinsics.checkNotNullExpressionValue("cd", "TAG");
                X6 x62 = X6.f24362a;
                if (X6.c()) {
                    LocationManager locationManager = X6.f24363b;
                    if (locationManager != null) {
                        locationManager.removeUpdates(x62);
                    }
                    GoogleApiClient googleApiClient = X6.f24365d;
                    if (googleApiClient != null) {
                        googleApiClient.disconnect();
                    }
                }
                X6.f24365d = null;
            }
            C3169t1.f25287j.set(true);
            C3169t1.d();
            Cb.f23542c.set(false);
            Uc.f().a(Cb.f23546g);
            Cb.f23541b = null;
            if (Aa.f23473c.compareAndSet(true, false)) {
                C2883b5 c2883b5 = Aa.f23471a;
                if (c2883b5 != null) {
                    O4 o42 = c2883b5.f24517e;
                    o42.getClass();
                    Ca ca2 = Ca.f23536a;
                    if (o42.a(ca2)) {
                        o42.f23657d = ca2;
                        o42.e();
                    }
                }
                F3 f32 = Aa.f23472b;
                if (f32 != null) {
                    Intrinsics.checkNotNullExpressionValue("F3", "TAG");
                    W9 w92 = f32.f23630e;
                    w92.getClass();
                    Ca ca3 = Ca.f23536a;
                    if (w92.a(ca3)) {
                        w92.f23657d = ca3;
                        w92.b();
                    }
                }
            }
            H3 h32 = S5.f24134c;
            if (h32 != null) {
                for (G3 g32 : h32.f23695c) {
                    g32.b();
                }
            }
            E6 e62 = S5.f24135d;
            C3172t4 c3172t42 = e62.f23618b;
            if (c3172t42 != null) {
                ScheduledExecutorService scheduledExecutorService2 = c3172t42.f25301h;
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdownNow();
                }
                c3172t42.f25301h = null;
                c3172t42.f25298e.set(false);
                c3172t42.f25299f.set(true);
                c3172t42.f25300g.clear();
                c3172t42.f25302i = null;
            }
            e62.f23618b = null;
            Uc.f().a(e62.f23620d);
            Jd.a();
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("De", "TAG");
            Intrinsics.checkNotNullExpressionValue("De", "TAG");
            AbstractC2984h7.a((byte) 1, "De", "SDK encountered unexpected error while stopping internal components");
        }
    }
}
