package com.startshorts.androidplayer.bean.discover;

import android.os.Bundle;
import com.huawei.hms.framework.common.ContainerUtils;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.SkipType;
import com.startshorts.androidplayer.manager.api.base.o;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: DiscoverResource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverResource.kt\ncom/startshorts/androidplayer/bean/discover/DiscoverResource\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,163:1\n216#2,2:164\n*S KotlinDebug\n*F\n+ 1 DiscoverResource.kt\ncom/startshorts/androidplayer/bean/discover/DiscoverResource\n*L\n109#1:164,2\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverResource {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "DiscoverResource";
    @Nullable
    private String contentUrl;
    @Nullable
    private String contentValueName;
    @Nullable
    private String coverId;
    @Nullable
    private DiscoverAct marketingCampaignResponse;
    @Nullable
    private String moduleId;
    @Nullable
    private BaseShorts shortPlayResponse;
    private int contentType = -1;
    private int recommendId = -1;

    /* compiled from: DiscoverResource.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static /* synthetic */ ActResource toActResource$default(DiscoverResource discoverResource, int i10, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        return discoverResource.toActResource(i10, str, str2);
    }

    @NotNull
    public final String formatBrowserUrl(int i10) {
        String aBTestIds;
        String str = this.contentUrl;
        String str2 = "";
        if (str == null || str.length() == 0) {
            return "";
        }
        if (this.contentType == SkipType.H5_BROWSER_THIRD.getType()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str);
        if (StringsKt.b0(str, "?", false, 2, null)) {
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        } else {
            sb2.append("?");
        }
        sb2.append("platform=android&");
        sb2.append("openType=browser&");
        sb2.append("statusBarHeight=" + DeviceUtil.f48146a.J() + '&');
        CMSConfigResult f02 = b.f68412a.f0();
        if (f02 != null && (aBTestIds = f02.getABTestIds()) != null && aBTestIds.length() > 0) {
            sb2.append("cmsAbTestId=" + aBTestIds + '&');
        }
        String str3 = this.moduleId;
        if (str3 != null && str3.length() != 0) {
            sb2.append("moduleId=" + this.moduleId + '&');
        }
        if (i10 != -1) {
            sb2.append("positionId=" + i10 + '&');
        }
        if (this.recommendId > 0) {
            sb2.append("audienceRecommendId=" + this.recommendId + '&');
        }
        Bundle u10 = EventManager.u(EventManager.f42463a, null, 1, null);
        if (u10 != null) {
            for (String str4 : u10.keySet()) {
                sb2.append(str4 + '=' + u10.getString(str4) + '&');
            }
        }
        HashMap b10 = o.a.b(o.f41799c, null, 1, null);
        b10.remove("clientPlatform");
        b10.remove("Authorization");
        b10.remove("TraceId");
        b10.remove("hasProxy");
        String str5 = (String) b10.get("model");
        if (str5 != null && str5.length() != 0) {
            String encode = URLEncoder.encode(str5, "UTF-8");
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
                String encode2 = URLEncoder.encode(a02.getFormatNickname(u.f51776a.b()), "UTF-8");
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
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        if (StringsKt.F(sb3, ContainerUtils.FIELD_DELIMITER, false, 2, null)) {
            return StringsKt.B1(sb3, 1);
        }
        return sb3;
    }

    public final int getContentType() {
        return this.contentType;
    }

    @Nullable
    public final String getContentUrl() {
        return this.contentUrl;
    }

    @Nullable
    public final String getContentValueName() {
        return this.contentValueName;
    }

    @Nullable
    public final String getCoverId() {
        return this.coverId;
    }

    @Nullable
    public final DiscoverAct getMarketingCampaignResponse() {
        return this.marketingCampaignResponse;
    }

    @Nullable
    public final String getModuleId() {
        return this.moduleId;
    }

    public final int getRecommendId() {
        return this.recommendId;
    }

    @Nullable
    public final BaseShorts getShortPlayResponse() {
        return this.shortPlayResponse;
    }

    public final boolean isActBanner() {
        if (this.contentType == SkipType.MARKETING_CAMPAIGN.getType()) {
            return true;
        }
        return false;
    }

    public final boolean isBrandAdBanner() {
        if (this.contentType == SkipType.BRAND_AD.getType()) {
            return true;
        }
        return false;
    }

    public final boolean isH5BrowserBanner() {
        if (this.contentType != SkipType.H5_BROWSER_THIRD.getType() && this.contentType != SkipType.H5_BROWSER_OFFICIAL.getType()) {
            return false;
        }
        return true;
    }

    public final boolean isH5WebViewBanner() {
        if (this.contentType == SkipType.H5.getType()) {
            return true;
        }
        return false;
    }

    public final boolean isProgrammaticAdBanner() {
        if (this.contentType == SkipType.PROGRAMMATIC_AD.getType()) {
            return true;
        }
        return false;
    }

    public final boolean isShortsBanner() {
        if (this.contentType == SkipType.SHORTS.getType()) {
            return true;
        }
        return false;
    }

    public final void setContentType(int i10) {
        this.contentType = i10;
    }

    public final void setContentUrl(@Nullable String str) {
        this.contentUrl = str;
    }

    public final void setContentValueName(@Nullable String str) {
        this.contentValueName = str;
    }

    public final void setCoverId(@Nullable String str) {
        this.coverId = str;
    }

    public final void setMarketingCampaignResponse(@Nullable DiscoverAct discoverAct) {
        this.marketingCampaignResponse = discoverAct;
    }

    public final void setModuleId(@Nullable String str) {
        this.moduleId = str;
    }

    public final void setRecommendId(int i10) {
        this.recommendId = i10;
    }

    public final void setShortPlayResponse(@Nullable BaseShorts baseShorts) {
        this.shortPlayResponse = baseShorts;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0075  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.startshorts.androidplayer.bean.act.ActResource toActResource(int r28, @org.jetbrains.annotations.Nullable java.lang.String r29, @org.jetbrains.annotations.Nullable java.lang.String r30) {
        /*
            r27 = this;
            r0 = r27
            int r1 = r0.contentType
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.H5
            int r2 = r2.getType()
            java.lang.String r3 = ""
            r4 = 0
            if (r1 == r2) goto L58
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.H5_BROWSER_OFFICIAL
            int r2 = r2.getType()
            if (r1 == r2) goto L58
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.H5_BROWSER_THIRD
            int r2 = r2.getType()
            if (r1 == r2) goto L58
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.BRAND_AD
            int r2 = r2.getType()
            if (r1 != r2) goto L28
            goto L58
        L28:
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.MARKETING_CAMPAIGN
            int r2 = r2.getType()
            if (r1 == r2) goto L4f
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.COMBINATION_ACT
            int r2 = r2.getType()
            if (r1 != r2) goto L39
            goto L4f
        L39:
            com.startshorts.androidplayer.manager.act.SkipType r2 = com.startshorts.androidplayer.manager.act.SkipType.SHORTS
            int r2 = r2.getType()
            if (r1 != r2) goto L4d
            com.startshorts.androidplayer.bean.shorts.BaseShorts r1 = r0.shortPlayResponse
            if (r1 == 0) goto L4b
            java.lang.String r1 = r1.getShortPlayCode()
        L49:
            r8 = r1
            goto L5b
        L4b:
            r8 = r4
            goto L5b
        L4d:
            r8 = r3
            goto L5b
        L4f:
            com.startshorts.androidplayer.bean.discover.DiscoverAct r1 = r0.marketingCampaignResponse
            if (r1 == 0) goto L4b
            java.lang.String r1 = r1.getLinkUrl()
            goto L49
        L58:
            java.lang.String r1 = r0.contentUrl
            goto L49
        L5b:
            int r7 = r0.contentType
            java.lang.String r14 = r0.coverId
            com.startshorts.androidplayer.bean.act.ActResourceExtraInfo r1 = new com.startshorts.androidplayer.bean.act.ActResourceExtraInfo
            r1.<init>()
            com.startshorts.androidplayer.bean.discover.DiscoverAct r2 = r0.marketingCampaignResponse
            if (r2 == 0) goto L6d
            java.lang.String r2 = r2.getId()
            goto L6e
        L6d:
            r2 = r4
        L6e:
            r1.setCampaignId(r2)
            com.startshorts.androidplayer.bean.discover.DiscoverAct r2 = r0.marketingCampaignResponse
            if (r2 == 0) goto L79
            java.lang.String r4 = r2.getCampaignName()
        L79:
            r1.setCampaignName(r4)
            kotlin.Unit r2 = kotlin.Unit.f60915a
            int r2 = r0.recommendId
            com.startshorts.androidplayer.bean.shorts.BaseShorts r4 = r0.shortPlayResponse
            if (r4 == 0) goto L8e
            java.lang.String r4 = r4.getUpack()
            if (r4 != 0) goto L8b
            goto L8e
        L8b:
            r23 = r4
            goto L90
        L8e:
            r23 = r3
        L90:
            com.startshorts.androidplayer.bean.act.ActResource r3 = new com.startshorts.androidplayer.bean.act.ActResource
            r5 = r3
            r6 = -1
            r9 = 1
            r10 = -1
            r12 = -1
            r15 = 0
            r16 = 0
            r22 = 0
            r24 = 0
            r25 = 81920(0x14000, float:1.14794E-40)
            r26 = 0
            r17 = r1
            r18 = r2
            r19 = r28
            r20 = r29
            r21 = r30
            r5.<init>(r6, r7, r8, r9, r10, r12, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.bean.discover.DiscoverResource.toActResource(int, java.lang.String, java.lang.String):com.startshorts.androidplayer.bean.act.ActResource");
    }

    @NotNull
    public String toString() {
        return "DiscoverResource(contentType=" + this.contentType + ", coverId=" + this.coverId + ", contentUrl=" + this.contentUrl + ", contentValueName=" + this.contentValueName + ", shortPlayResponse=" + this.shortPlayResponse + ", marketingCampaignResponse=" + this.marketingCampaignResponse + ", recommendId=" + this.recommendId + ')';
    }
}
