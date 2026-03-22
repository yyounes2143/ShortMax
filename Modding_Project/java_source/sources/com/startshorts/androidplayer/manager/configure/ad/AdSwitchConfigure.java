package com.startshorts.androidplayer.manager.configure.ad;

import android.content.Context;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdHelper;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdSwitchConfigure.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdSwitchConfigure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSwitchConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n13402#2,2:128\n*S KotlinDebug\n*F\n+ 1 AdSwitchConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure\n*L\n68#1:128,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AdSwitchConfigure implements me.b<a> {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f42268b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdSwitchConfigure f42267a = new AdSwitchConfigure();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final a f42269c = new a(true);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static me.a f42270d = new me.a();

    /* compiled from: AdSwitchConfigure.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAdSwitchConfigure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSwitchConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$AdSwitch\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f42271a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentHashMap<AdScene, Boolean> f42272b = new ConcurrentHashMap<>();

        public a(boolean z10) {
            this.f42271a = z10;
        }

        @NotNull
        public final ConcurrentHashMap<AdScene, Boolean> a() {
            return this.f42272b;
        }

        public final boolean b(@NotNull AdScene adScene) {
            Intrinsics.checkNotNullParameter(adScene, "adScene");
            Boolean bool = this.f42272b.get(adScene);
            if (bool == null) {
                bool = Boolean.TRUE;
            }
            Boolean bool2 = bool;
            if (this.f42271a) {
                AdSwitchConfigure.f42267a.j(adScene);
            }
            return bool2.booleanValue();
        }

        @NotNull
        public String toString() {
            return "AdSwitch(mSceneEnableMap=" + this.f42272b + ')';
        }
    }

    private AdSwitchConfigure() {
    }

    private final String g() {
        return AdHelper.f41598a.h();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    @Override // me.b
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$init$1
            if (r0 == 0) goto L13
            r0 = r13
            com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$init$1 r0 = (com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$init$1) r0
            int r1 = r0.f42275j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42275j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$init$1 r0 = new com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure$init$1
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.f42273h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42275j
            java.lang.String r3 = "AdSwitchConfigure"
            r4 = 1
            if (r2 == 0) goto L33
            if (r2 != r4) goto L2b
            kotlin.f.b(r13)
            goto L64
        L2b:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L33:
            kotlin.f.b(r13)
            oe.e r13 = oe.e.f63182a
            boolean r13 = r13.e()
            if (r13 != 0) goto L4b
            com.startshorts.androidplayer.log.Logger r12 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r13 = "init failed -> should init country tier first"
            r12.e(r3, r13)
            r12 = 0
            java.lang.Boolean r12 = kotlin.coroutines.jvm.internal.a.a(r12)
            return r12
        L4b:
            com.startshorts.androidplayer.bean.ad.AdScene r5 = com.startshorts.androidplayer.bean.ad.AdScene.APP_OPEN
            com.startshorts.androidplayer.bean.ad.AdScene r6 = com.startshorts.androidplayer.bean.ad.AdScene.REWARD
            com.startshorts.androidplayer.bean.ad.AdScene r7 = com.startshorts.androidplayer.bean.ad.AdScene.INTERSTITIAL
            com.startshorts.androidplayer.bean.ad.AdScene r8 = com.startshorts.androidplayer.bean.ad.AdScene.BANNER
            com.startshorts.androidplayer.bean.ad.AdScene r9 = com.startshorts.androidplayer.bean.ad.AdScene.NATIVE
            com.startshorts.androidplayer.bean.ad.AdScene r10 = com.startshorts.androidplayer.bean.ad.AdScene.MEDIA_VIDEO
            com.startshorts.androidplayer.bean.ad.AdScene[] r13 = new com.startshorts.androidplayer.bean.ad.AdScene[]{r5, r6, r7, r8, r9, r10}
            r0.f42275j = r4
            java.lang.Object r13 = r11.i(r12, r13, r0)
            if (r13 != r1) goto L64
            return r1
        L64:
            r12 = r13
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "init -> succeed="
            r1.append(r2)
            r1.append(r12)
            java.lang.String r12 = r1.toString()
            r0.h(r3, r12)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure.a(java.lang.String, rs.c):java.lang.Object");
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull rs.c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h(g(), this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f42268b = z10;
    }

    @Override // me.b
    @Nullable
    public Object d(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = AppConfigureUtil.f42209a.g(context, g(), this, cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public boolean e() {
        return f42268b;
    }

    @Nullable
    public Object h(@NotNull rs.c<? super Unit> cVar) {
        Object e10 = f42270d.e(this, cVar);
        if (e10 == kotlin.coroutines.intrinsics.a.f()) {
            return e10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public Object i(@NotNull String str, @NotNull AdScene[] adSceneArr, @NotNull rs.c<? super Boolean> cVar) {
        boolean z10 = false;
        if (StringsKt.t0(str)) {
            Logger.f41511a.e("AdSwitchConfigure", "update failed -> " + g() + " json is blank");
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        try {
            String value = oe.e.f63182a.value();
            JSONArray jSONArray = new JSONObject(str).getJSONArray(value);
            f42270d.b(str);
            AppConfigureUtil appConfigureUtil = AppConfigureUtil.f42209a;
            Intrinsics.checkNotNull(jSONArray);
            JSONObject e10 = AppConfigureUtil.e(appConfigureUtil, "AdSwitchConfigure", jSONArray, DeviceUtil.f48146a.K() - ud.b.f68412a.M0(), false, 8, null);
            if (e10 != null) {
                a aVar = f42269c;
                me.a.d(f42270d, e10, false, 2, null);
                for (AdScene adScene : adSceneArr) {
                    boolean optBoolean = e10.optBoolean(adScene.getValue());
                    aVar.a().put(adScene, kotlin.coroutines.jvm.internal.a.a(optBoolean));
                    if (id.a.f53392a.c()) {
                        Logger.f41511a.h("AdSwitchConfigure", "update scene -> switchKey=" + f42267a.g() + ',' + value + '=' + adScene.getValue() + '=' + optBoolean + ",activeTime=" + AppConfigureUtil.f42209a.b(e10) + ",map=" + aVar.a());
                    }
                }
            }
            z10 = true;
        } catch (Exception e11) {
            Logger.f41511a.e("AdSwitchConfigure", "update failed " + e11);
        }
        return kotlin.coroutines.jvm.internal.a.a(z10);
    }

    public void j(@NotNull AdScene adScene) {
        Intrinsics.checkNotNullParameter(adScene, "adScene");
        Logger logger = Logger.f41511a;
        logger.h("AdSwitchConfigure", "updateByActiveTime -> " + adScene);
        CoroutineUtil.l(CoroutineUtil.f48072a, "AdSwitchJsonConfigure updateByActiveTime", false, new AdSwitchConfigure$updateByActiveTime$1(adScene, null), 2, null);
    }

    @NotNull
    public final r k() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "AdSwitchJsonConfigure:updateConfigure", false, new AdSwitchConfigure$updateConfigure$1(null), 2, null);
    }

    @Override // me.b
    @NotNull
    /* renamed from: l */
    public a value() {
        return f42269c;
    }
}
