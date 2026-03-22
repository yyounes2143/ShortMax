package com.vungle.ads.internal.model;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.f;
import vt.g1;
import vt.i;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: ConfigPayload.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class ConfigPayload {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private AutoRedirect autoRedirect;
    @Nullable
    private final CleverCache cleverCache;
    @Nullable
    private final String configExtension;
    @Nullable
    private Long configLastValidatedTimestamp;
    @Nullable
    private final ConfigSettings configSettings;
    @Nullable
    private final Boolean disableAdId;
    @Nullable
    private Boolean enableOT;
    @Nullable
    private final Endpoints endpoints;
    @Nullable
    private final Boolean fpdEnabled;
    @Nullable
    private final Boolean isReportIncentivizedEnabled;
    @Nullable
    private final LogMetricsSettings logMetricsSettings;
    @Nullable
    private final List<Placement> placements;
    @Nullable
    private Boolean retryPriorityTPATs;
    @Nullable
    private final Boolean rtaDebugging;
    @Nullable
    private final Integer sessionTimeout;
    @Nullable
    private final Integer signalSessionTimeout;
    @Nullable
    private final Boolean signalsDisabled;
    @Nullable
    private final UserPrivacy userPrivacy;
    @Nullable
    private final Boolean waitForConnectivityForTPAT;

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AutoRedirect {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Long afterClickDuration;
        @Nullable
        private final Boolean allowAutoRedirect;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AutoRedirect> serializer() {
                return ConfigPayload$AutoRedirect$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AutoRedirect() {
            this((Boolean) null, (Long) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ AutoRedirect copy$default(AutoRedirect autoRedirect, Boolean bool, Long l10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bool = autoRedirect.allowAutoRedirect;
            }
            if ((i10 & 2) != 0) {
                l10 = autoRedirect.afterClickDuration;
            }
            return autoRedirect.copy(bool, l10);
        }

        public static final void write$Self(@NotNull AutoRedirect self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Long l10;
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.allowAutoRedirect, Boolean.FALSE)) {
                output.encodeNullableSerializableElement(serialDesc, 0, i.f69441a, self.allowAutoRedirect);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || (l10 = self.afterClickDuration) == null || l10.longValue() != Long.MAX_VALUE) {
                output.encodeNullableSerializableElement(serialDesc, 1, g1.f69417a, self.afterClickDuration);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.allowAutoRedirect;
        }

        @Nullable
        public final Long component2() {
            return this.afterClickDuration;
        }

        @NotNull
        public final AutoRedirect copy(@Nullable Boolean bool, @Nullable Long l10) {
            return new AutoRedirect(bool, l10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AutoRedirect)) {
                return false;
            }
            AutoRedirect autoRedirect = (AutoRedirect) obj;
            if (Intrinsics.areEqual(this.allowAutoRedirect, autoRedirect.allowAutoRedirect) && Intrinsics.areEqual(this.afterClickDuration, autoRedirect.afterClickDuration)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Long getAfterClickDuration() {
            return this.afterClickDuration;
        }

        @Nullable
        public final Boolean getAllowAutoRedirect() {
            return this.allowAutoRedirect;
        }

        public int hashCode() {
            int hashCode;
            Boolean bool = this.allowAutoRedirect;
            int i10 = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i11 = hashCode * 31;
            Long l10 = this.afterClickDuration;
            if (l10 != null) {
                i10 = l10.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "AutoRedirect(allowAutoRedirect=" + this.allowAutoRedirect + ", afterClickDuration=" + this.afterClickDuration + ')';
        }

        @c
        public /* synthetic */ AutoRedirect(int i10, Boolean bool, Long l10, r2 r2Var) {
            this.allowAutoRedirect = (i10 & 1) == 0 ? Boolean.FALSE : bool;
            if ((i10 & 2) == 0) {
                this.afterClickDuration = Long.MAX_VALUE;
            } else {
                this.afterClickDuration = l10;
            }
        }

        public AutoRedirect(@Nullable Boolean bool, @Nullable Long l10) {
            this.allowAutoRedirect = bool;
            this.afterClickDuration = l10;
        }

        public /* synthetic */ AutoRedirect(Boolean bool, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? Boolean.FALSE : bool, (i10 & 2) != 0 ? Long.MAX_VALUE : l10);
        }

        public static /* synthetic */ void getAfterClickDuration$annotations() {
        }

        public static /* synthetic */ void getAllowAutoRedirect$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class CleverCache {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Integer diskPercentage;
        @Nullable
        private final Long diskSize;
        @Nullable
        private final Boolean enabled;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<CleverCache> serializer() {
                return ConfigPayload$CleverCache$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public CleverCache() {
            this((Boolean) null, (Long) null, (Integer) null, 7, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ CleverCache copy$default(CleverCache cleverCache, Boolean bool, Long l10, Integer num, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bool = cleverCache.enabled;
            }
            if ((i10 & 2) != 0) {
                l10 = cleverCache.diskSize;
            }
            if ((i10 & 4) != 0) {
                num = cleverCache.diskPercentage;
            }
            return cleverCache.copy(bool, l10, num);
        }

        public static final void write$Self(@NotNull CleverCache self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Integer num;
            Long l10;
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || !Intrinsics.areEqual(self.enabled, Boolean.FALSE)) {
                output.encodeNullableSerializableElement(serialDesc, 0, i.f69441a, self.enabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || (l10 = self.diskSize) == null || l10.longValue() != 1000) {
                output.encodeNullableSerializableElement(serialDesc, 1, g1.f69417a, self.diskSize);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || (num = self.diskPercentage) == null || num.intValue() != 3) {
                output.encodeNullableSerializableElement(serialDesc, 2, v0.f69529a, self.diskPercentage);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.enabled;
        }

        @Nullable
        public final Long component2() {
            return this.diskSize;
        }

        @Nullable
        public final Integer component3() {
            return this.diskPercentage;
        }

        @NotNull
        public final CleverCache copy(@Nullable Boolean bool, @Nullable Long l10, @Nullable Integer num) {
            return new CleverCache(bool, l10, num);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CleverCache)) {
                return false;
            }
            CleverCache cleverCache = (CleverCache) obj;
            if (Intrinsics.areEqual(this.enabled, cleverCache.enabled) && Intrinsics.areEqual(this.diskSize, cleverCache.diskSize) && Intrinsics.areEqual(this.diskPercentage, cleverCache.diskPercentage)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer getDiskPercentage() {
            return this.diskPercentage;
        }

        @Nullable
        public final Long getDiskSize() {
            return this.diskSize;
        }

        @Nullable
        public final Boolean getEnabled() {
            return this.enabled;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            Boolean bool = this.enabled;
            int i10 = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i11 = hashCode * 31;
            Long l10 = this.diskSize;
            if (l10 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = l10.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            Integer num = this.diskPercentage;
            if (num != null) {
                i10 = num.hashCode();
            }
            return i12 + i10;
        }

        @NotNull
        public String toString() {
            return "CleverCache(enabled=" + this.enabled + ", diskSize=" + this.diskSize + ", diskPercentage=" + this.diskPercentage + ')';
        }

        @c
        public /* synthetic */ CleverCache(int i10, Boolean bool, Long l10, Integer num, r2 r2Var) {
            this.enabled = (i10 & 1) == 0 ? Boolean.FALSE : bool;
            if ((i10 & 2) == 0) {
                this.diskSize = 1000L;
            } else {
                this.diskSize = l10;
            }
            if ((i10 & 4) == 0) {
                this.diskPercentage = 3;
            } else {
                this.diskPercentage = num;
            }
        }

        public CleverCache(@Nullable Boolean bool, @Nullable Long l10, @Nullable Integer num) {
            this.enabled = bool;
            this.diskSize = l10;
            this.diskPercentage = num;
        }

        public /* synthetic */ CleverCache(Boolean bool, Long l10, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? Boolean.FALSE : bool, (i10 & 2) != 0 ? 1000L : l10, (i10 & 4) != 0 ? 3 : num);
        }

        public static /* synthetic */ void getDiskPercentage$annotations() {
        }

        public static /* synthetic */ void getDiskSize$annotations() {
        }

        public static /* synthetic */ void getEnabled$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<ConfigPayload> serializer() {
            return ConfigPayload$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ConfigSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Long refreshTime;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<ConfigSettings> serializer() {
                return ConfigPayload$ConfigSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public ConfigSettings() {
            this((Long) null, 1, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ ConfigSettings copy$default(ConfigSettings configSettings, Long l10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                l10 = configSettings.refreshTime;
            }
            return configSettings.copy(l10);
        }

        public static final void write$Self(@NotNull ConfigSettings self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.refreshTime != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, g1.f69417a, self.refreshTime);
            }
        }

        @Nullable
        public final Long component1() {
            return this.refreshTime;
        }

        @NotNull
        public final ConfigSettings copy(@Nullable Long l10) {
            return new ConfigSettings(l10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ConfigSettings) && Intrinsics.areEqual(this.refreshTime, ((ConfigSettings) obj).refreshTime)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Long getRefreshTime() {
            return this.refreshTime;
        }

        public int hashCode() {
            Long l10 = this.refreshTime;
            if (l10 == null) {
                return 0;
            }
            return l10.hashCode();
        }

        @NotNull
        public String toString() {
            return "ConfigSettings(refreshTime=" + this.refreshTime + ')';
        }

        @c
        public /* synthetic */ ConfigSettings(int i10, Long l10, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.refreshTime = null;
            } else {
                this.refreshTime = l10;
            }
        }

        public ConfigSettings(@Nullable Long l10) {
            this.refreshTime = l10;
        }

        public /* synthetic */ ConfigSettings(Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : l10);
        }

        public static /* synthetic */ void getRefreshTime$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Endpoints {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String adsEndpoint;
        @Nullable
        private final String errorLogsEndpoint;
        @Nullable
        private final String metricsEndpoint;
        @Nullable
        private final String mraidEndpoint;
        @Nullable
        private final String riEndpoint;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<Endpoints> serializer() {
                return ConfigPayload$Endpoints$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public Endpoints() {
            this((String) null, (String) null, (String) null, (String) null, (String) null, 31, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ Endpoints copy$default(Endpoints endpoints, String str, String str2, String str3, String str4, String str5, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = endpoints.adsEndpoint;
            }
            if ((i10 & 2) != 0) {
                str2 = endpoints.riEndpoint;
            }
            String str6 = str2;
            if ((i10 & 4) != 0) {
                str3 = endpoints.errorLogsEndpoint;
            }
            String str7 = str3;
            if ((i10 & 8) != 0) {
                str4 = endpoints.metricsEndpoint;
            }
            String str8 = str4;
            if ((i10 & 16) != 0) {
                str5 = endpoints.mraidEndpoint;
            }
            return endpoints.copy(str, str6, str7, str8, str5);
        }

        public static final void write$Self(@NotNull Endpoints self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.adsEndpoint != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.adsEndpoint);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.riEndpoint != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.riEndpoint);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.errorLogsEndpoint != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.errorLogsEndpoint);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 3) || self.metricsEndpoint != null) {
                output.encodeNullableSerializableElement(serialDesc, 3, w2.f69539a, self.metricsEndpoint);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 4) || self.mraidEndpoint != null) {
                output.encodeNullableSerializableElement(serialDesc, 4, w2.f69539a, self.mraidEndpoint);
            }
        }

        @Nullable
        public final String component1() {
            return this.adsEndpoint;
        }

        @Nullable
        public final String component2() {
            return this.riEndpoint;
        }

        @Nullable
        public final String component3() {
            return this.errorLogsEndpoint;
        }

        @Nullable
        public final String component4() {
            return this.metricsEndpoint;
        }

        @Nullable
        public final String component5() {
            return this.mraidEndpoint;
        }

        @NotNull
        public final Endpoints copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            return new Endpoints(str, str2, str3, str4, str5);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Endpoints)) {
                return false;
            }
            Endpoints endpoints = (Endpoints) obj;
            if (Intrinsics.areEqual(this.adsEndpoint, endpoints.adsEndpoint) && Intrinsics.areEqual(this.riEndpoint, endpoints.riEndpoint) && Intrinsics.areEqual(this.errorLogsEndpoint, endpoints.errorLogsEndpoint) && Intrinsics.areEqual(this.metricsEndpoint, endpoints.metricsEndpoint) && Intrinsics.areEqual(this.mraidEndpoint, endpoints.mraidEndpoint)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getAdsEndpoint() {
            return this.adsEndpoint;
        }

        @Nullable
        public final String getErrorLogsEndpoint() {
            return this.errorLogsEndpoint;
        }

        @Nullable
        public final String getMetricsEndpoint() {
            return this.metricsEndpoint;
        }

        @Nullable
        public final String getMraidEndpoint() {
            return this.mraidEndpoint;
        }

        @Nullable
        public final String getRiEndpoint() {
            return this.riEndpoint;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            String str = this.adsEndpoint;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            String str2 = this.riEndpoint;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            String str3 = this.errorLogsEndpoint;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str4 = this.metricsEndpoint;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            String str5 = this.mraidEndpoint;
            if (str5 != null) {
                i10 = str5.hashCode();
            }
            return i14 + i10;
        }

        @NotNull
        public String toString() {
            return "Endpoints(adsEndpoint=" + this.adsEndpoint + ", riEndpoint=" + this.riEndpoint + ", errorLogsEndpoint=" + this.errorLogsEndpoint + ", metricsEndpoint=" + this.metricsEndpoint + ", mraidEndpoint=" + this.mraidEndpoint + ')';
        }

        @c
        public /* synthetic */ Endpoints(int i10, String str, String str2, String str3, String str4, String str5, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.adsEndpoint = null;
            } else {
                this.adsEndpoint = str;
            }
            if ((i10 & 2) == 0) {
                this.riEndpoint = null;
            } else {
                this.riEndpoint = str2;
            }
            if ((i10 & 4) == 0) {
                this.errorLogsEndpoint = null;
            } else {
                this.errorLogsEndpoint = str3;
            }
            if ((i10 & 8) == 0) {
                this.metricsEndpoint = null;
            } else {
                this.metricsEndpoint = str4;
            }
            if ((i10 & 16) == 0) {
                this.mraidEndpoint = null;
            } else {
                this.mraidEndpoint = str5;
            }
        }

        public Endpoints(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            this.adsEndpoint = str;
            this.riEndpoint = str2;
            this.errorLogsEndpoint = str3;
            this.metricsEndpoint = str4;
            this.mraidEndpoint = str5;
        }

        public /* synthetic */ Endpoints(String str, String str2, String str3, String str4, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5);
        }

        public static /* synthetic */ void getAdsEndpoint$annotations() {
        }

        public static /* synthetic */ void getErrorLogsEndpoint$annotations() {
        }

        public static /* synthetic */ void getMetricsEndpoint$annotations() {
        }

        public static /* synthetic */ void getMraidEndpoint$annotations() {
        }

        public static /* synthetic */ void getRiEndpoint$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class GDPRSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String buttonAccept;
        @Nullable
        private final String buttonDeny;
        @Nullable
        private final String consentMessage;
        @Nullable
        private final String consentMessageVersion;
        @Nullable
        private final String consentTitle;
        @Nullable
        private final Boolean isCountryDataProtected;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<GDPRSettings> serializer() {
                return ConfigPayload$GDPRSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public GDPRSettings() {
            this((Boolean) null, (String) null, (String) null, (String) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ GDPRSettings copy$default(GDPRSettings gDPRSettings, Boolean bool, String str, String str2, String str3, String str4, String str5, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bool = gDPRSettings.isCountryDataProtected;
            }
            if ((i10 & 2) != 0) {
                str = gDPRSettings.consentTitle;
            }
            String str6 = str;
            if ((i10 & 4) != 0) {
                str2 = gDPRSettings.consentMessage;
            }
            String str7 = str2;
            if ((i10 & 8) != 0) {
                str3 = gDPRSettings.consentMessageVersion;
            }
            String str8 = str3;
            if ((i10 & 16) != 0) {
                str4 = gDPRSettings.buttonAccept;
            }
            String str9 = str4;
            if ((i10 & 32) != 0) {
                str5 = gDPRSettings.buttonDeny;
            }
            return gDPRSettings.copy(bool, str6, str7, str8, str9, str5);
        }

        public static final void write$Self(@NotNull GDPRSettings self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.isCountryDataProtected != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, i.f69441a, self.isCountryDataProtected);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.consentTitle != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.consentTitle);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.consentMessage != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.consentMessage);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 3) || self.consentMessageVersion != null) {
                output.encodeNullableSerializableElement(serialDesc, 3, w2.f69539a, self.consentMessageVersion);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 4) || self.buttonAccept != null) {
                output.encodeNullableSerializableElement(serialDesc, 4, w2.f69539a, self.buttonAccept);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 5) || self.buttonDeny != null) {
                output.encodeNullableSerializableElement(serialDesc, 5, w2.f69539a, self.buttonDeny);
            }
        }

        @Nullable
        public final Boolean component1() {
            return this.isCountryDataProtected;
        }

        @Nullable
        public final String component2() {
            return this.consentTitle;
        }

        @Nullable
        public final String component3() {
            return this.consentMessage;
        }

        @Nullable
        public final String component4() {
            return this.consentMessageVersion;
        }

        @Nullable
        public final String component5() {
            return this.buttonAccept;
        }

        @Nullable
        public final String component6() {
            return this.buttonDeny;
        }

        @NotNull
        public final GDPRSettings copy(@Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            return new GDPRSettings(bool, str, str2, str3, str4, str5);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GDPRSettings)) {
                return false;
            }
            GDPRSettings gDPRSettings = (GDPRSettings) obj;
            if (Intrinsics.areEqual(this.isCountryDataProtected, gDPRSettings.isCountryDataProtected) && Intrinsics.areEqual(this.consentTitle, gDPRSettings.consentTitle) && Intrinsics.areEqual(this.consentMessage, gDPRSettings.consentMessage) && Intrinsics.areEqual(this.consentMessageVersion, gDPRSettings.consentMessageVersion) && Intrinsics.areEqual(this.buttonAccept, gDPRSettings.buttonAccept) && Intrinsics.areEqual(this.buttonDeny, gDPRSettings.buttonDeny)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getButtonAccept() {
            return this.buttonAccept;
        }

        @Nullable
        public final String getButtonDeny() {
            return this.buttonDeny;
        }

        @Nullable
        public final String getConsentMessage() {
            return this.consentMessage;
        }

        @Nullable
        public final String getConsentMessageVersion() {
            return this.consentMessageVersion;
        }

        @Nullable
        public final String getConsentTitle() {
            return this.consentTitle;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            Boolean bool = this.isCountryDataProtected;
            int i10 = 0;
            if (bool == null) {
                hashCode = 0;
            } else {
                hashCode = bool.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.consentTitle;
            if (str == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            String str2 = this.consentMessage;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str3 = this.consentMessageVersion;
            if (str3 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str3.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            String str4 = this.buttonAccept;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i15 = (i14 + hashCode5) * 31;
            String str5 = this.buttonDeny;
            if (str5 != null) {
                i10 = str5.hashCode();
            }
            return i15 + i10;
        }

        @Nullable
        public final Boolean isCountryDataProtected() {
            return this.isCountryDataProtected;
        }

        @NotNull
        public String toString() {
            return "GDPRSettings(isCountryDataProtected=" + this.isCountryDataProtected + ", consentTitle=" + this.consentTitle + ", consentMessage=" + this.consentMessage + ", consentMessageVersion=" + this.consentMessageVersion + ", buttonAccept=" + this.buttonAccept + ", buttonDeny=" + this.buttonDeny + ')';
        }

        @c
        public /* synthetic */ GDPRSettings(int i10, Boolean bool, String str, String str2, String str3, String str4, String str5, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.isCountryDataProtected = null;
            } else {
                this.isCountryDataProtected = bool;
            }
            if ((i10 & 2) == 0) {
                this.consentTitle = null;
            } else {
                this.consentTitle = str;
            }
            if ((i10 & 4) == 0) {
                this.consentMessage = null;
            } else {
                this.consentMessage = str2;
            }
            if ((i10 & 8) == 0) {
                this.consentMessageVersion = null;
            } else {
                this.consentMessageVersion = str3;
            }
            if ((i10 & 16) == 0) {
                this.buttonAccept = null;
            } else {
                this.buttonAccept = str4;
            }
            if ((i10 & 32) == 0) {
                this.buttonDeny = null;
            } else {
                this.buttonDeny = str5;
            }
        }

        public GDPRSettings(@Nullable Boolean bool, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            this.isCountryDataProtected = bool;
            this.consentTitle = str;
            this.consentMessage = str2;
            this.consentMessageVersion = str3;
            this.buttonAccept = str4;
            this.buttonDeny = str5;
        }

        public /* synthetic */ GDPRSettings(Boolean bool, String str, String str2, String str3, String str4, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : str5);
        }

        public static /* synthetic */ void getButtonAccept$annotations() {
        }

        public static /* synthetic */ void getButtonDeny$annotations() {
        }

        public static /* synthetic */ void getConsentMessage$annotations() {
        }

        public static /* synthetic */ void getConsentMessageVersion$annotations() {
        }

        public static /* synthetic */ void getConsentTitle$annotations() {
        }

        public static /* synthetic */ void isCountryDataProtected$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class IABSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Integer tcfStatus;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<IABSettings> serializer() {
                return ConfigPayload$IABSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public enum TcfStatus {
            ALLOW_ID(0),
            DISABLE_ID(1),
            LEGACY(2);
            
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private static final Map<Integer, TcfStatus> rawValueMap;
            private final int rawValue;

            /* compiled from: ConfigPayload.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @Nullable
                public final TcfStatus fromRawValue(@Nullable Integer num) {
                    return (TcfStatus) TcfStatus.rawValueMap.get(num);
                }

                private Companion() {
                }
            }

            static {
                int i10;
                TcfStatus[] values = values();
                LinkedHashMap linkedHashMap = new LinkedHashMap(e.e(p0.e(values.length), 16));
                for (TcfStatus tcfStatus : values) {
                    linkedHashMap.put(Integer.valueOf(tcfStatus.rawValue), tcfStatus);
                }
                rawValueMap = linkedHashMap;
            }

            TcfStatus(int i10) {
                this.rawValue = i10;
            }

            public final int getRawValue() {
                return this.rawValue;
            }
        }

        public IABSettings() {
            this((Integer) null, 1, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ IABSettings copy$default(IABSettings iABSettings, Integer num, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                num = iABSettings.tcfStatus;
            }
            return iABSettings.copy(num);
        }

        public static final void write$Self(@NotNull IABSettings self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.tcfStatus != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, v0.f69529a, self.tcfStatus);
            }
        }

        @Nullable
        public final Integer component1() {
            return this.tcfStatus;
        }

        @NotNull
        public final IABSettings copy(@Nullable Integer num) {
            return new IABSettings(num);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof IABSettings) && Intrinsics.areEqual(this.tcfStatus, ((IABSettings) obj).tcfStatus)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer getTcfStatus() {
            return this.tcfStatus;
        }

        public int hashCode() {
            Integer num = this.tcfStatus;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        @NotNull
        public String toString() {
            return "IABSettings(tcfStatus=" + this.tcfStatus + ')';
        }

        @c
        public /* synthetic */ IABSettings(int i10, Integer num, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.tcfStatus = null;
            } else {
                this.tcfStatus = num;
            }
        }

        public IABSettings(@Nullable Integer num) {
            this.tcfStatus = num;
        }

        public /* synthetic */ IABSettings(Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : num);
        }

        public static /* synthetic */ void getTcfStatus$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class LogMetricsSettings {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Integer errorLogLevel;
        @Nullable
        private final Boolean metricsEnabled;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<LogMetricsSettings> serializer() {
                return ConfigPayload$LogMetricsSettings$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public LogMetricsSettings() {
            this((Integer) null, (Boolean) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ LogMetricsSettings copy$default(LogMetricsSettings logMetricsSettings, Integer num, Boolean bool, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                num = logMetricsSettings.errorLogLevel;
            }
            if ((i10 & 2) != 0) {
                bool = logMetricsSettings.metricsEnabled;
            }
            return logMetricsSettings.copy(num, bool);
        }

        public static final void write$Self(@NotNull LogMetricsSettings self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.errorLogLevel != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, v0.f69529a, self.errorLogLevel);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.metricsEnabled != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, i.f69441a, self.metricsEnabled);
            }
        }

        @Nullable
        public final Integer component1() {
            return this.errorLogLevel;
        }

        @Nullable
        public final Boolean component2() {
            return this.metricsEnabled;
        }

        @NotNull
        public final LogMetricsSettings copy(@Nullable Integer num, @Nullable Boolean bool) {
            return new LogMetricsSettings(num, bool);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LogMetricsSettings)) {
                return false;
            }
            LogMetricsSettings logMetricsSettings = (LogMetricsSettings) obj;
            if (Intrinsics.areEqual(this.errorLogLevel, logMetricsSettings.errorLogLevel) && Intrinsics.areEqual(this.metricsEnabled, logMetricsSettings.metricsEnabled)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer getErrorLogLevel() {
            return this.errorLogLevel;
        }

        @Nullable
        public final Boolean getMetricsEnabled() {
            return this.metricsEnabled;
        }

        public int hashCode() {
            int hashCode;
            Integer num = this.errorLogLevel;
            int i10 = 0;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            int i11 = hashCode * 31;
            Boolean bool = this.metricsEnabled;
            if (bool != null) {
                i10 = bool.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "LogMetricsSettings(errorLogLevel=" + this.errorLogLevel + ", metricsEnabled=" + this.metricsEnabled + ')';
        }

        @c
        public /* synthetic */ LogMetricsSettings(int i10, Integer num, Boolean bool, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.errorLogLevel = null;
            } else {
                this.errorLogLevel = num;
            }
            if ((i10 & 2) == 0) {
                this.metricsEnabled = null;
            } else {
                this.metricsEnabled = bool;
            }
        }

        public LogMetricsSettings(@Nullable Integer num, @Nullable Boolean bool) {
            this.errorLogLevel = num;
            this.metricsEnabled = bool;
        }

        public /* synthetic */ LogMetricsSettings(Integer num, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : bool);
        }

        public static /* synthetic */ void getErrorLogLevel$annotations() {
        }

        public static /* synthetic */ void getMetricsEnabled$annotations() {
        }
    }

    /* compiled from: ConfigPayload.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class UserPrivacy {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final GDPRSettings gdpr;
        @Nullable
        private final IABSettings iab;

        /* compiled from: ConfigPayload.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<UserPrivacy> serializer() {
                return ConfigPayload$UserPrivacy$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public UserPrivacy() {
            this((GDPRSettings) null, (IABSettings) null, 3, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ UserPrivacy copy$default(UserPrivacy userPrivacy, GDPRSettings gDPRSettings, IABSettings iABSettings, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                gDPRSettings = userPrivacy.gdpr;
            }
            if ((i10 & 2) != 0) {
                iABSettings = userPrivacy.iab;
            }
            return userPrivacy.copy(gDPRSettings, iABSettings);
        }

        public static final void write$Self(@NotNull UserPrivacy self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.gdpr != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, ConfigPayload$GDPRSettings$$serializer.INSTANCE, self.gdpr);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.iab != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, ConfigPayload$IABSettings$$serializer.INSTANCE, self.iab);
            }
        }

        @Nullable
        public final GDPRSettings component1() {
            return this.gdpr;
        }

        @Nullable
        public final IABSettings component2() {
            return this.iab;
        }

        @NotNull
        public final UserPrivacy copy(@Nullable GDPRSettings gDPRSettings, @Nullable IABSettings iABSettings) {
            return new UserPrivacy(gDPRSettings, iABSettings);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UserPrivacy)) {
                return false;
            }
            UserPrivacy userPrivacy = (UserPrivacy) obj;
            if (Intrinsics.areEqual(this.gdpr, userPrivacy.gdpr) && Intrinsics.areEqual(this.iab, userPrivacy.iab)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final GDPRSettings getGdpr() {
            return this.gdpr;
        }

        @Nullable
        public final IABSettings getIab() {
            return this.iab;
        }

        public int hashCode() {
            int hashCode;
            GDPRSettings gDPRSettings = this.gdpr;
            int i10 = 0;
            if (gDPRSettings == null) {
                hashCode = 0;
            } else {
                hashCode = gDPRSettings.hashCode();
            }
            int i11 = hashCode * 31;
            IABSettings iABSettings = this.iab;
            if (iABSettings != null) {
                i10 = iABSettings.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "UserPrivacy(gdpr=" + this.gdpr + ", iab=" + this.iab + ')';
        }

        @c
        public /* synthetic */ UserPrivacy(int i10, GDPRSettings gDPRSettings, IABSettings iABSettings, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.gdpr = null;
            } else {
                this.gdpr = gDPRSettings;
            }
            if ((i10 & 2) == 0) {
                this.iab = null;
            } else {
                this.iab = iABSettings;
            }
        }

        public UserPrivacy(@Nullable GDPRSettings gDPRSettings, @Nullable IABSettings iABSettings) {
            this.gdpr = gDPRSettings;
            this.iab = iABSettings;
        }

        public /* synthetic */ UserPrivacy(GDPRSettings gDPRSettings, IABSettings iABSettings, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : gDPRSettings, (i10 & 2) != 0 ? null : iABSettings);
        }

        public static /* synthetic */ void getGdpr$annotations() {
        }

        public static /* synthetic */ void getIab$annotations() {
        }
    }

    public ConfigPayload() {
        this((CleverCache) null, (ConfigSettings) null, (Endpoints) null, (LogMetricsSettings) null, (List) null, (UserPrivacy) null, (String) null, (Boolean) null, (Boolean) null, (Integer) null, (Boolean) null, (Integer) null, (Boolean) null, (Boolean) null, (Boolean) null, (Long) null, (AutoRedirect) null, (Boolean) null, (Boolean) null, 524287, (DefaultConstructorMarker) null);
    }

    public static final void write$Self(@NotNull ConfigPayload self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.cleverCache != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, ConfigPayload$CleverCache$$serializer.INSTANCE, self.cleverCache);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.configSettings != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, ConfigPayload$ConfigSettings$$serializer.INSTANCE, self.configSettings);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.endpoints != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, ConfigPayload$Endpoints$$serializer.INSTANCE, self.endpoints);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.logMetricsSettings != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, ConfigPayload$LogMetricsSettings$$serializer.INSTANCE, self.logMetricsSettings);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.placements != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, new f(Placement$$serializer.INSTANCE), self.placements);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.userPrivacy != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, ConfigPayload$UserPrivacy$$serializer.INSTANCE, self.userPrivacy);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.configExtension != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, w2.f69539a, self.configExtension);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || !Intrinsics.areEqual(self.disableAdId, Boolean.TRUE)) {
            output.encodeNullableSerializableElement(serialDesc, 7, i.f69441a, self.disableAdId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.isReportIncentivizedEnabled != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, i.f69441a, self.isReportIncentivizedEnabled);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.sessionTimeout != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, v0.f69529a, self.sessionTimeout);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.waitForConnectivityForTPAT != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, i.f69441a, self.waitForConnectivityForTPAT);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.signalSessionTimeout != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, v0.f69529a, self.signalSessionTimeout);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || self.signalsDisabled != null) {
            output.encodeNullableSerializableElement(serialDesc, 12, i.f69441a, self.signalsDisabled);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.fpdEnabled != null) {
            output.encodeNullableSerializableElement(serialDesc, 13, i.f69441a, self.fpdEnabled);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.rtaDebugging != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, i.f69441a, self.rtaDebugging);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.configLastValidatedTimestamp != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, g1.f69417a, self.configLastValidatedTimestamp);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 16) || self.autoRedirect != null) {
            output.encodeNullableSerializableElement(serialDesc, 16, ConfigPayload$AutoRedirect$$serializer.INSTANCE, self.autoRedirect);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 17) || self.retryPriorityTPATs != null) {
            output.encodeNullableSerializableElement(serialDesc, 17, i.f69441a, self.retryPriorityTPATs);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 18) || self.enableOT != null) {
            output.encodeNullableSerializableElement(serialDesc, 18, i.f69441a, self.enableOT);
        }
    }

    @Nullable
    public final CleverCache component1() {
        return this.cleverCache;
    }

    @Nullable
    public final Integer component10() {
        return this.sessionTimeout;
    }

    @Nullable
    public final Boolean component11() {
        return this.waitForConnectivityForTPAT;
    }

    @Nullable
    public final Integer component12() {
        return this.signalSessionTimeout;
    }

    @Nullable
    public final Boolean component13() {
        return this.signalsDisabled;
    }

    @Nullable
    public final Boolean component14() {
        return this.fpdEnabled;
    }

    @Nullable
    public final Boolean component15() {
        return this.rtaDebugging;
    }

    @Nullable
    public final Long component16() {
        return this.configLastValidatedTimestamp;
    }

    @Nullable
    public final AutoRedirect component17() {
        return this.autoRedirect;
    }

    @Nullable
    public final Boolean component18() {
        return this.retryPriorityTPATs;
    }

    @Nullable
    public final Boolean component19() {
        return this.enableOT;
    }

    @Nullable
    public final ConfigSettings component2() {
        return this.configSettings;
    }

    @Nullable
    public final Endpoints component3() {
        return this.endpoints;
    }

    @Nullable
    public final LogMetricsSettings component4() {
        return this.logMetricsSettings;
    }

    @Nullable
    public final List<Placement> component5() {
        return this.placements;
    }

    @Nullable
    public final UserPrivacy component6() {
        return this.userPrivacy;
    }

    @Nullable
    public final String component7() {
        return this.configExtension;
    }

    @Nullable
    public final Boolean component8() {
        return this.disableAdId;
    }

    @Nullable
    public final Boolean component9() {
        return this.isReportIncentivizedEnabled;
    }

    @NotNull
    public final ConfigPayload copy(@Nullable CleverCache cleverCache, @Nullable ConfigSettings configSettings, @Nullable Endpoints endpoints, @Nullable LogMetricsSettings logMetricsSettings, @Nullable List<Placement> list, @Nullable UserPrivacy userPrivacy, @Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num, @Nullable Boolean bool3, @Nullable Integer num2, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable Long l10, @Nullable AutoRedirect autoRedirect, @Nullable Boolean bool7, @Nullable Boolean bool8) {
        return new ConfigPayload(cleverCache, configSettings, endpoints, logMetricsSettings, list, userPrivacy, str, bool, bool2, num, bool3, num2, bool4, bool5, bool6, l10, autoRedirect, bool7, bool8);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigPayload)) {
            return false;
        }
        ConfigPayload configPayload = (ConfigPayload) obj;
        if (Intrinsics.areEqual(this.cleverCache, configPayload.cleverCache) && Intrinsics.areEqual(this.configSettings, configPayload.configSettings) && Intrinsics.areEqual(this.endpoints, configPayload.endpoints) && Intrinsics.areEqual(this.logMetricsSettings, configPayload.logMetricsSettings) && Intrinsics.areEqual(this.placements, configPayload.placements) && Intrinsics.areEqual(this.userPrivacy, configPayload.userPrivacy) && Intrinsics.areEqual(this.configExtension, configPayload.configExtension) && Intrinsics.areEqual(this.disableAdId, configPayload.disableAdId) && Intrinsics.areEqual(this.isReportIncentivizedEnabled, configPayload.isReportIncentivizedEnabled) && Intrinsics.areEqual(this.sessionTimeout, configPayload.sessionTimeout) && Intrinsics.areEqual(this.waitForConnectivityForTPAT, configPayload.waitForConnectivityForTPAT) && Intrinsics.areEqual(this.signalSessionTimeout, configPayload.signalSessionTimeout) && Intrinsics.areEqual(this.signalsDisabled, configPayload.signalsDisabled) && Intrinsics.areEqual(this.fpdEnabled, configPayload.fpdEnabled) && Intrinsics.areEqual(this.rtaDebugging, configPayload.rtaDebugging) && Intrinsics.areEqual(this.configLastValidatedTimestamp, configPayload.configLastValidatedTimestamp) && Intrinsics.areEqual(this.autoRedirect, configPayload.autoRedirect) && Intrinsics.areEqual(this.retryPriorityTPATs, configPayload.retryPriorityTPATs) && Intrinsics.areEqual(this.enableOT, configPayload.enableOT)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AutoRedirect getAutoRedirect() {
        return this.autoRedirect;
    }

    @Nullable
    public final CleverCache getCleverCache() {
        return this.cleverCache;
    }

    @Nullable
    public final String getConfigExtension() {
        return this.configExtension;
    }

    @Nullable
    public final Long getConfigLastValidatedTimestamp() {
        return this.configLastValidatedTimestamp;
    }

    @Nullable
    public final ConfigSettings getConfigSettings() {
        return this.configSettings;
    }

    @Nullable
    public final Boolean getDisableAdId() {
        return this.disableAdId;
    }

    @Nullable
    public final Boolean getEnableOT() {
        return this.enableOT;
    }

    @Nullable
    public final Endpoints getEndpoints() {
        return this.endpoints;
    }

    @Nullable
    public final Boolean getFpdEnabled() {
        return this.fpdEnabled;
    }

    @Nullable
    public final LogMetricsSettings getLogMetricsSettings() {
        return this.logMetricsSettings;
    }

    @Nullable
    public final List<Placement> getPlacements() {
        return this.placements;
    }

    @Nullable
    public final Boolean getRetryPriorityTPATs() {
        return this.retryPriorityTPATs;
    }

    @Nullable
    public final Boolean getRtaDebugging() {
        return this.rtaDebugging;
    }

    @Nullable
    public final Integer getSessionTimeout() {
        return this.sessionTimeout;
    }

    @Nullable
    public final Integer getSignalSessionTimeout() {
        return this.signalSessionTimeout;
    }

    @Nullable
    public final Boolean getSignalsDisabled() {
        return this.signalsDisabled;
    }

    @Nullable
    public final UserPrivacy getUserPrivacy() {
        return this.userPrivacy;
    }

    @Nullable
    public final Boolean getWaitForConnectivityForTPAT() {
        return this.waitForConnectivityForTPAT;
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
        CleverCache cleverCache = this.cleverCache;
        int i10 = 0;
        if (cleverCache == null) {
            hashCode = 0;
        } else {
            hashCode = cleverCache.hashCode();
        }
        int i11 = hashCode * 31;
        ConfigSettings configSettings = this.configSettings;
        if (configSettings == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = configSettings.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Endpoints endpoints = this.endpoints;
        if (endpoints == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = endpoints.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        LogMetricsSettings logMetricsSettings = this.logMetricsSettings;
        if (logMetricsSettings == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = logMetricsSettings.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        List<Placement> list = this.placements;
        if (list == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = list.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        UserPrivacy userPrivacy = this.userPrivacy;
        if (userPrivacy == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = userPrivacy.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        String str = this.configExtension;
        if (str == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str.hashCode();
        }
        int i17 = (i16 + hashCode7) * 31;
        Boolean bool = this.disableAdId;
        if (bool == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = bool.hashCode();
        }
        int i18 = (i17 + hashCode8) * 31;
        Boolean bool2 = this.isReportIncentivizedEnabled;
        if (bool2 == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = bool2.hashCode();
        }
        int i19 = (i18 + hashCode9) * 31;
        Integer num = this.sessionTimeout;
        if (num == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = num.hashCode();
        }
        int i20 = (i19 + hashCode10) * 31;
        Boolean bool3 = this.waitForConnectivityForTPAT;
        if (bool3 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = bool3.hashCode();
        }
        int i21 = (i20 + hashCode11) * 31;
        Integer num2 = this.signalSessionTimeout;
        if (num2 == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = num2.hashCode();
        }
        int i22 = (i21 + hashCode12) * 31;
        Boolean bool4 = this.signalsDisabled;
        if (bool4 == null) {
            hashCode13 = 0;
        } else {
            hashCode13 = bool4.hashCode();
        }
        int i23 = (i22 + hashCode13) * 31;
        Boolean bool5 = this.fpdEnabled;
        if (bool5 == null) {
            hashCode14 = 0;
        } else {
            hashCode14 = bool5.hashCode();
        }
        int i24 = (i23 + hashCode14) * 31;
        Boolean bool6 = this.rtaDebugging;
        if (bool6 == null) {
            hashCode15 = 0;
        } else {
            hashCode15 = bool6.hashCode();
        }
        int i25 = (i24 + hashCode15) * 31;
        Long l10 = this.configLastValidatedTimestamp;
        if (l10 == null) {
            hashCode16 = 0;
        } else {
            hashCode16 = l10.hashCode();
        }
        int i26 = (i25 + hashCode16) * 31;
        AutoRedirect autoRedirect = this.autoRedirect;
        if (autoRedirect == null) {
            hashCode17 = 0;
        } else {
            hashCode17 = autoRedirect.hashCode();
        }
        int i27 = (i26 + hashCode17) * 31;
        Boolean bool7 = this.retryPriorityTPATs;
        if (bool7 == null) {
            hashCode18 = 0;
        } else {
            hashCode18 = bool7.hashCode();
        }
        int i28 = (i27 + hashCode18) * 31;
        Boolean bool8 = this.enableOT;
        if (bool8 != null) {
            i10 = bool8.hashCode();
        }
        return i28 + i10;
    }

    @Nullable
    public final Boolean isReportIncentivizedEnabled() {
        return this.isReportIncentivizedEnabled;
    }

    public final void setAutoRedirect(@Nullable AutoRedirect autoRedirect) {
        this.autoRedirect = autoRedirect;
    }

    public final void setConfigLastValidatedTimestamp(@Nullable Long l10) {
        this.configLastValidatedTimestamp = l10;
    }

    public final void setEnableOT(@Nullable Boolean bool) {
        this.enableOT = bool;
    }

    public final void setRetryPriorityTPATs(@Nullable Boolean bool) {
        this.retryPriorityTPATs = bool;
    }

    @NotNull
    public String toString() {
        return "ConfigPayload(cleverCache=" + this.cleverCache + ", configSettings=" + this.configSettings + ", endpoints=" + this.endpoints + ", logMetricsSettings=" + this.logMetricsSettings + ", placements=" + this.placements + ", userPrivacy=" + this.userPrivacy + ", configExtension=" + this.configExtension + ", disableAdId=" + this.disableAdId + ", isReportIncentivizedEnabled=" + this.isReportIncentivizedEnabled + ", sessionTimeout=" + this.sessionTimeout + ", waitForConnectivityForTPAT=" + this.waitForConnectivityForTPAT + ", signalSessionTimeout=" + this.signalSessionTimeout + ", signalsDisabled=" + this.signalsDisabled + ", fpdEnabled=" + this.fpdEnabled + ", rtaDebugging=" + this.rtaDebugging + ", configLastValidatedTimestamp=" + this.configLastValidatedTimestamp + ", autoRedirect=" + this.autoRedirect + ", retryPriorityTPATs=" + this.retryPriorityTPATs + ", enableOT=" + this.enableOT + ')';
    }

    @c
    public /* synthetic */ ConfigPayload(int i10, CleverCache cleverCache, ConfigSettings configSettings, Endpoints endpoints, LogMetricsSettings logMetricsSettings, List list, UserPrivacy userPrivacy, String str, Boolean bool, Boolean bool2, Integer num, Boolean bool3, Integer num2, Boolean bool4, Boolean bool5, Boolean bool6, Long l10, AutoRedirect autoRedirect, Boolean bool7, Boolean bool8, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.cleverCache = null;
        } else {
            this.cleverCache = cleverCache;
        }
        if ((i10 & 2) == 0) {
            this.configSettings = null;
        } else {
            this.configSettings = configSettings;
        }
        if ((i10 & 4) == 0) {
            this.endpoints = null;
        } else {
            this.endpoints = endpoints;
        }
        if ((i10 & 8) == 0) {
            this.logMetricsSettings = null;
        } else {
            this.logMetricsSettings = logMetricsSettings;
        }
        if ((i10 & 16) == 0) {
            this.placements = null;
        } else {
            this.placements = list;
        }
        if ((i10 & 32) == 0) {
            this.userPrivacy = null;
        } else {
            this.userPrivacy = userPrivacy;
        }
        if ((i10 & 64) == 0) {
            this.configExtension = null;
        } else {
            this.configExtension = str;
        }
        this.disableAdId = (i10 & 128) == 0 ? Boolean.TRUE : bool;
        if ((i10 & 256) == 0) {
            this.isReportIncentivizedEnabled = null;
        } else {
            this.isReportIncentivizedEnabled = bool2;
        }
        if ((i10 & 512) == 0) {
            this.sessionTimeout = null;
        } else {
            this.sessionTimeout = num;
        }
        if ((i10 & 1024) == 0) {
            this.waitForConnectivityForTPAT = null;
        } else {
            this.waitForConnectivityForTPAT = bool3;
        }
        if ((i10 & 2048) == 0) {
            this.signalSessionTimeout = null;
        } else {
            this.signalSessionTimeout = num2;
        }
        if ((i10 & 4096) == 0) {
            this.signalsDisabled = null;
        } else {
            this.signalsDisabled = bool4;
        }
        if ((i10 & 8192) == 0) {
            this.fpdEnabled = null;
        } else {
            this.fpdEnabled = bool5;
        }
        if ((i10 & 16384) == 0) {
            this.rtaDebugging = null;
        } else {
            this.rtaDebugging = bool6;
        }
        if ((32768 & i10) == 0) {
            this.configLastValidatedTimestamp = null;
        } else {
            this.configLastValidatedTimestamp = l10;
        }
        if ((65536 & i10) == 0) {
            this.autoRedirect = null;
        } else {
            this.autoRedirect = autoRedirect;
        }
        if ((131072 & i10) == 0) {
            this.retryPriorityTPATs = null;
        } else {
            this.retryPriorityTPATs = bool7;
        }
        if ((i10 & 262144) == 0) {
            this.enableOT = null;
        } else {
            this.enableOT = bool8;
        }
    }

    public ConfigPayload(@Nullable CleverCache cleverCache, @Nullable ConfigSettings configSettings, @Nullable Endpoints endpoints, @Nullable LogMetricsSettings logMetricsSettings, @Nullable List<Placement> list, @Nullable UserPrivacy userPrivacy, @Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num, @Nullable Boolean bool3, @Nullable Integer num2, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable Boolean bool6, @Nullable Long l10, @Nullable AutoRedirect autoRedirect, @Nullable Boolean bool7, @Nullable Boolean bool8) {
        this.cleverCache = cleverCache;
        this.configSettings = configSettings;
        this.endpoints = endpoints;
        this.logMetricsSettings = logMetricsSettings;
        this.placements = list;
        this.userPrivacy = userPrivacy;
        this.configExtension = str;
        this.disableAdId = bool;
        this.isReportIncentivizedEnabled = bool2;
        this.sessionTimeout = num;
        this.waitForConnectivityForTPAT = bool3;
        this.signalSessionTimeout = num2;
        this.signalsDisabled = bool4;
        this.fpdEnabled = bool5;
        this.rtaDebugging = bool6;
        this.configLastValidatedTimestamp = l10;
        this.autoRedirect = autoRedirect;
        this.retryPriorityTPATs = bool7;
        this.enableOT = bool8;
    }

    public static /* synthetic */ void getAutoRedirect$annotations() {
    }

    public static /* synthetic */ void getCleverCache$annotations() {
    }

    public static /* synthetic */ void getConfigExtension$annotations() {
    }

    public static /* synthetic */ void getConfigLastValidatedTimestamp$annotations() {
    }

    public static /* synthetic */ void getConfigSettings$annotations() {
    }

    public static /* synthetic */ void getDisableAdId$annotations() {
    }

    public static /* synthetic */ void getEnableOT$annotations() {
    }

    public static /* synthetic */ void getEndpoints$annotations() {
    }

    public static /* synthetic */ void getFpdEnabled$annotations() {
    }

    public static /* synthetic */ void getLogMetricsSettings$annotations() {
    }

    public static /* synthetic */ void getPlacements$annotations() {
    }

    public static /* synthetic */ void getRetryPriorityTPATs$annotations() {
    }

    public static /* synthetic */ void getRtaDebugging$annotations() {
    }

    public static /* synthetic */ void getSessionTimeout$annotations() {
    }

    public static /* synthetic */ void getSignalSessionTimeout$annotations() {
    }

    public static /* synthetic */ void getSignalsDisabled$annotations() {
    }

    public static /* synthetic */ void getUserPrivacy$annotations() {
    }

    public static /* synthetic */ void getWaitForConnectivityForTPAT$annotations() {
    }

    public static /* synthetic */ void isReportIncentivizedEnabled$annotations() {
    }

    public /* synthetic */ ConfigPayload(CleverCache cleverCache, ConfigSettings configSettings, Endpoints endpoints, LogMetricsSettings logMetricsSettings, List list, UserPrivacy userPrivacy, String str, Boolean bool, Boolean bool2, Integer num, Boolean bool3, Integer num2, Boolean bool4, Boolean bool5, Boolean bool6, Long l10, AutoRedirect autoRedirect, Boolean bool7, Boolean bool8, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : cleverCache, (i10 & 2) != 0 ? null : configSettings, (i10 & 4) != 0 ? null : endpoints, (i10 & 8) != 0 ? null : logMetricsSettings, (i10 & 16) != 0 ? null : list, (i10 & 32) != 0 ? null : userPrivacy, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? Boolean.TRUE : bool, (i10 & 256) != 0 ? null : bool2, (i10 & 512) != 0 ? null : num, (i10 & 1024) != 0 ? null : bool3, (i10 & 2048) != 0 ? null : num2, (i10 & 4096) != 0 ? null : bool4, (i10 & 8192) != 0 ? null : bool5, (i10 & 16384) != 0 ? null : bool6, (i10 & 32768) != 0 ? null : l10, (i10 & 65536) != 0 ? null : autoRedirect, (i10 & 131072) != 0 ? null : bool7, (i10 & 262144) != 0 ? null : bool8);
    }
}
