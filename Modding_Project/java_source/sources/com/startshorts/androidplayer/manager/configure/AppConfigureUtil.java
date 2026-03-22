package com.startshorts.androidplayer.manager.configure;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import ud.b;
/* compiled from: AppConfigureUtil.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AppConfigureUtil {
    @NotNull

    /* renamed from: a */
    public static final AppConfigureUtil f42209a = new AppConfigureUtil();

    private AppConfigureUtil() {
    }

    private final long c() {
        b bVar = b.f68412a;
        if (bVar.x0()) {
            return 0L;
        }
        return DeviceUtil.f48146a.K() - bVar.M0();
    }

    public static /* synthetic */ JSONObject e(AppConfigureUtil appConfigureUtil, String str, JSONArray jSONArray, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = appConfigureUtil.c();
        }
        long j11 = j10;
        if ((i10 & 8) != 0) {
            z10 = true;
        }
        return appConfigureUtil.d(str, jSONArray, j11, z10);
    }

    private final String f(String str) {
        return RemoteConfigRepo.f43788a.q(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(java.lang.String r5, me.b<?> r6, java.lang.String r7, java.lang.String r8, rs.c<? super kotlin.Unit> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initConfigure$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initConfigure$1 r0 = (com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initConfigure$1) r0
            int r1 = r0.f42223m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42223m = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initConfigure$1 r0 = new com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initConfigure$1
            r0.<init>(r4, r9)
        L18:
            java.lang.Object r9 = r0.f42221k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42223m
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r5 = r0.f42220j
            r8 = r5
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r5 = r0.f42219i
            r6 = r5
            me.b r6 = (me.b) r6
            java.lang.Object r5 = r0.f42218h
            java.lang.String r5 = (java.lang.String) r5
            kotlin.f.b(r9)
            goto L51
        L37:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3f:
            kotlin.f.b(r9)
            r0.f42218h = r5
            r0.f42219i = r6
            r0.f42220j = r8
            r0.f42223m = r3
            java.lang.Object r9 = r6.a(r7, r0)
            if (r9 != r1) goto L51
            return r1
        L51:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r7 = r9.booleanValue()
            com.startshorts.androidplayer.log.Logger r9 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "initConfigure from="
            r0.append(r1)
            r0.append(r8)
            r1 = 44
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = " : "
            r0.append(r5)
            if (r7 == 0) goto L79
            java.lang.String r5 = "succeed"
            goto L7b
        L79:
            java.lang.String r5 = "failed"
        L7b:
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "AppConfigureUtil"
            r9.e(r0, r5)
            if (r7 == 0) goto Lac
            java.lang.String r5 = "local"
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r5)
            if (r5 != 0) goto La9
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r7 = "initConfigure succeed. adConfigure.value="
            r5.append(r7)
            java.lang.Object r7 = r6.value()
            r5.append(r7)
            java.lang.String r5 = r5.toString()
            r9.e(r0, r5)
        La9:
            r6.c(r3)
        Lac:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureUtil.i(java.lang.String, me.b, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    public final long b(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        return jSONObject.getLong("maxActiveTime");
    }

    @Nullable
    public final JSONObject d(@NotNull String tag, @NotNull JSONArray array, long j10, boolean z10) {
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(array, "array");
        try {
            int length = array.length();
            for (int i10 = 0; i10 < length; i10++) {
                jSONObject = array.getJSONObject(i10);
                Intrinsics.checkNotNull(jSONObject);
                if (j10 <= b(jSONObject)) {
                    break;
                }
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("AppConfigureUtil", tag + ".getJsonObjectByActiveTime exception -> " + e10.getMessage());
        }
        jSONObject = null;
        if (z10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("AppConfigureUtil", "getJsonObjectByActiveTime userActiveTime=" + j10 + ",result=" + jSONObject);
        }
        return jSONObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(8:5|6|7|8|(1:(2:11|12)(2:18|19))(3:20|21|(2:23|(1:25)))|13|14|15))|28|6|7|8|(0)(0)|13|14|15) */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0031, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0070, code lost:
        r0 = com.startshorts.androidplayer.manager.event.EventManager.f42463a;
        r2 = new android.os.Bundle();
        r2.putString("err_msg", "key:" + r9 + ';' + r8.getMessage());
        r10 = kotlin.Unit.f60915a;
        com.startshorts.androidplayer.manager.event.EventManager.s0(r0, "app_config_local_error", r2, 0, 4, null);
        r10 = com.startshorts.androidplayer.log.Logger.f41511a;
        r10.e("AppConfigureUtil", "initByLocalConfigure " + r9 + " error:" + r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(@org.jetbrains.annotations.NotNull android.content.Context r8, @org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.NotNull me.b<?> r10, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByLocalConfigure$1
            if (r0 == 0) goto L14
            r0 = r11
            com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByLocalConfigure$1 r0 = (com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByLocalConfigure$1) r0
            int r1 = r0.f42213k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f42213k = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByLocalConfigure$1 r0 = new com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByLocalConfigure$1
            r0.<init>(r7, r11)
            goto L12
        L1a:
            java.lang.Object r11 = r6.f42211i
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f42213k
            r2 = 1
            if (r1 == 0) goto L3b
            if (r1 != r2) goto L33
            java.lang.Object r8 = r6.f42210h
            r9 = r8
            java.lang.String r9 = (java.lang.String) r9
            kotlin.f.b(r11)     // Catch: java.lang.Exception -> L31
            goto Lc4
        L31:
            r8 = move-exception
            goto L70
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlin.f.b(r11)
            boolean r11 = r10.e()     // Catch: java.lang.Exception -> L31
            if (r11 != 0) goto Lc4
            com.startshorts.androidplayer.utils.FileUtil r11 = com.startshorts.androidplayer.utils.FileUtil.f48159a     // Catch: java.lang.Exception -> L31
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L31
            r1.<init>()     // Catch: java.lang.Exception -> L31
            java.lang.String r3 = "ad/"
            r1.append(r3)     // Catch: java.lang.Exception -> L31
            r1.append(r9)     // Catch: java.lang.Exception -> L31
            java.lang.String r3 = ".json"
            r1.append(r3)     // Catch: java.lang.Exception -> L31
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L31
            java.lang.String r4 = r11.d(r8, r1)     // Catch: java.lang.Exception -> L31
            java.lang.String r5 = "local"
            r6.f42210h = r9     // Catch: java.lang.Exception -> L31
            r6.f42213k = r2     // Catch: java.lang.Exception -> L31
            r1 = r7
            r2 = r9
            r3 = r10
            java.lang.Object r8 = r1.i(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L31
            if (r8 != r0) goto Lc4
            return r0
        L70:
            com.startshorts.androidplayer.manager.event.EventManager r0 = com.startshorts.androidplayer.manager.event.EventManager.f42463a
            android.os.Bundle r2 = new android.os.Bundle
            r2.<init>()
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "key:"
            r10.append(r11)
            r10.append(r9)
            r11 = 59
            r10.append(r11)
            java.lang.String r11 = r8.getMessage()
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            java.lang.String r11 = "err_msg"
            r2.putString(r11, r10)
            kotlin.Unit r10 = kotlin.Unit.f60915a
            r5 = 4
            r6 = 0
            java.lang.String r1 = "app_config_local_error"
            r3 = 0
            com.startshorts.androidplayer.manager.event.EventManager.s0(r0, r1, r2, r3, r5, r6)
            com.startshorts.androidplayer.log.Logger r10 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r0 = "initByLocalConfigure "
            r11.append(r0)
            r11.append(r9)
            java.lang.String r9 = " error:"
            r11.append(r9)
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            java.lang.String r9 = "AppConfigureUtil"
            r10.e(r9, r8)
        Lc4:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureUtil.g(android.content.Context, java.lang.String, me.b, rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(8:5|6|7|8|(1:(2:11|12)(2:18|19))(3:20|21|(1:23))|13|14|15))|26|6|7|8|(0)(0)|13|14|15) */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0030, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0051, code lost:
        r0 = com.startshorts.androidplayer.manager.event.EventManager.f42463a;
        r2 = new android.os.Bundle();
        r2.putString("err_msg", "key:" + r8 + ';' + r9.getMessage());
        r10 = kotlin.Unit.f60915a;
        com.startshorts.androidplayer.manager.event.EventManager.s0(r0, "app_config_remote_error", r2, 0, 4, null);
        r10 = com.startshorts.androidplayer.log.Logger.f41511a;
        r10.e("AppConfigureUtil", "initByRemoteConfigure " + r8 + " error:" + r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x003a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull me.b<?> r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByRemoteConfigure$1
            if (r0 == 0) goto L14
            r0 = r10
            com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByRemoteConfigure$1 r0 = (com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByRemoteConfigure$1) r0
            int r1 = r0.f42217k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f42217k = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByRemoteConfigure$1 r0 = new com.startshorts.androidplayer.manager.configure.AppConfigureUtil$initByRemoteConfigure$1
            r0.<init>(r7, r10)
            goto L12
        L1a:
            java.lang.Object r10 = r6.f42215i
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f42217k
            r2 = 1
            if (r1 == 0) goto L3a
            if (r1 != r2) goto L32
            java.lang.Object r8 = r6.f42214h
            java.lang.String r8 = (java.lang.String) r8
            kotlin.f.b(r10)     // Catch: java.lang.Exception -> L30
            goto La5
        L30:
            r9 = move-exception
            goto L51
        L32:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3a:
            kotlin.f.b(r10)
            java.lang.String r4 = r7.f(r8)     // Catch: java.lang.Exception -> L30
            java.lang.String r5 = "remote"
            r6.f42214h = r8     // Catch: java.lang.Exception -> L30
            r6.f42217k = r2     // Catch: java.lang.Exception -> L30
            r1 = r7
            r2 = r8
            r3 = r9
            java.lang.Object r8 = r1.i(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L30
            if (r8 != r0) goto La5
            return r0
        L51:
            com.startshorts.androidplayer.manager.event.EventManager r0 = com.startshorts.androidplayer.manager.event.EventManager.f42463a
            android.os.Bundle r2 = new android.os.Bundle
            r2.<init>()
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r1 = "key:"
            r10.append(r1)
            r10.append(r8)
            r1 = 59
            r10.append(r1)
            java.lang.String r1 = r9.getMessage()
            r10.append(r1)
            java.lang.String r10 = r10.toString()
            java.lang.String r1 = "err_msg"
            r2.putString(r1, r10)
            kotlin.Unit r10 = kotlin.Unit.f60915a
            r5 = 4
            r6 = 0
            java.lang.String r1 = "app_config_remote_error"
            r3 = 0
            com.startshorts.androidplayer.manager.event.EventManager.s0(r0, r1, r2, r3, r5, r6)
            com.startshorts.androidplayer.log.Logger r10 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "initByRemoteConfigure "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r8 = " error:"
            r0.append(r8)
            r0.append(r9)
            java.lang.String r8 = r0.toString()
            java.lang.String r9 = "AppConfigureUtil"
            r10.e(r9, r8)
        La5:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.AppConfigureUtil.h(java.lang.String, me.b, rs.c):java.lang.Object");
    }
}
