package com.startshorts.androidplayer.utils.campaign;

import android.text.TextUtils;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustEvent;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AppsFlyerLib;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.u;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MatchEventUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMatchEventUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MatchEventUtil.kt\ncom/startshorts/androidplayer/utils/campaign/MatchEventUtil\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,336:1\n29#2:337\n1#3:338\n*S KotlinDebug\n*F\n+ 1 MatchEventUtil.kt\ncom/startshorts/androidplayer/utils/campaign/MatchEventUtil\n*L\n223#1:337\n*E\n"})
/* loaded from: classes7.dex */
public final class MatchEventUtil {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final MatchEventUtil f48183a = new MatchEventUtil();

    private MatchEventUtil() {
    }

    private final void d(String str, String str2, int i10, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            HashMap hashMap = new HashMap();
            hashMap.put(AFInAppEventParameterName.CURRENCY, str);
            try {
                hashMap.put(AFInAppEventParameterName.REVENUE, Float.valueOf(Float.parseFloat(str2)));
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("MatchEventUtil", "logPurchaseEvent value.toFloat() -> exception -> " + e10.getMessage());
                hashMap.put(AFInAppEventParameterName.REVENUE, str2);
            }
            if (str3 != null) {
                hashMap.put("userCode", str3);
            }
            AppsFlyerLib.getInstance().logEvent(u.f51776a.b(), AFInAppEventType.PURCHASE, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e(MatchEventUtil matchEventUtil, String str, String str2, int i10, String str3, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str3 = null;
        }
        matchEventUtil.d(str, str2, i10, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            AdjustEvent adjustEvent = new AdjustEvent(str3);
            adjustEvent.setRevenue(Double.parseDouble(str2), str);
            String t02 = AccountRepo.f43052a.t0();
            if (!TextUtils.isEmpty(t02)) {
                adjustEvent.addCallbackParameter("userCode", t02);
            }
            Adjust.trackEvent(adjustEvent);
        }
    }

    public final void b() {
        CampaignProvider.f41870a.o(CampaignType.AJ_CONVERSION_DATA);
    }

    public final void c() {
        CampaignProvider.f41870a.o(CampaignType.AF_CONVERSION_DATA);
    }

    public final void g(@NotNull String currency, @NotNull String value, @NotNull String orderId) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        ConfigRepo configRepo = ConfigRepo.f43771a;
        if (!configRepo.w() && !configRepo.x()) {
            Logger.f41511a.e("MatchEventUtil", "logPurchaseEvent failed -> sdkEnable is false");
        } else {
            CoroutineUtil.l(CoroutineUtil.f48072a, "getMatchEventUploadInfo", false, new MatchEventUtil$logPurchaseEvent$1(orderId, currency, value, null), 2, null);
        }
    }

    public final void h(@NotNull String currency, @NotNull String value, @NotNull String orderId) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        ConfigRepo configRepo = ConfigRepo.f43771a;
        if (!configRepo.w() && !configRepo.x()) {
            Logger.f41511a.e("MatchEventUtil", "logSubsEvent failed -> afEnable is false");
        } else {
            CoroutineUtil.l(CoroutineUtil.f48072a, "getMatchEventUploadInfo", false, new MatchEventUtil$logSubsEvent$1(orderId, currency, value, null), 2, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0098 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ea  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.startshorts.androidplayer.bean.campaign.CampaignInfo i(@org.jetbrains.annotations.NotNull java.lang.String r24, @org.jetbrains.annotations.NotNull java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.campaign.MatchEventUtil.i(java.lang.String, java.lang.String):com.startshorts.androidplayer.bean.campaign.CampaignInfo");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.startshorts.androidplayer.bean.campaign.CampaignInfo j(@org.jetbrains.annotations.Nullable java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.campaign.MatchEventUtil.j(java.lang.String):com.startshorts.androidplayer.bean.campaign.CampaignInfo");
    }

    public final void k(@NotNull String userid) {
        Intrinsics.checkNotNullParameter(userid, "userid");
        AppsFlyerLib.getInstance().setCustomerUserId(userid);
    }

    public final void l(@NotNull String userid) {
        Intrinsics.checkNotNullParameter(userid, "userid");
        Adjust.addGlobalCallbackParameter("userCode", userid);
    }

    public final void m(@Nullable String str) {
        if (str != null) {
            Adjust.addGlobalCallbackParameter("deviceId", str);
        }
    }

    public final void n(@NotNull String pushToken) {
        Intrinsics.checkNotNullParameter(pushToken, "pushToken");
        Adjust.setPushToken(pushToken, u.f51776a.b());
    }
}
