package com.startshorts.androidplayer.manager.configure.ad;

import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.vungle.ads.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: BaseAdUnitIdConfigure.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseAdUnitIdConfigure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseAdUnitIdConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,203:1\n13402#2,2:204\n*S KotlinDebug\n*F\n+ 1 BaseAdUnitIdConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/BaseAdUnitIdConfigure\n*L\n95#1:204,2\n*E\n"})
/* loaded from: classes6.dex */
public abstract class BaseAdUnitIdConfigure implements me.b<HashMap<String, List<ca.e>>> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f42295d = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f42297b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, List<ca.e>> f42296a = new HashMap<>();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private me.a f42298c = new me.a();

    /* compiled from: BaseAdUnitIdConfigure.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final List<ca.e> i(String str, JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        int i10 = 0;
        while (i10 < length) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i10);
            String string = jSONObject2.getString("type");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            AdFormat k10 = k(string);
            int o10 = o(k10, str);
            String string2 = jSONObject2.getString("id");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            AdPriority l10 = l(jSONObject2.getInt(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY));
            String optString = jSONObject2.optString("name");
            Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
            boolean optBoolean = jSONObject2.optBoolean("pam");
            JSONArray jSONArray = optJSONArray;
            arrayList.add(new ca.e(string2, k10, l10, o10, optString, null, 2, com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().h(), g(), optBoolean, 32, null));
            if (jSONObject2.has("dailyMaxShowCount")) {
                AdShowCountManager adShowCountManager = AdShowCountManager.f42259a;
                String string3 = jSONObject2.getString("id");
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                adShowCountManager.l(string3, jSONObject2.getInt("dailyMaxShowCount"));
            } else {
                Logger.f41511a.e(p(), "inflate -> error KEY_DAILY_MAX_SHOW_COUNT not exist");
            }
            i10++;
            optJSONArray = jSONArray;
        }
        this.f42296a.put(str, arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object j(com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure r10, java.lang.String r11, rs.c<? super java.lang.Boolean> r12) {
        /*
            boolean r0 = r12 instanceof com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure$init$1
            if (r0 == 0) goto L13
            r0 = r12
            com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure$init$1 r0 = (com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure$init$1) r0
            int r1 = r0.f42302k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42302k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure$init$1 r0 = new com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure$init$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.f42300i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42302k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r10 = r0.f42299h
            com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure r10 = (com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure) r10
            kotlin.f.b(r12)
            goto L6c
        L2d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L35:
            kotlin.f.b(r12)
            oe.e r12 = oe.e.f63182a
            boolean r12 = r12.e()
            if (r12 != 0) goto L51
            com.startshorts.androidplayer.log.Logger r11 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r10 = r10.p()
            java.lang.String r12 = "init failed -> should init country tier first"
            r11.e(r10, r12)
            r10 = 0
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.a.a(r10)
            return r10
        L51:
            com.startshorts.androidplayer.bean.ad.AdScene r4 = com.startshorts.androidplayer.bean.ad.AdScene.INTERSTITIAL
            com.startshorts.androidplayer.bean.ad.AdScene r5 = com.startshorts.androidplayer.bean.ad.AdScene.REWARD
            com.startshorts.androidplayer.bean.ad.AdScene r6 = com.startshorts.androidplayer.bean.ad.AdScene.APP_OPEN
            com.startshorts.androidplayer.bean.ad.AdScene r7 = com.startshorts.androidplayer.bean.ad.AdScene.NATIVE
            com.startshorts.androidplayer.bean.ad.AdScene r8 = com.startshorts.androidplayer.bean.ad.AdScene.BANNER
            com.startshorts.androidplayer.bean.ad.AdScene r9 = com.startshorts.androidplayer.bean.ad.AdScene.MEDIA_VIDEO
            com.startshorts.androidplayer.bean.ad.AdScene[] r12 = new com.startshorts.androidplayer.bean.ad.AdScene[]{r4, r5, r6, r7, r8, r9}
            r0.f42299h = r10
            r0.f42302k = r3
            java.lang.Object r12 = r10.q(r11, r12, r0)
            if (r12 != r1) goto L6c
            return r1
        L6c:
            r11 = r12
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r10 = r10.p()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "init -> succeed="
            r1.append(r2)
            r1.append(r11)
            java.lang.String r11 = r1.toString()
            r0.h(r10, r11)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure.j(com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure, java.lang.String, rs.c):java.lang.Object");
    }

    private final AdFormat k(String str) {
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    return AdFormat.BANNER;
                }
                break;
            case -1052618729:
                if (str.equals("native")) {
                    return AdFormat.NATIVE;
                }
                break;
            case -934326481:
                if (str.equals(AdmobPreloadConfig.REWARD)) {
                    return AdFormat.REWARDED_VIDEO;
                }
                break;
            case -794092533:
                if (str.equals("appOpen")) {
                    return AdFormat.APP_OPEN;
                }
                break;
            case 604727084:
                if (str.equals(Constants.PLACEMENT_TYPE_INTERSTITIAL)) {
                    return AdFormat.INTERSTITIAL;
                }
                break;
            case 1931215607:
                if (str.equals("mediaVideo")) {
                    return AdFormat.MEDIA_VIDEO;
                }
                break;
        }
        throw new IllegalArgumentException("ad format(" + str + ") Not Existed.");
    }

    private final AdPriority l(int i10) {
        AdPriority adPriority = AdPriority.PRIORITY_HIGH;
        if (i10 != adPriority.getValue()) {
            AdPriority adPriority2 = AdPriority.PRIORITY_MID;
            if (i10 != adPriority2.getValue()) {
                AdPriority adPriority3 = AdPriority.PRIORITY_LOW;
                adPriority3.getValue();
                return adPriority3;
            }
            return adPriority2;
        }
        return adPriority;
    }

    static /* synthetic */ Object n(BaseAdUnitIdConfigure baseAdUnitIdConfigure, rs.c<? super Unit> cVar) {
        Object e10 = baseAdUnitIdConfigure.f42298c.e(baseAdUnitIdConfigure, cVar);
        if (e10 == kotlin.coroutines.intrinsics.a.f()) {
            return e10;
        }
        return Unit.f60915a;
    }

    private final int o(AdFormat adFormat, String str) {
        AdmobPreloadConfig.Companion companion;
        AdmobPreloadConfig value;
        Integer num;
        Integer preloadNum;
        int intValue;
        if (adFormat == AdFormat.NATIVE) {
            return 3;
        }
        if (g() != AdAggregatedSdk.ADMOB || (value = (companion = AdmobPreloadConfig.Companion).getValue()) == null || (num = value.getSwitch()) == null || num.intValue() != 1 || (preloadNum = value.getPreloadNum()) == null || (intValue = preloadNum.intValue()) <= 0 || !companion.isTypeAvailable(str, value.getAdType())) {
            return 1;
        }
        Logger logger = Logger.f41511a;
        String p10 = p();
        logger.h(p10, "resolveMaxSize -> adScene=" + str + ", maxSize aligned to preloadNum=" + intValue);
        return intValue;
    }

    static /* synthetic */ Object r(BaseAdUnitIdConfigure baseAdUnitIdConfigure, String str, AdScene[] adSceneArr, rs.c<? super Boolean> cVar) {
        boolean z10 = false;
        if (StringsKt.t0(str)) {
            Logger.f41511a.e(baseAdUnitIdConfigure.p(), "update failed -> mAdJsonInUse.mWholeJson is blank");
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        try {
            String value = oe.e.f63182a.value();
            JSONArray jSONArray = new JSONObject(str).getJSONObject("adGroup").getJSONArray(value);
            baseAdUnitIdConfigure.f42298c.b(str);
            AppConfigureUtil appConfigureUtil = AppConfigureUtil.f42209a;
            String p10 = baseAdUnitIdConfigure.p();
            Intrinsics.checkNotNull(jSONArray);
            JSONObject e10 = AppConfigureUtil.e(appConfigureUtil, p10, jSONArray, 0L, false, 4, null);
            if (e10 != null) {
                baseAdUnitIdConfigure.f42298c.c(e10, false);
                for (AdScene adScene : adSceneArr) {
                    List<ca.e> i10 = baseAdUnitIdConfigure.i(adScene.getValue(), e10);
                    if (id.a.f53392a.c()) {
                        Logger.f41511a.h(baseAdUnitIdConfigure.p(), "update scene " + value + ':' + adScene.getValue() + '=' + i10 + ",activeTime=" + AppConfigureUtil.f42209a.b(e10) + ",map=" + baseAdUnitIdConfigure.f42296a + '.');
                    }
                }
            }
            z10 = true;
        } catch (Exception e11) {
            Logger.f41511a.e(baseAdUnitIdConfigure.p(), "update failed " + e11);
        }
        return kotlin.coroutines.jvm.internal.a.a(z10);
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super Boolean> cVar) {
        return j(this, str, cVar);
    }

    @Override // me.b
    public void c(boolean z10) {
        this.f42297b = z10;
    }

    @Override // me.b
    public boolean e() {
        return this.f42297b;
    }

    @NotNull
    public abstract AdAggregatedSdk g();

    @NotNull
    public final List<ca.e> h(@NotNull AdScene scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        List<ca.e> list = value().get(scene.getValue());
        if (list == null) {
            list = new ArrayList<>();
        }
        return AdShowCountManager.f42259a.g(list);
    }

    @Nullable
    public Object m(@NotNull rs.c<? super Unit> cVar) {
        return n(this, cVar);
    }

    @NotNull
    public abstract String p();

    @Nullable
    public Object q(@NotNull String str, @NotNull AdScene[] adSceneArr, @NotNull rs.c<? super Boolean> cVar) {
        return r(this, str, adSceneArr, cVar);
    }

    public void s(@NotNull AdScene adScene) {
        Intrinsics.checkNotNullParameter(adScene, "adScene");
        Logger logger = Logger.f41511a;
        String p10 = p();
        logger.h(p10, "updateByActiveTime -> " + adScene);
        CoroutineUtil.l(CoroutineUtil.f48072a, "AdUnitIdJsonConfigure updateByActiveTime", false, new BaseAdUnitIdConfigure$updateByActiveTime$1(this, adScene, null), 2, null);
    }

    @Override // me.b
    @NotNull
    /* renamed from: t */
    public HashMap<String, List<ca.e>> value() {
        return this.f42296a;
    }
}
