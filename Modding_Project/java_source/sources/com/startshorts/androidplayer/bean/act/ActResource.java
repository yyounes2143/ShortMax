package com.startshorts.androidplayer.bean.act;

import android.os.Bundle;
import com.huawei.hms.framework.common.ContainerUtils;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
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
/* compiled from: ActResource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActResource.kt\ncom/startshorts/androidplayer/bean/act/ActResource\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,164:1\n216#2,2:165\n*S KotlinDebug\n*F\n+ 1 ActResource.kt\ncom/startshorts/androidplayer/bean/act/ActResource\n*L\n106#1:165,2\n*E\n"})
/* loaded from: classes6.dex */
public final class ActResource {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "ActResource";
    private final long endDatetimeLong;
    @Nullable
    private final ActResourceExtraInfo extendInfo;

    /* renamed from: id  reason: collision with root package name */
    private final int f38110id;
    private final int isLongTerm;
    @Nullable
    private String moduleId;
    @Nullable
    private String moduleName;
    private int position;
    private int priority;
    private final int rawSkipType;
    private int recommendId;
    @Nullable
    private final String resourceMap;
    @Nullable
    private final String resourceMapShrink;
    @NotNull
    private String resourceType;
    private final int showType;
    @Nullable
    private final String skipValue;
    private final long startDatetimeLong;
    @NotNull
    private String upack;

