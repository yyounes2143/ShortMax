package com.vungle.ads.internal.model;

import androidx.annotation.VisibleForTesting;
import com.vungle.ads.AdConfig;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.Regex;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.d0;
import kotlinx.serialization.json.g;
import kotlinx.serialization.json.h;
import kotlinx.serialization.json.z;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ps.a;
import st.b;
import st.k;
import vt.a1;
import vt.f;
import vt.i;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: AdPayload.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class AdPayload {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String FILE_SCHEME = "file://";
    @NotNull
    public static final String INCENTIVIZED_BODY_TEXT = "INCENTIVIZED_BODY_TEXT";
    @NotNull
    public static final String INCENTIVIZED_CLOSE_TEXT = "INCENTIVIZED_CLOSE_TEXT";
    @NotNull
    public static final String INCENTIVIZED_CONTINUE_TEXT = "INCENTIVIZED_CONTINUE_TEXT";
    @NotNull
    public static final String INCENTIVIZED_TITLE_TEXT = "INCENTIVIZED_TITLE_TEXT";
    @NotNull
    public static final String KEY_TEMPLATE = "template";
    @NotNull
    public static final String KEY_VM = "vmURL";
    @NotNull
    public static final String TPAT_CLICK_COORDINATES_URLS = "video.clickCoordinates";
    @NotNull
    private static final String UNKNOWN = "unknown";
    @Nullable
    private AdConfig adConfig;
    @Nullable
    private final List<PlacementAdUnit> ads;
    @Nullable
    private File assetDirectory;
    private boolean assetsFullyDownloaded;
    @Nullable
    private final ConfigPayload config;
    @NotNull
    private Map<String, String> incentivizedTextSettings;
    @Nullable
    private LogEntry logEntry;
    @NotNull
    private ConcurrentHashMap<String, String> mraidFiles;

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AdSizeInfo {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Integer height;
        @Nullable
        private final Integer width;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AdSizeInfo> serializer() {
                return AdPayload$AdSizeInfo$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AdSizeInfo() {
            this((Integer) null, (Integer) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ AdSizeInfo copy$default(AdSizeInfo adSizeInfo, Integer num, Integer num2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                num = adSizeInfo.width;
            }
            if ((i10 & 2) != 0) {
                num2 = adSizeInfo.height;
            }
            return adSizeInfo.copy(num, num2);
        }

        public static final void write$Self(@NotNull AdSizeInfo self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Integer num;
            Integer num2;
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || (num2 = self.width) == null || num2.intValue() != 0) {
                output.encodeNullableSerializableElement(serialDesc, 0, v0.f69529a, self.width);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || (num = self.height) == null || num.intValue() != 0) {
                output.encodeNullableSerializableElement(serialDesc, 1, v0.f69529a, self.height);
            }
        }

        @Nullable
        public final Integer component1() {
            return this.width;
        }

        @Nullable
        public final Integer component2() {
            return this.height;
        }

        @NotNull
        public final AdSizeInfo copy(@Nullable Integer num, @Nullable Integer num2) {
            return new AdSizeInfo(num, num2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdSizeInfo)) {
                return false;
            }
            AdSizeInfo adSizeInfo = (AdSizeInfo) obj;
            if (Intrinsics.areEqual(this.width, adSizeInfo.width) && Intrinsics.areEqual(this.height, adSizeInfo.height)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer getHeight() {
            return this.height;
        }

        @Nullable
        public final Integer getWidth() {
            return this.width;
        }

        public int hashCode() {
            int hashCode;
            Integer num = this.width;
            int i10 = 0;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            int i11 = hashCode * 31;
            Integer num2 = this.height;
            if (num2 != null) {
                i10 = num2.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "AdSizeInfo(width=" + this.width + ", height=" + this.height + ')';
        }

        @c
        public /* synthetic */ AdSizeInfo(int i10, Integer num, Integer num2, r2 r2Var) {
            this.width = (i10 & 1) == 0 ? 0 : num;
            if ((i10 & 2) == 0) {
                this.height = 0;
            } else {
                this.height = num2;
            }
        }

        public AdSizeInfo(@Nullable Integer num, @Nullable Integer num2) {
            this.width = num;
            this.height = num2;
        }

        public /* synthetic */ AdSizeInfo(Integer num, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? 0 : num, (i10 & 2) != 0 ? 0 : num2);
        }

        public static /* synthetic */ void getHeight$annotations() {
        }

        public static /* synthetic */ void getWidth$annotations() {
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AdUnit {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Boolean adLoadOptimizationEnabled;
        @Nullable
        private final String adMarketId;
        @Nullable
        private final AdSizeInfo adSizeInfo;
        @Nullable
        private final String adSource;
        @Nullable
        private final String adType;
        @Nullable
        private final String advAppId;
        @Nullable
        private final Boolean clickCoordinatesEnabled;
        @Nullable
        private final String creativeId;
        @Nullable
        private final String deeplinkUrl;
        @Nullable
        private final Integer errorCode;
        @Nullable
        private final Integer expiry;
        @Nullable

        /* renamed from: id */
        private final String f49612id;
        @Nullable
        private final String info;
        @Nullable
        private final Boolean isCacheableAssetsRequired;
        @Nullable
        private final List<String> loadAdUrls;
        @Nullable
        private final String mediationName;
        @Nullable
        private final List<String> notification;
        @Nullable
        private final Integer showClose;
        @Nullable
        private final Integer showCloseIncentivized;
        @Nullable
        private final Integer sleep;
        @Nullable
        private final Boolean templateHeartbeatCheck;
        @Nullable
        private final TemplateSettings templateSettings;
        @Nullable
        private final String templateType;
        @Nullable
        private final String templateURL;
        @Nullable
        private final Map<String, List<String>> tpat;
        @Nullable
        private final ViewAbility viewAbility;
        @Nullable
        private final String vmURL;
        @Nullable
        private final String vmVersion;
        @Nullable
        private final WebViewSettings webViewSettings;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AdUnit> serializer() {
                return AdPayload$AdUnit$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AdUnit() {
            this((String) null, (String) null, (String) null, (Integer) null, (String) null, (Boolean) null, (Boolean) null, (Boolean) null, (String) null, (String) null, (Integer) null, (Integer) null, (Map) null, (String) null, (String) null, (String) null, (List) null, (List) null, (ViewAbility) null, (String) null, (String) null, (TemplateSettings) null, (String) null, (String) null, (Integer) null, (Integer) null, (AdSizeInfo) null, (Boolean) null, (WebViewSettings) null, 536870911, (DefaultConstructorMarker) null);
        }

        public static final void write$Self(@NotNull AdUnit self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Integer num;
            Integer num2;
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.f49612id != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.f49612id);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.adType != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.adType);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.adSource != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.adSource);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 3) || self.expiry != null) {
                output.encodeNullableSerializableElement(serialDesc, 3, v0.f69529a, self.expiry);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 4) || self.deeplinkUrl != null) {
                output.encodeNullableSerializableElement(serialDesc, 4, w2.f69539a, self.deeplinkUrl);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 5) || self.clickCoordinatesEnabled != null) {
                output.encodeNullableSerializableElement(serialDesc, 5, i.f69441a, self.clickCoordinatesEnabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 6) || self.adLoadOptimizationEnabled != null) {
                output.encodeNullableSerializableElement(serialDesc, 6, i.f69441a, self.adLoadOptimizationEnabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 7) || self.templateHeartbeatCheck != null) {
                output.encodeNullableSerializableElement(serialDesc, 7, i.f69441a, self.templateHeartbeatCheck);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 8) || self.mediationName != null) {
                output.encodeNullableSerializableElement(serialDesc, 8, w2.f69539a, self.mediationName);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 9) || self.info != null) {
                output.encodeNullableSerializableElement(serialDesc, 9, w2.f69539a, self.info);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 10) || self.sleep != null) {
                output.encodeNullableSerializableElement(serialDesc, 10, v0.f69529a, self.sleep);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 11) || self.errorCode != null) {
                output.encodeNullableSerializableElement(serialDesc, 11, v0.f69529a, self.errorCode);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 12) || self.tpat != null) {
                output.encodeNullableSerializableElement(serialDesc, 12, TpatSerializer.INSTANCE, self.tpat);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 13) || self.vmURL != null) {
                output.encodeNullableSerializableElement(serialDesc, 13, w2.f69539a, self.vmURL);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 14) || self.vmVersion != null) {
                output.encodeNullableSerializableElement(serialDesc, 14, w2.f69539a, self.vmVersion);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 15) || self.adMarketId != null) {
                output.encodeNullableSerializableElement(serialDesc, 15, w2.f69539a, self.adMarketId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 16) || self.notification != null) {
                output.encodeNullableSerializableElement(serialDesc, 16, new f(w2.f69539a), self.notification);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 17) || self.loadAdUrls != null) {
                output.encodeNullableSerializableElement(serialDesc, 17, new f(w2.f69539a), self.loadAdUrls);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 18) || self.viewAbility != null) {
                output.encodeNullableSerializableElement(serialDesc, 18, AdPayload$ViewAbility$$serializer.INSTANCE, self.viewAbility);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 19) || self.templateURL != null) {
                output.encodeNullableSerializableElement(serialDesc, 19, w2.f69539a, self.templateURL);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 20) || self.templateType != null) {
                output.encodeNullableSerializableElement(serialDesc, 20, w2.f69539a, self.templateType);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 21) || self.templateSettings != null) {
                output.encodeNullableSerializableElement(serialDesc, 21, AdPayload$TemplateSettings$$serializer.INSTANCE, self.templateSettings);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 22) || self.creativeId != null) {
                output.encodeNullableSerializableElement(serialDesc, 22, w2.f69539a, self.creativeId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 23) || self.advAppId != null) {
                output.encodeNullableSerializableElement(serialDesc, 23, w2.f69539a, self.advAppId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 24) || (num2 = self.showClose) == null || num2.intValue() != 0) {
                output.encodeNullableSerializableElement(serialDesc, 24, v0.f69529a, self.showClose);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 25) || (num = self.showCloseIncentivized) == null || num.intValue() != 0) {
                output.encodeNullableSerializableElement(serialDesc, 25, v0.f69529a, self.showCloseIncentivized);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 26) || self.adSizeInfo != null) {
                output.encodeNullableSerializableElement(serialDesc, 26, AdPayload$AdSizeInfo$$serializer.INSTANCE, self.adSizeInfo);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 27) || self.isCacheableAssetsRequired != null) {
                output.encodeNullableSerializableElement(serialDesc, 27, i.f69441a, self.isCacheableAssetsRequired);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 28) || self.webViewSettings != null) {
                output.encodeNullableSerializableElement(serialDesc, 28, AdPayload$WebViewSettings$$serializer.INSTANCE, self.webViewSettings);
            }
        }

        @Nullable
        public final String component1() {
            return this.f49612id;
        }

        @Nullable
        public final String component10() {
            return this.info;
        }

        @Nullable
        public final Integer component11() {
            return this.sleep;
        }

        @Nullable
        public final Integer component12() {
            return this.errorCode;
        }

        @Nullable
        public final Map<String, List<String>> component13() {
            return this.tpat;
        }

        @Nullable
        public final String component14() {
            return this.vmURL;
        }

        @Nullable
        public final String component15() {
            return this.vmVersion;
        }

        @Nullable
        public final String component16() {
            return this.adMarketId;
        }

        @Nullable
        public final List<String> component17() {
            return this.notification;
        }

        @Nullable
        public final List<String> component18() {
            return this.loadAdUrls;
        }

        @Nullable
        public final ViewAbility component19() {
            return this.viewAbility;
        }

        @Nullable
        public final String component2() {
            return this.adType;
        }

        @Nullable
        public final String component20() {
            return this.templateURL;
        }

        @Nullable
        public final String component21() {
            return this.templateType;
        }

        @Nullable
        public final TemplateSettings component22() {
            return this.templateSettings;
        }

        @Nullable
        public final String component23() {
            return this.creativeId;
        }

        @Nullable
        public final String component24() {
            return this.advAppId;
        }

        @Nullable
        public final Integer component25() {
            return this.showClose;
        }

        @Nullable
        public final Integer component26() {
            return this.showCloseIncentivized;
        }

        @Nullable
        public final AdSizeInfo component27() {
            return this.adSizeInfo;
        }

        @Nullable
        public final Boolean component28() {
            return this.isCacheableAssetsRequired;
        }

        @Nullable
        public final WebViewSettings component29() {
            return this.webViewSettings;
        }

        @Nullable
        public final String component3() {
            return this.adSource;
        }

        @Nullable
        public final Integer component4() {
            return this.expiry;
        }

        @Nullable
        public final String component5() {
            return this.deeplinkUrl;
        }

        @Nullable
        public final Boolean component6() {
            return this.clickCoordinatesEnabled;
        }

        @Nullable
        public final Boolean component7() {
            return this.adLoadOptimizationEnabled;
        }

        @Nullable
        public final Boolean component8() {
            return this.templateHeartbeatCheck;
        }

        @Nullable
        public final String component9() {
            return this.mediationName;
        }

        @NotNull
        public final AdUnit copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable String str5, @Nullable String str6, @Nullable Integer num2, @Nullable Integer num3, @Nullable Map<String, ? extends List<String>> map, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable List<String> list, @Nullable List<String> list2, @Nullable ViewAbility viewAbility, @Nullable String str10, @Nullable String str11, @Nullable TemplateSettings templateSettings, @Nullable String str12, @Nullable String str13, @Nullable Integer num4, @Nullable Integer num5, @Nullable AdSizeInfo adSizeInfo, @Nullable Boolean bool4, @Nullable WebViewSettings webViewSettings) {
            return new AdUnit(str, str2, str3, num, str4, bool, bool2, bool3, str5, str6, num2, num3, map, str7, str8, str9, list, list2, viewAbility, str10, str11, templateSettings, str12, str13, num4, num5, adSizeInfo, bool4, webViewSettings);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdUnit)) {
                return false;
            }
            AdUnit adUnit = (AdUnit) obj;
            if (Intrinsics.areEqual(this.f49612id, adUnit.f49612id) && Intrinsics.areEqual(this.adType, adUnit.adType) && Intrinsics.areEqual(this.adSource, adUnit.adSource) && Intrinsics.areEqual(this.expiry, adUnit.expiry) && Intrinsics.areEqual(this.deeplinkUrl, adUnit.deeplinkUrl) && Intrinsics.areEqual(this.clickCoordinatesEnabled, adUnit.clickCoordinatesEnabled) && Intrinsics.areEqual(this.adLoadOptimizationEnabled, adUnit.adLoadOptimizationEnabled) && Intrinsics.areEqual(this.templateHeartbeatCheck, adUnit.templateHeartbeatCheck) && Intrinsics.areEqual(this.mediationName, adUnit.mediationName) && Intrinsics.areEqual(this.info, adUnit.info) && Intrinsics.areEqual(this.sleep, adUnit.sleep) && Intrinsics.areEqual(this.errorCode, adUnit.errorCode) && Intrinsics.areEqual(this.tpat, adUnit.tpat) && Intrinsics.areEqual(this.vmURL, adUnit.vmURL) && Intrinsics.areEqual(this.vmVersion, adUnit.vmVersion) && Intrinsics.areEqual(this.adMarketId, adUnit.adMarketId) && Intrinsics.areEqual(this.notification, adUnit.notification) && Intrinsics.areEqual(this.loadAdUrls, adUnit.loadAdUrls) && Intrinsics.areEqual(this.viewAbility, adUnit.viewAbility) && Intrinsics.areEqual(this.templateURL, adUnit.templateURL) && Intrinsics.areEqual(this.templateType, adUnit.templateType) && Intrinsics.areEqual(this.templateSettings, adUnit.templateSettings) && Intrinsics.areEqual(this.creativeId, adUnit.creativeId) && Intrinsics.areEqual(this.advAppId, adUnit.advAppId) && Intrinsics.areEqual(this.showClose, adUnit.showClose) && Intrinsics.areEqual(this.showCloseIncentivized, adUnit.showCloseIncentivized) && Intrinsics.areEqual(this.adSizeInfo, adUnit.adSizeInfo) && Intrinsics.areEqual(this.isCacheableAssetsRequired, adUnit.isCacheableAssetsRequired) && Intrinsics.areEqual(this.webViewSettings, adUnit.webViewSettings)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Boolean getAdLoadOptimizationEnabled() {
            return this.adLoadOptimizationEnabled;
        }

        @Nullable
        public final String getAdMarketId() {
            return this.adMarketId;
        }

        @Nullable
        public final AdSizeInfo getAdSizeInfo() {
            return this.adSizeInfo;
        }

        @Nullable
        public final String getAdSource() {
            return this.adSource;
        }

        @Nullable
        public final String getAdType() {
            return this.adType;
        }

        @Nullable
        public final String getAdvAppId() {
            return this.advAppId;
        }

        @Nullable
        public final Boolean getClickCoordinatesEnabled() {
            return this.clickCoordinatesEnabled;
        }

        @Nullable
        public final String getCreativeId() {
            return this.creativeId;
        }

        @Nullable
        public final String getDeeplinkUrl() {
            return this.deeplinkUrl;
        }

        @Nullable
        public final Integer getErrorCode() {
            return this.errorCode;
        }

        @Nullable
        public final Integer getExpiry() {
            return this.expiry;
        }

        @Nullable
        public final String getId() {
            return this.f49612id;
        }

        @Nullable
        public final String getInfo() {
            return this.info;
        }

        @Nullable
        public final List<String> getLoadAdUrls() {
            return this.loadAdUrls;
        }

        @Nullable
        public final String getMediationName() {
            return this.mediationName;
        }

        @Nullable
        public final List<String> getNotification() {
            return this.notification;
        }

        @Nullable
        public final Integer getShowClose() {
            return this.showClose;
        }

        @Nullable
        public final Integer getShowCloseIncentivized() {
            return this.showCloseIncentivized;
        }

        @Nullable
        public final Integer getSleep() {
            return this.sleep;
        }

        @Nullable
        public final Boolean getTemplateHeartbeatCheck() {
            return this.templateHeartbeatCheck;
        }

        @Nullable
        public final TemplateSettings getTemplateSettings() {
            return this.templateSettings;
        }

        @Nullable
        public final String getTemplateType() {
            return this.templateType;
        }

        @Nullable
        public final String getTemplateURL() {
            return this.templateURL;
        }

        @Nullable
        public final Map<String, List<String>> getTpat() {
            return this.tpat;
        }

        @Nullable
        public final ViewAbility getViewAbility() {
            return this.viewAbility;
        }

        @Nullable
        public final String getVmURL() {
            return this.vmURL;
        }

        @Nullable
        public final String getVmVersion() {
            return this.vmVersion;
        }

        @Nullable
        public final WebViewSettings getWebViewSettings() {
            return this.webViewSettings;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7;
            int hashCode8;
            int hashCode9;
            int hashCode10;
            int hashCode11;
            int hashCode12;
            int hashCode13;
            int hashCode14;
            int hashCode15;
            int hashCode16;
            int hashCode17;
            int hashCode18;
            int hashCode19;
            int hashCode20;
            int hashCode21;
            int hashCode22;
            int hashCode23;
            int hashCode24;
            int hashCode25;
            int hashCode26;
            int hashCode27;
            int hashCode28;
            String str = this.f49612id;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            String str2 = this.adType;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            String str3 = this.adSource;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            Integer num = this.expiry;
            if (num == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = num.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            String str4 = this.deeplinkUrl;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i15 = (i14 + hashCode5) * 31;
            Boolean bool = this.clickCoordinatesEnabled;
            if (bool == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = bool.hashCode();
            }
            int i16 = (i15 + hashCode6) * 31;
            Boolean bool2 = this.adLoadOptimizationEnabled;
            if (bool2 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = bool2.hashCode();
            }
            int i17 = (i16 + hashCode7) * 31;
            Boolean bool3 = this.templateHeartbeatCheck;
            if (bool3 == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = bool3.hashCode();
            }
            int i18 = (i17 + hashCode8) * 31;
            String str5 = this.mediationName;
            if (str5 == null) {
                hashCode9 = 0;
            } else {
                hashCode9 = str5.hashCode();
            }
            int i19 = (i18 + hashCode9) * 31;
            String str6 = this.info;
            if (str6 == null) {
                hashCode10 = 0;
            } else {
                hashCode10 = str6.hashCode();
            }
            int i20 = (i19 + hashCode10) * 31;
            Integer num2 = this.sleep;
            if (num2 == null) {
                hashCode11 = 0;
            } else {
                hashCode11 = num2.hashCode();
            }
            int i21 = (i20 + hashCode11) * 31;
            Integer num3 = this.errorCode;
            if (num3 == null) {
                hashCode12 = 0;
            } else {
                hashCode12 = num3.hashCode();
            }
            int i22 = (i21 + hashCode12) * 31;
            Map<String, List<String>> map = this.tpat;
            if (map == null) {
                hashCode13 = 0;
            } else {
                hashCode13 = map.hashCode();
            }
            int i23 = (i22 + hashCode13) * 31;
            String str7 = this.vmURL;
            if (str7 == null) {
                hashCode14 = 0;
            } else {
                hashCode14 = str7.hashCode();
            }
            int i24 = (i23 + hashCode14) * 31;
            String str8 = this.vmVersion;
            if (str8 == null) {
                hashCode15 = 0;
            } else {
                hashCode15 = str8.hashCode();
            }
            int i25 = (i24 + hashCode15) * 31;
            String str9 = this.adMarketId;
            if (str9 == null) {
                hashCode16 = 0;
            } else {
                hashCode16 = str9.hashCode();
            }
            int i26 = (i25 + hashCode16) * 31;
            List<String> list = this.notification;
            if (list == null) {
                hashCode17 = 0;
            } else {
                hashCode17 = list.hashCode();
            }
            int i27 = (i26 + hashCode17) * 31;
            List<String> list2 = this.loadAdUrls;
            if (list2 == null) {
                hashCode18 = 0;
            } else {
                hashCode18 = list2.hashCode();
            }
            int i28 = (i27 + hashCode18) * 31;
            ViewAbility viewAbility = this.viewAbility;
            if (viewAbility == null) {
                hashCode19 = 0;
            } else {
                hashCode19 = viewAbility.hashCode();
            }
            int i29 = (i28 + hashCode19) * 31;
            String str10 = this.templateURL;
            if (str10 == null) {
                hashCode20 = 0;
            } else {
                hashCode20 = str10.hashCode();
            }
            int i30 = (i29 + hashCode20) * 31;
            String str11 = this.templateType;
            if (str11 == null) {
                hashCode21 = 0;
            } else {
                hashCode21 = str11.hashCode();
            }
            int i31 = (i30 + hashCode21) * 31;
            TemplateSettings templateSettings = this.templateSettings;
            if (templateSettings == null) {
                hashCode22 = 0;
            } else {
                hashCode22 = templateSettings.hashCode();
            }
            int i32 = (i31 + hashCode22) * 31;
            String str12 = this.creativeId;
            if (str12 == null) {
                hashCode23 = 0;
            } else {
                hashCode23 = str12.hashCode();
            }
            int i33 = (i32 + hashCode23) * 31;
            String str13 = this.advAppId;
            if (str13 == null) {
                hashCode24 = 0;
            } else {
                hashCode24 = str13.hashCode();
            }
            int i34 = (i33 + hashCode24) * 31;
            Integer num4 = this.showClose;
            if (num4 == null) {
                hashCode25 = 0;
            } else {
                hashCode25 = num4.hashCode();
            }
            int i35 = (i34 + hashCode25) * 31;
            Integer num5 = this.showCloseIncentivized;
            if (num5 == null) {
                hashCode26 = 0;
            } else {
                hashCode26 = num5.hashCode();
            }
            int i36 = (i35 + hashCode26) * 31;
            AdSizeInfo adSizeInfo = this.adSizeInfo;
            if (adSizeInfo == null) {
                hashCode27 = 0;
            } else {
                hashCode27 = adSizeInfo.hashCode();
            }
            int i37 = (i36 + hashCode27) * 31;
            Boolean bool4 = this.isCacheableAssetsRequired;
            if (bool4 == null) {
                hashCode28 = 0;
            } else {
                hashCode28 = bool4.hashCode();
            }
            int i38 = (i37 + hashCode28) * 31;
            WebViewSettings webViewSettings = this.webViewSettings;
            if (webViewSettings != null) {
                i10 = webViewSettings.hashCode();
            }
            return i38 + i10;
        }

        @Nullable
        public final Boolean isCacheableAssetsRequired() {
            return this.isCacheableAssetsRequired;
        }

        @NotNull
        public String toString() {
            return "AdUnit(id=" + this.f49612id + ", adType=" + this.adType + ", adSource=" + this.adSource + ", expiry=" + this.expiry + ", deeplinkUrl=" + this.deeplinkUrl + ", clickCoordinatesEnabled=" + this.clickCoordinatesEnabled + ", adLoadOptimizationEnabled=" + this.adLoadOptimizationEnabled + ", templateHeartbeatCheck=" + this.templateHeartbeatCheck + ", mediationName=" + this.mediationName + ", info=" + this.info + ", sleep=" + this.sleep + ", errorCode=" + this.errorCode + ", tpat=" + this.tpat + ", vmURL=" + this.vmURL + ", vmVersion=" + this.vmVersion + ", adMarketId=" + this.adMarketId + ", notification=" + this.notification + ", loadAdUrls=" + this.loadAdUrls + ", viewAbility=" + this.viewAbility + ", templateURL=" + this.templateURL + ", templateType=" + this.templateType + ", templateSettings=" + this.templateSettings + ", creativeId=" + this.creativeId + ", advAppId=" + this.advAppId + ", showClose=" + this.showClose + ", showCloseIncentivized=" + this.showCloseIncentivized + ", adSizeInfo=" + this.adSizeInfo + ", isCacheableAssetsRequired=" + this.isCacheableAssetsRequired + ", webViewSettings=" + this.webViewSettings + ')';
        }

        @c
        public /* synthetic */ AdUnit(int i10, String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, @k(with = TpatSerializer.class) Map map, String str7, String str8, String str9, List list, List list2, ViewAbility viewAbility, String str10, String str11, TemplateSettings templateSettings, String str12, String str13, Integer num4, Integer num5, AdSizeInfo adSizeInfo, Boolean bool4, WebViewSettings webViewSettings, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.f49612id = null;
            } else {
                this.f49612id = str;
            }
            if ((i10 & 2) == 0) {
                this.adType = null;
            } else {
                this.adType = str2;
            }
            if ((i10 & 4) == 0) {
                this.adSource = null;
            } else {
                this.adSource = str3;
            }
            if ((i10 & 8) == 0) {
                this.expiry = null;
            } else {
                this.expiry = num;
            }
            if ((i10 & 16) == 0) {
                this.deeplinkUrl = null;
            } else {
                this.deeplinkUrl = str4;
            }
            if ((i10 & 32) == 0) {
                this.clickCoordinatesEnabled = null;
            } else {
                this.clickCoordinatesEnabled = bool;
            }
            if ((i10 & 64) == 0) {
                this.adLoadOptimizationEnabled = null;
            } else {
                this.adLoadOptimizationEnabled = bool2;
            }
            if ((i10 & 128) == 0) {
                this.templateHeartbeatCheck = null;
            } else {
                this.templateHeartbeatCheck = bool3;
            }
            if ((i10 & 256) == 0) {
                this.mediationName = null;
            } else {
                this.mediationName = str5;
            }
            if ((i10 & 512) == 0) {
                this.info = null;
            } else {
                this.info = str6;
            }
            if ((i10 & 1024) == 0) {
                this.sleep = null;
            } else {
                this.sleep = num2;
            }
            if ((i10 & 2048) == 0) {
                this.errorCode = null;
            } else {
                this.errorCode = num3;
            }
            if ((i10 & 4096) == 0) {
                this.tpat = null;
            } else {
                this.tpat = map;
            }
            if ((i10 & 8192) == 0) {
                this.vmURL = null;
            } else {
                this.vmURL = str7;
            }
            if ((i10 & 16384) == 0) {
                this.vmVersion = null;
            } else {
                this.vmVersion = str8;
            }
            if ((32768 & i10) == 0) {
                this.adMarketId = null;
            } else {
                this.adMarketId = str9;
            }
            if ((65536 & i10) == 0) {
                this.notification = null;
            } else {
                this.notification = list;
            }
            if ((131072 & i10) == 0) {
                this.loadAdUrls = null;
            } else {
                this.loadAdUrls = list2;
            }
            if ((262144 & i10) == 0) {
                this.viewAbility = null;
            } else {
                this.viewAbility = viewAbility;
            }
            if ((524288 & i10) == 0) {
                this.templateURL = null;
            } else {
                this.templateURL = str10;
            }
            if ((1048576 & i10) == 0) {
                this.templateType = null;
            } else {
                this.templateType = str11;
            }
            if ((2097152 & i10) == 0) {
                this.templateSettings = null;
            } else {
                this.templateSettings = templateSettings;
            }
            if ((4194304 & i10) == 0) {
                this.creativeId = null;
            } else {
                this.creativeId = str12;
            }
            if ((8388608 & i10) == 0) {
                this.advAppId = null;
            } else {
                this.advAppId = str13;
            }
            this.showClose = (16777216 & i10) == 0 ? 0 : num4;
            this.showCloseIncentivized = (33554432 & i10) == 0 ? 0 : num5;
            if ((67108864 & i10) == 0) {
                this.adSizeInfo = null;
            } else {
                this.adSizeInfo = adSizeInfo;
            }
            if ((134217728 & i10) == 0) {
                this.isCacheableAssetsRequired = null;
            } else {
                this.isCacheableAssetsRequired = bool4;
            }
            if ((i10 & 268435456) == 0) {
                this.webViewSettings = null;
            } else {
                this.webViewSettings = webViewSettings;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AdUnit(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable String str5, @Nullable String str6, @Nullable Integer num2, @Nullable Integer num3, @Nullable Map<String, ? extends List<String>> map, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable List<String> list, @Nullable List<String> list2, @Nullable ViewAbility viewAbility, @Nullable String str10, @Nullable String str11, @Nullable TemplateSettings templateSettings, @Nullable String str12, @Nullable String str13, @Nullable Integer num4, @Nullable Integer num5, @Nullable AdSizeInfo adSizeInfo, @Nullable Boolean bool4, @Nullable WebViewSettings webViewSettings) {
            this.f49612id = str;
            this.adType = str2;
            this.adSource = str3;
            this.expiry = num;
            this.deeplinkUrl = str4;
            this.clickCoordinatesEnabled = bool;
            this.adLoadOptimizationEnabled = bool2;
            this.templateHeartbeatCheck = bool3;
            this.mediationName = str5;
            this.info = str6;
            this.sleep = num2;
            this.errorCode = num3;
            this.tpat = map;
            this.vmURL = str7;
            this.vmVersion = str8;
            this.adMarketId = str9;
            this.notification = list;
            this.loadAdUrls = list2;
            this.viewAbility = viewAbility;
            this.templateURL = str10;
            this.templateType = str11;
            this.templateSettings = templateSettings;
            this.creativeId = str12;
            this.advAppId = str13;
            this.showClose = num4;
            this.showCloseIncentivized = num5;
            this.adSizeInfo = adSizeInfo;
            this.isCacheableAssetsRequired = bool4;
            this.webViewSettings = webViewSettings;
        }

        public static /* synthetic */ void getAdLoadOptimizationEnabled$annotations() {
        }

        public static /* synthetic */ void getAdMarketId$annotations() {
        }

        public static /* synthetic */ void getAdSizeInfo$annotations() {
        }

        public static /* synthetic */ void getAdSource$annotations() {
        }

        public static /* synthetic */ void getAdType$annotations() {
        }

        public static /* synthetic */ void getAdvAppId$annotations() {
        }

        public static /* synthetic */ void getClickCoordinatesEnabled$annotations() {
        }

        public static /* synthetic */ void getCreativeId$annotations() {
        }

        public static /* synthetic */ void getDeeplinkUrl$annotations() {
        }

        public static /* synthetic */ void getErrorCode$annotations() {
        }

        public static /* synthetic */ void getExpiry$annotations() {
        }

        public static /* synthetic */ void getId$annotations() {
        }

        public static /* synthetic */ void getInfo$annotations() {
        }

        public static /* synthetic */ void getLoadAdUrls$annotations() {
        }

        public static /* synthetic */ void getMediationName$annotations() {
        }

        public static /* synthetic */ void getNotification$annotations() {
        }

        public static /* synthetic */ void getShowClose$annotations() {
        }

        public static /* synthetic */ void getShowCloseIncentivized$annotations() {
        }

        public static /* synthetic */ void getSleep$annotations() {
        }

        public static /* synthetic */ void getTemplateHeartbeatCheck$annotations() {
        }

        public static /* synthetic */ void getTemplateSettings$annotations() {
        }

        public static /* synthetic */ void getTemplateType$annotations() {
        }

        public static /* synthetic */ void getTemplateURL$annotations() {
        }

        @k(with = TpatSerializer.class)
        public static /* synthetic */ void getTpat$annotations() {
        }

        public static /* synthetic */ void getViewAbility$annotations() {
        }

        public static /* synthetic */ void getVmURL$annotations() {
        }

        public static /* synthetic */ void getVmVersion$annotations() {
        }

        public static /* synthetic */ void getWebViewSettings$annotations() {
        }

        public static /* synthetic */ void isCacheableAssetsRequired$annotations() {
        }

        public /* synthetic */ AdUnit(String str, String str2, String str3, Integer num, String str4, Boolean bool, Boolean bool2, Boolean bool3, String str5, String str6, Integer num2, Integer num3, Map map, String str7, String str8, String str9, List list, List list2, ViewAbility viewAbility, String str10, String str11, TemplateSettings templateSettings, String str12, String str13, Integer num4, Integer num5, AdSizeInfo adSizeInfo, Boolean bool4, WebViewSettings webViewSettings, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : bool, (i10 & 64) != 0 ? null : bool2, (i10 & 128) != 0 ? null : bool3, (i10 & 256) != 0 ? null : str5, (i10 & 512) != 0 ? null : str6, (i10 & 1024) != 0 ? null : num2, (i10 & 2048) != 0 ? null : num3, (i10 & 4096) != 0 ? null : map, (i10 & 8192) != 0 ? null : str7, (i10 & 16384) != 0 ? null : str8, (i10 & 32768) != 0 ? null : str9, (i10 & 65536) != 0 ? null : list, (i10 & 131072) != 0 ? null : list2, (i10 & 262144) != 0 ? null : viewAbility, (i10 & 524288) != 0 ? null : str10, (i10 & 1048576) != 0 ? null : str11, (i10 & 2097152) != 0 ? null : templateSettings, (i10 & 4194304) != 0 ? null : str12, (i10 & 8388608) != 0 ? null : str13, (i10 & 16777216) != 0 ? 0 : num4, (i10 & 33554432) != 0 ? 0 : num5, (i10 & 67108864) != 0 ? null : adSizeInfo, (i10 & 134217728) != 0 ? null : bool4, (i10 & 268435456) != 0 ? null : webViewSettings);
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class CacheableReplacement {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String extension;
        @Nullable
        private final Boolean required;
        @Nullable
        private final String url;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<CacheableReplacement> serializer() {
                return AdPayload$CacheableReplacement$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public CacheableReplacement() {
            this((String) null, (String) null, (Boolean) null, 7, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ CacheableReplacement copy$default(CacheableReplacement cacheableReplacement, String str, String str2, Boolean bool, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = cacheableReplacement.url;
            }
            if ((i10 & 2) != 0) {
                str2 = cacheableReplacement.extension;
            }
            if ((i10 & 4) != 0) {
                bool = cacheableReplacement.required;
            }
            return cacheableReplacement.copy(str, str2, bool);
        }

        public static final void write$Self(@NotNull CacheableReplacement self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.url != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.url);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.extension != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.extension);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.required != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, i.f69441a, self.required);
            }
        }

        @Nullable
        public final String component1() {
            return this.url;
        }

        @Nullable
        public final String component2() {
            return this.extension;
        }

        @Nullable
        public final Boolean component3() {
            return this.required;
        }

        @NotNull
        public final CacheableReplacement copy(@Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
            return new CacheableReplacement(str, str2, bool);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CacheableReplacement)) {
                return false;
            }
            CacheableReplacement cacheableReplacement = (CacheableReplacement) obj;
            if (Intrinsics.areEqual(this.url, cacheableReplacement.url) && Intrinsics.areEqual(this.extension, cacheableReplacement.extension) && Intrinsics.areEqual(this.required, cacheableReplacement.required)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getExtension() {
            return this.extension;
        }

        @Nullable
        public final Boolean getRequired() {
            return this.required;
        }

        @Nullable
        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            String str = this.url;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            String str2 = this.extension;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            Boolean bool = this.required;
            if (bool != null) {
                i10 = bool.hashCode();
            }
            return i12 + i10;
        }

        @NotNull
        public String toString() {
            return "CacheableReplacement(url=" + this.url + ", extension=" + this.extension + ", required=" + this.required + ')';
        }

        @c
        public /* synthetic */ CacheableReplacement(int i10, String str, String str2, Boolean bool, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.url = null;
            } else {
                this.url = str;
            }
            if ((i10 & 2) == 0) {
                this.extension = null;
            } else {
                this.extension = str2;
            }
            if ((i10 & 4) == 0) {
                this.required = null;
            } else {
                this.required = bool;
            }
        }

        public CacheableReplacement(@Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
            this.url = str;
            this.extension = str2;
            this.required = bool;
        }

        public /* synthetic */ CacheableReplacement(String str, String str2, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : bool);
        }
    }

    /* compiled from: AdPayload.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<AdPayload> serializer() {
            return AdPayload$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class PlacementAdUnit {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final AdUnit adMarkup;
        @Nullable
        private final String placementReferenceId;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<PlacementAdUnit> serializer() {
                return AdPayload$PlacementAdUnit$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public PlacementAdUnit() {
            this((String) null, (AdUnit) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ PlacementAdUnit copy$default(PlacementAdUnit placementAdUnit, String str, AdUnit adUnit, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = placementAdUnit.placementReferenceId;
            }
            if ((i10 & 2) != 0) {
                adUnit = placementAdUnit.adMarkup;
            }
            return placementAdUnit.copy(str, adUnit);
        }

        public static final void write$Self(@NotNull PlacementAdUnit self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.placementReferenceId != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.placementReferenceId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.adMarkup != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, AdPayload$AdUnit$$serializer.INSTANCE, self.adMarkup);
            }
        }

        @Nullable
        public final String component1() {
            return this.placementReferenceId;
        }

        @Nullable
        public final AdUnit component2() {
            return this.adMarkup;
        }

        @NotNull
        public final PlacementAdUnit copy(@Nullable String str, @Nullable AdUnit adUnit) {
            return new PlacementAdUnit(str, adUnit);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PlacementAdUnit)) {
                return false;
            }
            PlacementAdUnit placementAdUnit = (PlacementAdUnit) obj;
            if (Intrinsics.areEqual(this.placementReferenceId, placementAdUnit.placementReferenceId) && Intrinsics.areEqual(this.adMarkup, placementAdUnit.adMarkup)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final AdUnit getAdMarkup() {
            return this.adMarkup;
        }

        @Nullable
        public final String getPlacementReferenceId() {
            return this.placementReferenceId;
        }

        public int hashCode() {
            int hashCode;
            String str = this.placementReferenceId;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            AdUnit adUnit = this.adMarkup;
            if (adUnit != null) {
                i10 = adUnit.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "PlacementAdUnit(placementReferenceId=" + this.placementReferenceId + ", adMarkup=" + this.adMarkup + ')';
        }

        @c
        public /* synthetic */ PlacementAdUnit(int i10, String str, AdUnit adUnit, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.placementReferenceId = null;
            } else {
                this.placementReferenceId = str;
            }
            if ((i10 & 2) == 0) {
                this.adMarkup = null;
            } else {
                this.adMarkup = adUnit;
            }
        }

        public PlacementAdUnit(@Nullable String str, @Nullable AdUnit adUnit) {
            this.placementReferenceId = str;
            this.adMarkup = adUnit;
        }

        public /* synthetic */ PlacementAdUnit(String str, AdUnit adUnit, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : adUnit);
        }

        public static /* synthetic */ void getAdMarkup$annotations() {
        }

        public static /* synthetic */ void getPlacementReferenceId$annotations() {
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class TemplateSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Map<String, CacheableReplacement> cacheableReplacements;
        @Nullable
        private final Map<String, String> normalReplacements;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<TemplateSettings> serializer() {
                return AdPayload$TemplateSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public TemplateSettings() {
            this((Map) null, (Map) null, 3, (DefaultConstructorMarker) null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ TemplateSettings copy$default(TemplateSettings templateSettings, Map map, Map map2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                map = templateSettings.normalReplacements;
            }
            if ((i10 & 2) != 0) {
                map2 = templateSettings.cacheableReplacements;
            }
            return templateSettings.copy(map, map2);
        }

        public static final void write$Self(@NotNull TemplateSettings self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.normalReplacements != null) {
                w2 w2Var = w2.f69539a;
                output.encodeNullableSerializableElement(serialDesc, 0, new a1(w2Var, w2Var), self.normalReplacements);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.cacheableReplacements != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, new a1(w2.f69539a, AdPayload$CacheableReplacement$$serializer.INSTANCE), self.cacheableReplacements);
            }
        }

        @Nullable
        public final Map<String, String> component1() {
            return this.normalReplacements;
        }

        @Nullable
        public final Map<String, CacheableReplacement> component2() {
            return this.cacheableReplacements;
        }

        @NotNull
        public final TemplateSettings copy(@Nullable Map<String, String> map, @Nullable Map<String, CacheableReplacement> map2) {
            return new TemplateSettings(map, map2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TemplateSettings)) {
                return false;
            }
            TemplateSettings templateSettings = (TemplateSettings) obj;
            if (Intrinsics.areEqual(this.normalReplacements, templateSettings.normalReplacements) && Intrinsics.areEqual(this.cacheableReplacements, templateSettings.cacheableReplacements)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Map<String, CacheableReplacement> getCacheableReplacements() {
            return this.cacheableReplacements;
        }

        @Nullable
        public final Map<String, String> getNormalReplacements() {
            return this.normalReplacements;
        }

        public int hashCode() {
            int hashCode;
            Map<String, String> map = this.normalReplacements;
            int i10 = 0;
            if (map == null) {
                hashCode = 0;
            } else {
                hashCode = map.hashCode();
            }
            int i11 = hashCode * 31;
            Map<String, CacheableReplacement> map2 = this.cacheableReplacements;
            if (map2 != null) {
                i10 = map2.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "TemplateSettings(normalReplacements=" + this.normalReplacements + ", cacheableReplacements=" + this.cacheableReplacements + ')';
        }

        @c
        public /* synthetic */ TemplateSettings(int i10, Map map, Map map2, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.normalReplacements = null;
            } else {
                this.normalReplacements = map;
            }
            if ((i10 & 2) == 0) {
                this.cacheableReplacements = null;
            } else {
                this.cacheableReplacements = map2;
            }
        }

        public TemplateSettings(@Nullable Map<String, String> map, @Nullable Map<String, CacheableReplacement> map2) {
            this.normalReplacements = map;
            this.cacheableReplacements = map2;
        }

        public /* synthetic */ TemplateSettings(Map map, Map map2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : map, (i10 & 2) != 0 ? null : map2);
        }

        public static /* synthetic */ void getCacheableReplacements$annotations() {
        }

        public static /* synthetic */ void getNormalReplacements$annotations() {
        }
    }

    /* compiled from: AdPayload.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class TpatSerializer extends d0<Map<String, ? extends List<? extends String>>> {
        @NotNull
        public static final TpatSerializer INSTANCE = new TpatSerializer();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private TpatSerializer() {
            /*
                r2 = this;
                kotlin.jvm.internal.StringCompanionObject r0 = kotlin.jvm.internal.StringCompanionObject.INSTANCE
                kotlinx.serialization.KSerializer r1 = tt.a.D(r0)
                kotlinx.serialization.KSerializer r0 = tt.a.D(r0)
                kotlinx.serialization.KSerializer r0 = tt.a.h(r0)
                kotlinx.serialization.KSerializer r0 = tt.a.k(r1, r0)
                r2.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.model.AdPayload.TpatSerializer.<init>():void");
        }

        @Override // kotlinx.serialization.json.d0
        @NotNull
        protected JsonElement transformDeserialize(@NotNull JsonElement element) {
            Intrinsics.checkNotNullParameter(element, "element");
            JsonObject j10 = h.j(element);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, JsonElement> entry : j10.entrySet()) {
                if (!Intrinsics.areEqual(entry.getKey(), "moat")) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return new JsonObject(linkedHashMap);
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ViewAbility {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable

        /* renamed from: om */
        private final ViewAbilityInfo f49613om;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<ViewAbility> serializer() {
                return AdPayload$ViewAbility$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public ViewAbility() {
            this((ViewAbilityInfo) null, 1, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ ViewAbility copy$default(ViewAbility viewAbility, ViewAbilityInfo viewAbilityInfo, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                viewAbilityInfo = viewAbility.f49613om;
            }
            return viewAbility.copy(viewAbilityInfo);
        }

        public static final void write$Self(@NotNull ViewAbility self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.f49613om != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, AdPayload$ViewAbilityInfo$$serializer.INSTANCE, self.f49613om);
            }
        }

        @Nullable
        public final ViewAbilityInfo component1() {
            return this.f49613om;
        }

        @NotNull
        public final ViewAbility copy(@Nullable ViewAbilityInfo viewAbilityInfo) {
            return new ViewAbility(viewAbilityInfo);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ViewAbility) && Intrinsics.areEqual(this.f49613om, ((ViewAbility) obj).f49613om)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final ViewAbilityInfo getOm() {
            return this.f49613om;
        }

        public int hashCode() {
            ViewAbilityInfo viewAbilityInfo = this.f49613om;
            if (viewAbilityInfo == null) {
                return 0;
            }
            return viewAbilityInfo.hashCode();
        }

        @NotNull
        public String toString() {
            return "ViewAbility(om=" + this.f49613om + ')';
        }

        @c
        public /* synthetic */ ViewAbility(int i10, ViewAbilityInfo viewAbilityInfo, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.f49613om = null;
            } else {
                this.f49613om = viewAbilityInfo;
            }
        }

        public ViewAbility(@Nullable ViewAbilityInfo viewAbilityInfo) {
            this.f49613om = viewAbilityInfo;
        }

        public /* synthetic */ ViewAbility(ViewAbilityInfo viewAbilityInfo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : viewAbilityInfo);
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ViewAbilityInfo {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String extraVast;
        @Nullable
        private final Boolean isEnabled;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<ViewAbilityInfo> serializer() {
                return AdPayload$ViewAbilityInfo$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public ViewAbilityInfo() {
            this((Boolean) null, (String) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ ViewAbilityInfo copy$default(ViewAbilityInfo viewAbilityInfo, Boolean bool, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bool = viewAbilityInfo.isEnabled;
            }
            if ((i10 & 2) != 0) {
                str = viewAbilityInfo.extraVast;
            }
            return viewAbilityInfo.copy(bool, str);
        }

        public static final void write$Self(@NotNull ViewAbilityInfo self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.isEnabled != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, i.f69441a, self.isEnabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.extraVast != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.extraVast);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.isEnabled;
        }

        @Nullable
        public final String component2() {
            return this.extraVast;
        }

        @NotNull
        public final ViewAbilityInfo copy(@Nullable Boolean bool, @Nullable String str) {
            return new ViewAbilityInfo(bool, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ViewAbilityInfo)) {
                return false;
            }
            ViewAbilityInfo viewAbilityInfo = (ViewAbilityInfo) obj;
            if (Intrinsics.areEqual(this.isEnabled, viewAbilityInfo.isEnabled) && Intrinsics.areEqual(this.extraVast, viewAbilityInfo.extraVast)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getExtraVast() {
            return this.extraVast;
        }

        public int hashCode() {
            int hashCode;
            Boolean bool = this.isEnabled;
            int i10 = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.extraVast;
            if (str != null) {
                i10 = str.hashCode();
            }
            return i11 + i10;
        }

        @Nullable
        public final Boolean isEnabled() {
            return this.isEnabled;
        }

        @NotNull
        public String toString() {
            return "ViewAbilityInfo(isEnabled=" + this.isEnabled + ", extraVast=" + this.extraVast + ')';
        }

        @c
        public /* synthetic */ ViewAbilityInfo(int i10, Boolean bool, String str, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.isEnabled = null;
            } else {
                this.isEnabled = bool;
            }
            if ((i10 & 2) == 0) {
                this.extraVast = null;
            } else {
                this.extraVast = str;
            }
        }

        public ViewAbilityInfo(@Nullable Boolean bool, @Nullable String str) {
            this.isEnabled = bool;
            this.extraVast = str;
        }

        public /* synthetic */ ViewAbilityInfo(Boolean bool, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : str);
        }

        public static /* synthetic */ void getExtraVast$annotations() {
        }

        public static /* synthetic */ void isEnabled$annotations() {
        }
    }

    /* compiled from: AdPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class WebViewSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Boolean allowFileAccessFromFileUrls;
        @Nullable
        private final Boolean allowUniversalAccessFromFileUrls;

        /* compiled from: AdPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<WebViewSettings> serializer() {
                return AdPayload$WebViewSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public WebViewSettings() {
            this((Boolean) null, (Boolean) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ WebViewSettings copy$default(WebViewSettings webViewSettings, Boolean bool, Boolean bool2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bool = webViewSettings.allowFileAccessFromFileUrls;
            }
            if ((i10 & 2) != 0) {
                bool2 = webViewSettings.allowUniversalAccessFromFileUrls;
            }
            return webViewSettings.copy(bool, bool2);
        }

        public static final void write$Self(@NotNull WebViewSettings self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.allowFileAccessFromFileUrls != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, i.f69441a, self.allowFileAccessFromFileUrls);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.allowUniversalAccessFromFileUrls != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, i.f69441a, self.allowUniversalAccessFromFileUrls);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.allowFileAccessFromFileUrls;
        }

        @Nullable
        public final Boolean component2() {
            return this.allowUniversalAccessFromFileUrls;
        }

        @NotNull
        public final WebViewSettings copy(@Nullable Boolean bool, @Nullable Boolean bool2) {
            return new WebViewSettings(bool, bool2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebViewSettings)) {
                return false;
            }
            WebViewSettings webViewSettings = (WebViewSettings) obj;
            if (Intrinsics.areEqual(this.allowFileAccessFromFileUrls, webViewSettings.allowFileAccessFromFileUrls) && Intrinsics.areEqual(this.allowUniversalAccessFromFileUrls, webViewSettings.allowUniversalAccessFromFileUrls)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Boolean getAllowFileAccessFromFileUrls() {
            return this.allowFileAccessFromFileUrls;
        }

        @Nullable
        public final Boolean getAllowUniversalAccessFromFileUrls() {
            return this.allowUniversalAccessFromFileUrls;
        }

        public int hashCode() {
            int hashCode;
            Boolean bool = this.allowFileAccessFromFileUrls;
            int i10 = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i11 = hashCode * 31;
            Boolean bool2 = this.allowUniversalAccessFromFileUrls;
            if (bool2 != null) {
                i10 = bool2.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "WebViewSettings(allowFileAccessFromFileUrls=" + this.allowFileAccessFromFileUrls + ", allowUniversalAccessFromFileUrls=" + this.allowUniversalAccessFromFileUrls + ')';
        }

        @c
        public /* synthetic */ WebViewSettings(int i10, Boolean bool, Boolean bool2, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.allowFileAccessFromFileUrls = null;
            } else {
                this.allowFileAccessFromFileUrls = bool;
            }
            if ((i10 & 2) == 0) {
                this.allowUniversalAccessFromFileUrls = null;
            } else {
                this.allowUniversalAccessFromFileUrls = bool2;
            }
        }

        public WebViewSettings(@Nullable Boolean bool, @Nullable Boolean bool2) {
            this.allowFileAccessFromFileUrls = bool;
            this.allowUniversalAccessFromFileUrls = bool2;
        }

        public /* synthetic */ WebViewSettings(Boolean bool, Boolean bool2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : bool2);
        }

        public static /* synthetic */ void getAllowFileAccessFromFileUrls$annotations() {
        }

        public static /* synthetic */ void getAllowUniversalAccessFromFileUrls$annotations() {
        }
    }

    public AdPayload() {
        this(null, null, 3, null);
    }

    private final String complexReplace(String str, String str2, String str3) {
        String quote = Pattern.quote(str2);
        Intrinsics.checkNotNullExpressionValue(quote, "quote(oldValue)");
        return new Regex(quote).replace(str, valueOrEmpty(str3));
    }

    private final PlacementAdUnit getAd() {
        List<PlacementAdUnit> list = this.ads;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private final AdUnit getAdMarkup() {
        PlacementAdUnit ad2 = getAd();
        if (ad2 != null) {
            return ad2.getAdMarkup();
        }
        return null;
    }

    public static /* synthetic */ List getTpatUrls$default(AdPayload adPayload, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        return adPayload.getTpatUrls(str, str2, str3);
    }

    private final String valueOrEmpty(String str) {
        if (str == null) {
            return "";
        }
        return str;
    }

    public static final void write$Self(@NotNull AdPayload self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.ads != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, new f(AdPayload$PlacementAdUnit$$serializer.INSTANCE), self.ads);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.config != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, ConfigPayload$$serializer.INSTANCE, self.config);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || !Intrinsics.areEqual(self.mraidFiles, new ConcurrentHashMap())) {
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConcurrentHashMap.class);
            w2 w2Var = w2.f69539a;
            output.encodeSerializableElement(serialDesc, 2, new b(orCreateKotlinClass, null, new KSerializer[]{w2Var, w2Var}), self.mraidFiles);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || !Intrinsics.areEqual(self.incentivizedTextSettings, new HashMap())) {
            w2 w2Var2 = w2.f69539a;
            output.encodeSerializableElement(serialDesc, 3, new a1(w2Var2, w2Var2), self.incentivizedTextSettings);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.assetsFullyDownloaded) {
            output.encodeBooleanElement(serialDesc, 4, self.assetsFullyDownloaded);
        }
    }

    public final int adHeight() {
        AdSizeInfo adSizeInfo;
        Integer height;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (adSizeInfo = adMarkup.getAdSizeInfo()) != null && (height = adSizeInfo.getHeight()) != null) {
            return height.intValue();
        }
        return 0;
    }

    public final boolean adLoadOptimizationEnabled() {
        Boolean adLoadOptimizationEnabled;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (adLoadOptimizationEnabled = adMarkup.getAdLoadOptimizationEnabled()) != null) {
            return adLoadOptimizationEnabled.booleanValue();
        }
        return true;
    }

    @Nullable
    public final AdUnit adUnit() {
        return getAdMarkup();
    }

    public final int adWidth() {
        AdSizeInfo adSizeInfo;
        Integer width;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (adSizeInfo = adMarkup.getAdSizeInfo()) != null && (width = adSizeInfo.getWidth()) != null) {
            return width.intValue();
        }
        return 0;
    }

    @Nullable
    public final String advAppId() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getAdvAppId();
        }
        return null;
    }

    @Nullable
    public final ConfigPayload config() {
        return this.config;
    }

    @NotNull
    public final JsonObject createMRAIDArgs() {
        Map<String, String> mRAIDArgsInMap = getMRAIDArgsInMap();
        z zVar = new z();
        for (Map.Entry<String, String> entry : mRAIDArgsInMap.entrySet()) {
            g.c(zVar, entry.getKey(), entry.getValue());
        }
        return zVar.a();
    }

    @Nullable
    public final String eventId() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getId();
        }
        return null;
    }

    @Nullable
    public final AdConfig getAdConfig() {
        return this.adConfig;
    }

    @Nullable
    public final String getAdSource() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getAdSource();
        }
        return null;
    }

    @Nullable
    public final File getAssetDirectory() {
        return this.assetDirectory;
    }

    public final boolean getAssetsFullyDownloaded() {
        return this.assetsFullyDownloaded;
    }

    @NotNull
    public final String getCreativeId() {
        String creativeId;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup == null || (creativeId = adMarkup.getCreativeId()) == null) {
            return "unknown";
        }
        return creativeId;
    }

    @NotNull
    public final List<AdAsset> getDownloadableAssets(@NotNull File dir) {
        TemplateSettings templateSettings;
        Map<String, CacheableReplacement> cacheableReplacements;
        boolean z10;
        boolean z11;
        String templateURL;
        String vmURL;
        Intrinsics.checkNotNullParameter(dir, "dir");
        this.assetDirectory = dir;
        ArrayList arrayList = new ArrayList();
        if (!isNativeTemplateType()) {
            AdUnit adMarkup = getAdMarkup();
            if (adMarkup != null && (vmURL = adMarkup.getVmURL()) != null) {
                if (FileUtility.INSTANCE.isValidUrl(vmURL)) {
                    String filePath = new File(dir, Constants.AD_INDEX_FILE_NAME).getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(filePath, "filePath");
                    arrayList.add(new AdAsset(KEY_VM, vmURL, filePath, AdAsset.FileType.ASSET, true));
                }
            } else {
                AdUnit adMarkup2 = getAdMarkup();
                if (adMarkup2 != null && (templateURL = adMarkup2.getTemplateURL()) != null && FileUtility.INSTANCE.isValidUrl(templateURL)) {
                    String filePath2 = new File(dir, "template").getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(filePath2, "filePath");
                    arrayList.add(new AdAsset("template", templateURL, filePath2, AdAsset.FileType.ZIP, true));
                }
            }
        }
        AdUnit adMarkup3 = getAdMarkup();
        if (adMarkup3 != null && (templateSettings = adMarkup3.getTemplateSettings()) != null && (cacheableReplacements = templateSettings.getCacheableReplacements()) != null) {
            for (Map.Entry<String, CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                CacheableReplacement value = entry.getValue();
                if (value.getUrl() != null) {
                    FileUtility fileUtility = FileUtility.INSTANCE;
                    if (fileUtility.isValidUrl(value.getUrl())) {
                        Boolean required = value.getRequired();
                        if (required != null) {
                            z10 = required.booleanValue();
                        } else {
                            z10 = false;
                        }
                        if (isNativeTemplateType() || !adLoadOptimizationEnabled()) {
                            z11 = true;
                        } else if (!isCacheableAssetsRequired()) {
                            z11 = false;
                        } else {
                            z11 = z10;
                        }
                        String filePath3 = new File(dir, fileUtility.guessFileName(value.getUrl(), value.getExtension())).getAbsolutePath();
                        String url = value.getUrl();
                        Intrinsics.checkNotNullExpressionValue(filePath3, "filePath");
                        arrayList.add(new AdAsset(entry.getKey(), url, filePath3, AdAsset.FileType.ASSET, z11));
                    }
                }
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt.D(arrayList, new Comparator() { // from class: com.vungle.ads.internal.model.AdPayload$getDownloadableAssets$$inlined$sortByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t10, T t11) {
                    return a.a(Boolean.valueOf(((AdAsset) t11).isRequired()), Boolean.valueOf(((AdAsset) t10).isRequired()));
                }
            });
        }
        return arrayList;
    }

    @NotNull
    public final Map<String, String> getIncentivizedTextSettings() {
        return this.incentivizedTextSettings;
    }

    @Nullable
    public final LogEntry getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    @NotNull
    public final Map<String, String> getMRAIDArgsInMap() {
        TemplateSettings templateSettings;
        TemplateSettings templateSettings2;
        Map<String, CacheableReplacement> cacheableReplacements;
        TemplateSettings templateSettings3;
        Map<String, String> normalReplacements;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            templateSettings = adMarkup.getTemplateSettings();
        } else {
            templateSettings = null;
        }
        if (templateSettings != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            AdUnit adMarkup2 = getAdMarkup();
            if (adMarkup2 != null && (templateSettings3 = adMarkup2.getTemplateSettings()) != null && (normalReplacements = templateSettings3.getNormalReplacements()) != null) {
                linkedHashMap.putAll(normalReplacements);
            }
            AdUnit adMarkup3 = getAdMarkup();
            if (adMarkup3 != null && (templateSettings2 = adMarkup3.getTemplateSettings()) != null && (cacheableReplacements = templateSettings2.getCacheableReplacements()) != null) {
                for (Map.Entry<String, CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                    String url = entry.getValue().getUrl();
                    if (url != null) {
                        linkedHashMap.put(entry.getKey(), url);
                    }
                }
            }
            if (!this.mraidFiles.isEmpty()) {
                linkedHashMap.putAll(this.mraidFiles);
            }
            if (!this.incentivizedTextSettings.isEmpty()) {
                linkedHashMap.putAll(this.incentivizedTextSettings);
            }
            return linkedHashMap;
        }
        throw new IllegalArgumentException("Advertisement does not have MRAID Arguments!");
    }

    @Nullable
    public final String getMediationName() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getMediationName();
        }
        return null;
    }

    public final int getShowCloseDelay(@Nullable Boolean bool) {
        Integer showClose;
        Integer showCloseIncentivized;
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            AdUnit adMarkup = getAdMarkup();
            if (adMarkup == null || (showCloseIncentivized = adMarkup.getShowCloseIncentivized()) == null) {
                return 0;
            }
            return showCloseIncentivized.intValue() * 1000;
        }
        AdUnit adMarkup2 = getAdMarkup();
        if (adMarkup2 == null || (showClose = adMarkup2.getShowClose()) == null) {
            return 0;
        }
        return showClose.intValue() * 1000;
    }

    @Nullable
    public final List<String> getTpatUrls(@NotNull String event, @Nullable String str, @Nullable String str2) {
        List<String> list;
        ArrayList arrayList;
        Map<String, List<String>> tpat;
        Map<String, List<String>> tpat2;
        Intrinsics.checkNotNullParameter(event, "event");
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (tpat2 = adMarkup.getTpat()) != null && !tpat2.containsKey(event)) {
            new TpatError(Sdk.SDKError.Reason.INVALID_TPAT_KEY, "Arbitrary tpat key: " + event).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        AdUnit adMarkup2 = getAdMarkup();
        if (adMarkup2 != null && (tpat = adMarkup2.getTpat()) != null) {
            list = tpat.get(event);
        } else {
            list = null;
        }
        List<String> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            switch (event.hashCode()) {
                case -2125915830:
                    if (event.equals(Constants.CHECKPOINT_0)) {
                        List<String> list3 = list;
                        arrayList = new ArrayList(CollectionsKt.z(list3, 10));
                        for (String str3 : list3) {
                            arrayList.add(complexReplace(complexReplace(complexReplace(str3, Constants.REMOTE_PLAY_KEY, String.valueOf(!this.assetsFullyDownloaded)), Constants.NETWORK_OPERATOR_KEY, str), Constants.DEVICE_VOLUME_KEY, str2));
                        }
                        break;
                    } else {
                        return list;
                    }
                case -747709511:
                    if (event.equals(Constants.VIDEO_LENGTH_TPAT)) {
                        List<String> list4 = list;
                        arrayList = new ArrayList(CollectionsKt.z(list4, 10));
                        for (String str4 : list4) {
                            arrayList.add(complexReplace(str4, Constants.VIDEO_LENGTH_KEY, str));
                        }
                        break;
                    } else {
                        return list;
                    }
                case -132489083:
                    if (event.equals(Constants.AD_LOAD_DURATION)) {
                        List<String> list5 = list;
                        arrayList = new ArrayList(CollectionsKt.z(list5, 10));
                        for (String str5 : list5) {
                            arrayList.add(complexReplace(str5, Constants.AD_LOAD_DURATION_KEY, str));
                        }
                        break;
                    } else {
                        return list;
                    }
                case 1516630125:
                    if (event.equals(Constants.AD_CLOSE)) {
                        List<String> list6 = list;
                        arrayList = new ArrayList(CollectionsKt.z(list6, 10));
                        for (String str6 : list6) {
                            arrayList.add(complexReplace(complexReplace(str6, Constants.AD_DURATION_KEY, str), Constants.DEVICE_VOLUME_KEY, str2));
                        }
                        break;
                    } else {
                        return list;
                    }
                case 1940309120:
                    if (event.equals(Constants.DEEPLINK_CLICK)) {
                        List<String> list7 = list;
                        arrayList = new ArrayList(CollectionsKt.z(list7, 10));
                        for (String str7 : list7) {
                            arrayList.add(complexReplace(str7, Constants.DEEPLINK_SUCCESS_KEY, str));
                        }
                        break;
                    } else {
                        return list;
                    }
                default:
                    return list;
            }
            return arrayList;
        }
        new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty tpat key: " + event).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
        return null;
    }

    @Nullable
    public final String getViewMasterVersion() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getVmVersion();
        }
        return null;
    }

    @Nullable
    public final WebViewSettings getWebViewSettings() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getWebViewSettings();
        }
        return null;
    }

    @Nullable
    public final List<String> getWinNotifications() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getNotification();
        }
        return null;
    }

    public final boolean hasExpired() {
        Integer expiry;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup == null || (expiry = adMarkup.getExpiry()) == null || expiry.intValue() >= System.currentTimeMillis() / 1000) {
            return false;
        }
        return true;
    }

    public final boolean heartbeatEnabled() {
        Boolean templateHeartbeatCheck;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (templateHeartbeatCheck = adMarkup.getTemplateHeartbeatCheck()) != null) {
            return templateHeartbeatCheck.booleanValue();
        }
        return false;
    }

    public final boolean isCacheableAssetsRequired() {
        Boolean isCacheableAssetsRequired;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (isCacheableAssetsRequired = adMarkup.isCacheableAssetsRequired()) != null) {
            return isCacheableAssetsRequired.booleanValue();
        }
        return true;
    }

    public final boolean isClickCoordinatesTrackingEnabled() {
        Boolean clickCoordinatesEnabled;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (clickCoordinatesEnabled = adMarkup.getClickCoordinatesEnabled()) != null) {
            return clickCoordinatesEnabled.booleanValue();
        }
        return false;
    }

    public final boolean isCriticalAsset(@NotNull String failingUrl) {
        TemplateSettings templateSettings;
        Map<String, CacheableReplacement> cacheableReplacements;
        String str;
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        if (!isNativeTemplateType()) {
            AdUnit adMarkup = getAdMarkup();
            if (adMarkup != null) {
                str = adMarkup.getTemplateURL();
            } else {
                str = null;
            }
            if (Intrinsics.areEqual(str, failingUrl)) {
                return true;
            }
        }
        AdUnit adMarkup2 = getAdMarkup();
        if (adMarkup2 != null && (templateSettings = adMarkup2.getTemplateSettings()) != null && (cacheableReplacements = templateSettings.getCacheableReplacements()) != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                if (Intrinsics.areEqual(entry.getValue().getUrl(), failingUrl)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return !linkedHashMap.isEmpty();
        }
        return false;
    }

    public final boolean isNativeTemplateType() {
        return Intrinsics.areEqual(templateType(), "native");
    }

    public final boolean omEnabled() {
        ViewAbility viewAbility;
        ViewAbilityInfo om2;
        Boolean isEnabled;
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null && (viewAbility = adMarkup.getViewAbility()) != null && (om2 = viewAbility.getOm()) != null && (isEnabled = om2.isEnabled()) != null) {
            return isEnabled.booleanValue();
        }
        return false;
    }

    @Nullable
    public final String placementId() {
        PlacementAdUnit ad2 = getAd();
        if (ad2 != null) {
            return ad2.getPlacementReferenceId();
        }
        return null;
    }

    public final void setAdConfig(@Nullable AdConfig adConfig) {
        this.adConfig = adConfig;
    }

    public final void setAssetFullyDownloaded() {
        this.assetsFullyDownloaded = true;
    }

    public final void setAssetsFullyDownloaded(boolean z10) {
        this.assetsFullyDownloaded = z10;
    }

    public final void setIncentivizedText(@NotNull String title, @NotNull String body, @NotNull String keepWatching, @NotNull String close) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(keepWatching, "keepWatching");
        Intrinsics.checkNotNullParameter(close, "close");
        if (title.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_TITLE_TEXT, title);
        }
        if (body.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_BODY_TEXT, body);
        }
        if (keepWatching.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_CONTINUE_TEXT, keepWatching);
        }
        if (close.length() > 0) {
            this.incentivizedTextSettings.put(INCENTIVIZED_CLOSE_TEXT, close);
        }
    }

    public final void setIncentivizedTextSettings(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.incentivizedTextSettings = map;
    }

    public final void setLogEntry$vungle_ads_release(@Nullable LogEntry logEntry) {
        this.logEntry = logEntry;
    }

    @Nullable
    public final String templateType() {
        AdUnit adMarkup = getAdMarkup();
        if (adMarkup != null) {
            return adMarkup.getTemplateType();
        }
        return null;
    }

    public final synchronized void updateAdAssetPath(@Nullable AdAsset adAsset) {
        if (adAsset != null) {
            if (!Intrinsics.areEqual("template", adAsset.getAdIdentifier())) {
                File file = new File(adAsset.getLocalPath());
                if (file.exists()) {
                    String adIdentifier = adAsset.getAdIdentifier();
                    ConcurrentHashMap<String, String> concurrentHashMap = this.mraidFiles;
                    concurrentHashMap.put(adIdentifier, FILE_SCHEME + file.getPath());
                }
            }
        }
    }

    @c
    public /* synthetic */ AdPayload(int i10, List list, ConfigPayload configPayload, ConcurrentHashMap concurrentHashMap, @VisibleForTesting Map map, boolean z10, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.ads = null;
        } else {
            this.ads = list;
        }
        if ((i10 & 2) == 0) {
            this.config = null;
        } else {
            this.config = configPayload;
        }
        if ((i10 & 4) == 0) {
            this.mraidFiles = new ConcurrentHashMap<>();
        } else {
            this.mraidFiles = concurrentHashMap;
        }
        if ((i10 & 8) == 0) {
            this.incentivizedTextSettings = new HashMap();
        } else {
            this.incentivizedTextSettings = map;
        }
        if ((i10 & 16) == 0) {
            this.assetsFullyDownloaded = false;
        } else {
            this.assetsFullyDownloaded = z10;
        }
        this.adConfig = null;
        this.logEntry = null;
        this.assetDirectory = null;
    }

    public AdPayload(@Nullable List<PlacementAdUnit> list, @Nullable ConfigPayload configPayload) {
        this.ads = list;
        this.config = configPayload;
        this.mraidFiles = new ConcurrentHashMap<>();
        this.incentivizedTextSettings = new HashMap();
    }

    public /* synthetic */ AdPayload(List list, ConfigPayload configPayload, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list, (i10 & 2) != 0 ? null : configPayload);
    }

    public static /* synthetic */ void getAdConfig$annotations() {
    }

    private static /* synthetic */ void getAds$annotations() {
    }

    public static /* synthetic */ void getAssetDirectory$annotations() {
    }

    private static /* synthetic */ void getConfig$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getIncentivizedTextSettings$annotations() {
    }

    public static /* synthetic */ void getLogEntry$vungle_ads_release$annotations() {
    }

    private static /* synthetic */ void getMraidFiles$annotations() {
    }
}
