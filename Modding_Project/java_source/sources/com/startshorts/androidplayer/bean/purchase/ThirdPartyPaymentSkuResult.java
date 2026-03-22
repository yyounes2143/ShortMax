package com.startshorts.androidplayer.bean.purchase;

import android.content.Context;
import android.os.Bundle;
import android.text.Spanned;
import com.huawei.hms.framework.common.ContainerUtils;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.o;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThirdPartyPaymentSkuResult.kt */
@Metadata
@SourceDebugExtension({"SMAP\nThirdPartyPaymentSkuResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThirdPartyPaymentSkuResult.kt\ncom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,99:1\n216#2,2:100\n*S KotlinDebug\n*F\n+ 1 ThirdPartyPaymentSkuResult.kt\ncom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult\n*L\n71#1:100,2\n*E\n"})
/* loaded from: classes6.dex */
public final class ThirdPartyPaymentSkuResult {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String HIGH_LIGHT_COLOR = "#FF442C";
    @NotNull
    private static final String TAG = "ThirdPartyPaymentSkuResult";
    private final boolean enable;
    @Nullable
    private final String ratio;
    @Nullable
    private final String url;

    /* compiled from: ThirdPartyPaymentSkuResult.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ThirdPartyPaymentSkuResult(boolean z10, @Nullable String str, @Nullable String str2) {
        this.enable = z10;
        this.ratio = str;
        this.url = str2;
    }

    public static /* synthetic */ String formatUrl$default(ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult, Context context, String str, BaseEpisode baseEpisode, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            baseEpisode = null;
        }
        return thirdPartyPaymentSkuResult.formatUrl(context, str, baseEpisode);
    }

    public final boolean enable() {
        String str;
        String str2;
        if (this.enable && (str = this.url) != null && str.length() != 0 && (str2 = this.ratio) != null && str2.length() != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String formatUrl(@NotNull Context context, @NotNull String scene, @Nullable BaseEpisode baseEpisode) {
        String aBTestIds;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scene, "scene");
        String str = this.url;
        String str2 = "";
        if (str == null || str.length() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(this.url);
        if (StringsKt.b0(this.url, "?", false, 2, null)) {
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        } else {
            sb2.append("?");
        }
        sb2.append("scene=" + scene + '&');
        sb2.append("platform=android&");
        sb2.append("openType=browser&");
        sb2.append("statusBarHeight=" + DeviceUtil.f48146a.J() + '&');
        CMSConfigResult f02 = ud.b.f68412a.f0();
        if (f02 != null && (aBTestIds = f02.getABTestIds()) != null && aBTestIds.length() > 0) {
            sb2.append("cmsAbTestId=" + aBTestIds + '&');
        }
        if (baseEpisode != null) {
            sb2.append("shortPlayId=" + baseEpisode.getShortPlayId() + '&');
            sb2.append("reel_id=" + baseEpisode.getShortPlayCode() + '&');
            sb2.append("episode=" + baseEpisode.getEpisodeNum() + '&');
        }
        Bundle u10 = EventManager.u(EventManager.f42463a, null, 1, null);
        if (u10 != null) {
            for (String str3 : u10.keySet()) {
                sb2.append(str3 + '=' + u10.getString(str3) + '&');
            }
        }
        HashMap b10 = o.a.b(o.f41799c, null, 1, null);
        b10.remove("clientPlatform");
        b10.remove("Authorization");
        b10.remove("TraceId");
        b10.remove("hasProxy");
        String str4 = (String) b10.get("model");
        if (str4 != null && str4.length() != 0) {
            String encode = URLEncoder.encode(str4, "UTF-8");
            Intrinsics.checkNotNullExpressionValue(encode, "encode(...)");
            b10.put("model", StringsKt.P(encode, "+", "%20", false, 4, null));
        }
        for (Map.Entry entry : b10.entrySet()) {
            sb2.append((String) entry.getKey());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append((String) entry.getValue());
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        }
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null) {
            try {
                String encode2 = URLEncoder.encode(a02.getFormatNickname(context), "UTF-8");
                Intrinsics.checkNotNullExpressionValue(encode2, "encode(...)");
                str2 = StringsKt.P(encode2, "+", "%20", false, 4, null);
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e(TAG, "encode nickname exception -> " + e10.getMessage());
            }
            sb2.append("userCode=");
            sb2.append(a02.getUserCode());
            sb2.append("&nickname=");
            sb2.append(str2);
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        }
        CoinSku k10 = PurchaseRepo.f43366a.k();
        if (k10 != null) {
            sb2.append("retentionTimestamp=");
            sb2.append(DeviceUtil.f48146a.K() + (k10.getRetentionSeconds() * 1000));
            sb2.append("&skuId=");
            sb2.append(k10.getGpSkuId());
            sb2.append("&skuProductId=");
            sb2.append(k10.getSkuProductId());
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        if (StringsKt.F(sb3, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            return StringsKt.B1(sb3, 1);
        }
        return sb3;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    @NotNull
    public final Spanned getTitle() {
        String str = this.ratio;
        if (str == null) {
            str = "";
        }
        return v.u(str, HIGH_LIGHT_COLOR);
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }
}