    /* compiled from: ActResource.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ActResource create$default(Companion companion, int i10, int i11, ActResourceExtraInfo actResourceExtraInfo, int i12, Object obj) {
            if ((i12 & 4) != 0) {
                actResourceExtraInfo = null;
            }
            return companion.create(i10, i11, actResourceExtraInfo);
        }

        @NotNull
        public final ActResource create(int i10, int i11, @Nullable ActResourceExtraInfo actResourceExtraInfo) {
            return new ActResource(i10, 0, null, -1, -1L, -1L, null, null, -1, actResourceExtraInfo, i11, 0, null, null, 0, null, null, 129026, null);
        }

        private Companion() {
        }
    }

    public ActResource(int i10, int i11, @Nullable String str, int i12, long j10, long j11, @Nullable String str2, @Nullable String str3, int i13, @Nullable ActResourceExtraInfo actResourceExtraInfo, int i14, int i15, @Nullable String str4, @Nullable String str5, int i16, @NotNull String upack, @NotNull String resourceType) {
        Intrinsics.checkNotNullParameter(upack, "upack");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        this.f38110id = i10;
        this.rawSkipType = i11;
        this.skipValue = str;
        this.isLongTerm = i12;
        this.startDatetimeLong = j10;
        this.endDatetimeLong = j11;
        this.resourceMap = str2;
        this.resourceMapShrink = str3;
        this.showType = i13;
        this.extendInfo = actResourceExtraInfo;
        this.recommendId = i14;
        this.position = i15;
        this.moduleId = str4;
        this.moduleName = str5;
        this.priority = i16;
        this.upack = upack;
        this.resourceType = resourceType;
    }

    public final int component1() {
        return this.f38110id;
    }

    @Nullable
    public final ActResourceExtraInfo component10() {
        return this.extendInfo;
    }

    public final int component11() {
        return this.recommendId;
    }

    public final int component12() {
        return this.position;
    }

    @Nullable
    public final String component13() {
        return this.moduleId;
    }

    @Nullable
    public final String component14() {
        return this.moduleName;
    }

    public final int component15() {
        return this.priority;
    }

    @NotNull
    public final String component16() {
        return this.upack;
    }

    @NotNull
    public final String component17() {
        return this.resourceType;
    }

    public final int component2() {
        return this.rawSkipType;
    }

    @Nullable
    public final String component3() {
        return this.skipValue;
    }

    public final int component4() {
        return this.isLongTerm;
    }

    public final long component5() {
        return this.startDatetimeLong;
    }

    public final long component6() {
        return this.endDatetimeLong;
    }

    @Nullable
    public final String component7() {
        return this.resourceMap;
    }

    @Nullable
    public final String component8() {
        return this.resourceMapShrink;
    }

    public final int component9() {
        return this.showType;
    }

    @NotNull
    public final ActResource copy(int i10, int i11, @Nullable String str, int i12, long j10, long j11, @Nullable String str2, @Nullable String str3, int i13, @Nullable ActResourceExtraInfo actResourceExtraInfo, int i14, int i15, @Nullable String str4, @Nullable String str5, int i16, @NotNull String upack, @NotNull String resourceType) {
        Intrinsics.checkNotNullParameter(upack, "upack");
        Intrinsics.checkNotNullParameter(resourceType, "resourceType");
        return new ActResource(i10, i11, str, i12, j10, j11, str2, str3, i13, actResourceExtraInfo, i14, i15, str4, str5, i16, upack, resourceType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActResource)) {
            return false;
        }
        ActResource actResource = (ActResource) obj;
        if (this.f38110id == actResource.f38110id && this.rawSkipType == actResource.rawSkipType && Intrinsics.areEqual(this.skipValue, actResource.skipValue) && this.isLongTerm == actResource.isLongTerm && this.startDatetimeLong == actResource.startDatetimeLong && this.endDatetimeLong == actResource.endDatetimeLong && Intrinsics.areEqual(this.resourceMap, actResource.resourceMap) && Intrinsics.areEqual(this.resourceMapShrink, actResource.resourceMapShrink) && this.showType == actResource.showType && Intrinsics.areEqual(this.extendInfo, actResource.extendInfo) && this.recommendId == actResource.recommendId && this.position == actResource.position && Intrinsics.areEqual(this.moduleId, actResource.moduleId) && Intrinsics.areEqual(this.moduleName, actResource.moduleName) && this.priority == actResource.priority && Intrinsics.areEqual(this.upack, actResource.upack) && Intrinsics.areEqual(this.resourceType, actResource.resourceType)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String formatBrowserUrl() {
        String aBTestIds;
        String str = this.skipValue;
        String str2 = "";
        if (str == null || str.length() == 0) {
            return "";
        }
        if (this.rawSkipType == SkipType.H5_BROWSER_OFFICIAL.getType()) {
            StringBuilder sb2 = new StringBuilder(this.skipValue);
            if (StringsKt.b0(this.skipValue, "?", false, 2, null)) {
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
            if (this.f38110id != -1) {
                sb2.append("resourceBitId=" + this.f38110id + '&');
            }
            String str3 = this.moduleId;
            if (str3 != null && str3.length() != 0) {
                sb2.append("moduleId=" + this.moduleId + '&');
            }
            if (this.position != -1) {
                sb2.append("positionId=" + this.position + '&');
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
        return this.skipValue;
    }

    public final long getEndDatetimeLong() {
        return this.endDatetimeLong;
    }

    @Nullable
    public final ActResourceExtraInfo getExtendInfo() {
        return this.extendInfo;
    }

    public final int getId() {
        return this.f38110id;
    }

    @Nullable
    public final String getModuleId() {
        return this.moduleId;
    }

    @Nullable
    public final String getModuleName() {
        return this.moduleName;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final int getRawSkipType() {
        return this.rawSkipType;
    }

    public final int getRecommendId() {
        return this.recommendId;
    }

    @Nullable
    public final String getResourceMap() {
        return this.resourceMap;
    }

    @Nullable
    public final String getResourceMapShrink() {
        return this.resourceMapShrink;
    }

    @NotNull
    public final String getResourceType() {
        return this.resourceType;
    }

    public final int getShowType() {
        return this.showType;
    }

    @NotNull
    public final String getSkipTypeForEvent() {
        int i10 = this.rawSkipType;
        if (i10 == SkipType.SHORTS.getType()) {
            return "reel";
        }
        if (i10 == SkipType.H5.getType()) {
            return "h5_inapp_open";
        }
        if (i10 == SkipType.H5_BROWSER_OFFICIAL.getType()) {
            return "h5_external_official_open";
        }
        if (i10 == SkipType.H5_BROWSER_THIRD.getType()) {
            return "h5_external_non_official_open";
        }
        if (i10 == SkipType.MARKETING_CAMPAIGN.getType()) {
            return "activity";
        }
        if (i10 == SkipType.COMBINATION_ACT.getType()) {
            return "combined_activity";
        }
        if (i10 == SkipType.PROGRAMMATIC_AD.getType()) {
            return "ad_programmatic";
        }
        if (i10 == SkipType.BRAND_AD.getType()) {
            return "ad_brand";
        }
        return "";
    }

    @Nullable
    public final String getSkipValue() {
        return this.skipValue;
    }

    public final long getStartDatetimeLong() {
        return this.startDatetimeLong;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = ((Integer.hashCode(this.f38110id) * 31) + Integer.hashCode(this.rawSkipType)) * 31;
        String str = this.skipValue;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode7 = (((((((hashCode6 + hashCode) * 31) + Integer.hashCode(this.isLongTerm)) * 31) + Long.hashCode(this.startDatetimeLong)) * 31) + Long.hashCode(this.endDatetimeLong)) * 31;
        String str2 = this.resourceMap;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i11 = (hashCode7 + hashCode2) * 31;
        String str3 = this.resourceMapShrink;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int hashCode8 = (((i11 + hashCode3) * 31) + Integer.hashCode(this.showType)) * 31;
        ActResourceExtraInfo actResourceExtraInfo = this.extendInfo;
        if (actResourceExtraInfo == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = actResourceExtraInfo.hashCode();
        }
        int hashCode9 = (((((hashCode8 + hashCode4) * 31) + Integer.hashCode(this.recommendId)) * 31) + Integer.hashCode(this.position)) * 31;
        String str4 = this.moduleId;
        if (str4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str4.hashCode();
        }
        int i12 = (hashCode9 + hashCode5) * 31;
        String str5 = this.moduleName;
        if (str5 != null) {
            i10 = str5.hashCode();
        }
        return ((((((i12 + i10) * 31) + Integer.hashCode(this.priority)) * 31) + this.upack.hashCode()) * 31) + this.resourceType.hashCode();
    }

    public final boolean isBrandAd() {
        if (this.rawSkipType == SkipType.BRAND_AD.getType()) {
            return true;
        }
        return false;
    }

    public final boolean isBrandAdPicture() {
        ActResourceExtraInfo actResourceExtraInfo = this.extendInfo;
        if (actResourceExtraInfo == null || actResourceExtraInfo.getAdsType() != 1) {
            return false;
        }
        return true;
    }

    public final boolean isBrandAdVideo() {
        ActResourceExtraInfo actResourceExtraInfo = this.extendInfo;
        if (actResourceExtraInfo == null || actResourceExtraInfo.getAdsType() != 2) {
            return false;
        }
        return true;
    }

    public final int isLongTerm() {
        return this.isLongTerm;
    }

    public final boolean isProgrammaticAd() {
        if (this.rawSkipType == SkipType.PROGRAMMATIC_AD.getType()) {
            return true;
        }
        return false;
    }

    public final boolean isShorts() {
        if (this.rawSkipType == SkipType.SHORTS.getType()) {
            return true;
        }
        return false;
    }

    public final void setModuleId(@Nullable String str) {
        this.moduleId = str;
    }

    public final void setModuleName(@Nullable String str) {
        this.moduleName = str;
    }

    public final void setPosition(int i10) {
        this.position = i10;
    }

    public final void setPriority(int i10) {
        this.priority = i10;
    }

    public final void setRecommendId(int i10) {
        this.recommendId = i10;
    }

    public final void setResourceType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceType = str;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    @NotNull
    public String toString() {
        return "ActResource(id=" + this.f38110id + ", rawSkipType=" + this.rawSkipType + ", skipValue=" + this.skipValue + ", isLongTerm=" + this.isLongTerm + ", startDatetimeLong=" + this.startDatetimeLong + ", endDatetimeLong=" + this.endDatetimeLong + ", resourceMap=" + this.resourceMap + ", resourceMapShrink=" + this.resourceMapShrink + ", showType=" + this.showType + ", extendInfo=" + this.extendInfo + ", recommendId=" + this.recommendId + ", position=" + this.position + ", moduleId=" + this.moduleId + ", moduleName=" + this.moduleName + ", priority=" + this.priority + ", upack=" + this.upack + ", resourceType=" + this.resourceType + ')';
    }

    public /* synthetic */ ActResource(int i10, int i11, String str, int i12, long j10, long j11, String str2, String str3, int i13, ActResourceExtraInfo actResourceExtraInfo, int i14, int i15, String str4, String str5, int i16, String str6, String str7, int i17, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i17 & 2) != 0 ? -1 : i11, str, i12, j10, j11, str2, str3, i13, (i17 & 512) != 0 ? null : actResourceExtraInfo, (i17 & 1024) != 0 ? -1 : i14, (i17 & 2048) != 0 ? -1 : i15, (i17 & 4096) != 0 ? null : str4, (i17 & 8192) != 0 ? null : str5, (i17 & 16384) != 0 ? 0 : i16, (32768 & i17) != 0 ? "" : str6, (i17 & 65536) != 0 ? "" : str7);
    }
}
