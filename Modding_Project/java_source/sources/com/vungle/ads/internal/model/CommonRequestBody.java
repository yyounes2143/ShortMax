package com.vungle.ads.internal.model;

import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.fpd.FirstPartyData$$serializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c2;
import vt.f;
import vt.g1;
import vt.i;
import vt.r2;
import vt.w2;
/* compiled from: CommonRequestBody.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class CommonRequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final AppNode app;
    @NotNull
    private final DeviceNode device;
    @Nullable
    private RequestExt ext;
    @Nullable
    private RequestParam request;
    @Nullable
    private final User user;

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class CCPA {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String status;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<CCPA> serializer() {
                return CommonRequestBody$CCPA$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @c
        public /* synthetic */ CCPA(int i10, String str, r2 r2Var) {
            if (1 != (i10 & 1)) {
                c2.a(i10, 1, CommonRequestBody$CCPA$$serializer.INSTANCE.getDescriptor());
            }
            this.status = str;
        }

        public static /* synthetic */ CCPA copy$default(CCPA ccpa, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = ccpa.status;
            }
            return ccpa.copy(str);
        }

        public static final void write$Self(@NotNull CCPA self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.encodeStringElement(serialDesc, 0, self.status);
        }

        @NotNull
        public final String component1() {
            return this.status;
        }

        @NotNull
        public final CCPA copy(@NotNull String status) {
            Intrinsics.checkNotNullParameter(status, "status");
            return new CCPA(status);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof CCPA) && Intrinsics.areEqual(this.status, ((CCPA) obj).status)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getStatus() {
            return this.status;
        }

        public int hashCode() {
            return this.status.hashCode();
        }

        @NotNull
        public String toString() {
            return "CCPA(status=" + this.status + ')';
        }

        public CCPA(@NotNull String status) {
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class COPPA {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Boolean isCoppa;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<COPPA> serializer() {
                return CommonRequestBody$COPPA$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @c
        public /* synthetic */ COPPA(int i10, Boolean bool, r2 r2Var) {
            if (1 != (i10 & 1)) {
                c2.a(i10, 1, CommonRequestBody$COPPA$$serializer.INSTANCE.getDescriptor());
            }
            this.isCoppa = bool;
        }

        public static /* synthetic */ COPPA copy$default(COPPA coppa, Boolean bool, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bool = coppa.isCoppa;
            }
            return coppa.copy(bool);
        }

        public static final void write$Self(@NotNull COPPA self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.encodeNullableSerializableElement(serialDesc, 0, i.f69441a, self.isCoppa);
        }

        @Nullable
        public final Boolean component1() {
            return this.isCoppa;
        }

        @NotNull
        public final COPPA copy(@Nullable Boolean bool) {
            return new COPPA(bool);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof COPPA) && Intrinsics.areEqual(this.isCoppa, ((COPPA) obj).isCoppa)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Boolean bool = this.isCoppa;
            if (bool == null) {
                return 0;
            }
            return bool.hashCode();
        }

        @Nullable
        public final Boolean isCoppa() {
            return this.isCoppa;
        }

        @NotNull
        public String toString() {
            return "COPPA(isCoppa=" + this.isCoppa + ')';
        }

        public COPPA(@Nullable Boolean bool) {
            this.isCoppa = bool;
        }

        public static /* synthetic */ void isCoppa$annotations() {
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<CommonRequestBody> serializer() {
            return CommonRequestBody$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class GDPR {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String consentMessageVersion;
        @NotNull
        private final String consentSource;
        @NotNull
        private final String consentStatus;
        private final long consentTimestamp;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<GDPR> serializer() {
                return CommonRequestBody$GDPR$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @c
        public /* synthetic */ GDPR(int i10, String str, String str2, long j10, String str3, r2 r2Var) {
            if (15 != (i10 & 15)) {
                c2.a(i10, 15, CommonRequestBody$GDPR$$serializer.INSTANCE.getDescriptor());
            }
            this.consentStatus = str;
            this.consentSource = str2;
            this.consentTimestamp = j10;
            this.consentMessageVersion = str3;
        }

        public static /* synthetic */ GDPR copy$default(GDPR gdpr, String str, String str2, long j10, String str3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = gdpr.consentStatus;
            }
            if ((i10 & 2) != 0) {
                str2 = gdpr.consentSource;
            }
            String str4 = str2;
            if ((i10 & 4) != 0) {
                j10 = gdpr.consentTimestamp;
            }
            long j11 = j10;
            if ((i10 & 8) != 0) {
                str3 = gdpr.consentMessageVersion;
            }
            return gdpr.copy(str, str4, j11, str3);
        }

        public static final void write$Self(@NotNull GDPR self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.encodeStringElement(serialDesc, 0, self.consentStatus);
            output.encodeStringElement(serialDesc, 1, self.consentSource);
            output.encodeLongElement(serialDesc, 2, self.consentTimestamp);
            output.encodeStringElement(serialDesc, 3, self.consentMessageVersion);
        }

        @NotNull
        public final String component1() {
            return this.consentStatus;
        }

        @NotNull
        public final String component2() {
            return this.consentSource;
        }

        public final long component3() {
            return this.consentTimestamp;
        }

        @NotNull
        public final String component4() {
            return this.consentMessageVersion;
        }

        @NotNull
        public final GDPR copy(@NotNull String consentStatus, @NotNull String consentSource, long j10, @NotNull String consentMessageVersion) {
            Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
            Intrinsics.checkNotNullParameter(consentSource, "consentSource");
            Intrinsics.checkNotNullParameter(consentMessageVersion, "consentMessageVersion");
            return new GDPR(consentStatus, consentSource, j10, consentMessageVersion);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GDPR)) {
                return false;
            }
            GDPR gdpr = (GDPR) obj;
            if (Intrinsics.areEqual(this.consentStatus, gdpr.consentStatus) && Intrinsics.areEqual(this.consentSource, gdpr.consentSource) && this.consentTimestamp == gdpr.consentTimestamp && Intrinsics.areEqual(this.consentMessageVersion, gdpr.consentMessageVersion)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getConsentMessageVersion() {
            return this.consentMessageVersion;
        }

        @NotNull
        public final String getConsentSource() {
            return this.consentSource;
        }

        @NotNull
        public final String getConsentStatus() {
            return this.consentStatus;
        }

        public final long getConsentTimestamp() {
            return this.consentTimestamp;
        }

        public int hashCode() {
            return (((((this.consentStatus.hashCode() * 31) + this.consentSource.hashCode()) * 31) + Long.hashCode(this.consentTimestamp)) * 31) + this.consentMessageVersion.hashCode();
        }

        @NotNull
        public String toString() {
            return "GDPR(consentStatus=" + this.consentStatus + ", consentSource=" + this.consentSource + ", consentTimestamp=" + this.consentTimestamp + ", consentMessageVersion=" + this.consentMessageVersion + ')';
        }

        public GDPR(@NotNull String consentStatus, @NotNull String consentSource, long j10, @NotNull String consentMessageVersion) {
            Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
            Intrinsics.checkNotNullParameter(consentSource, "consentSource");
            Intrinsics.checkNotNullParameter(consentMessageVersion, "consentMessageVersion");
            this.consentStatus = consentStatus;
            this.consentSource = consentSource;
            this.consentTimestamp = j10;
            this.consentMessageVersion = consentMessageVersion;
        }

        public static /* synthetic */ void getConsentMessageVersion$annotations() {
        }

        public static /* synthetic */ void getConsentSource$annotations() {
        }

        public static /* synthetic */ void getConsentStatus$annotations() {
        }

        public static /* synthetic */ void getConsentTimestamp$annotations() {
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class IAB {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String tcf;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<IAB> serializer() {
                return CommonRequestBody$IAB$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        @c
        public /* synthetic */ IAB(int i10, String str, r2 r2Var) {
            if (1 != (i10 & 1)) {
                c2.a(i10, 1, CommonRequestBody$IAB$$serializer.INSTANCE.getDescriptor());
            }
            this.tcf = str;
        }

        public static /* synthetic */ IAB copy$default(IAB iab, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = iab.tcf;
            }
            return iab.copy(str);
        }

        public static final void write$Self(@NotNull IAB self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.encodeStringElement(serialDesc, 0, self.tcf);
        }

        @NotNull
        public final String component1() {
            return this.tcf;
        }

        @NotNull
        public final IAB copy(@NotNull String tcf) {
            Intrinsics.checkNotNullParameter(tcf, "tcf");
            return new IAB(tcf);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof IAB) && Intrinsics.areEqual(this.tcf, ((IAB) obj).tcf)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final String getTcf() {
            return this.tcf;
        }

        public int hashCode() {
            return this.tcf.hashCode();
        }

        @NotNull
        public String toString() {
            return "IAB(tcf=" + this.tcf + ')';
        }

        public IAB(@NotNull String tcf) {
            Intrinsics.checkNotNullParameter(tcf, "tcf");
            this.tcf = tcf;
        }

        public static /* synthetic */ void getTcf$annotations() {
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class RequestExt {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final String configExtension;
        @Nullable
        private final Long configLastValidatedTimestamp;
        @Nullable
        private String signals;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<RequestExt> serializer() {
                return CommonRequestBody$RequestExt$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public RequestExt() {
            this((String) null, (String) null, (Long) null, 7, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ RequestExt copy$default(RequestExt requestExt, String str, String str2, Long l10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = requestExt.configExtension;
            }
            if ((i10 & 2) != 0) {
                str2 = requestExt.signals;
            }
            if ((i10 & 4) != 0) {
                l10 = requestExt.configLastValidatedTimestamp;
            }
            return requestExt.copy(str, str2, l10);
        }

        public static final void write$Self(@NotNull RequestExt self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.configExtension != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.configExtension);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.signals != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.signals);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.configLastValidatedTimestamp != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, g1.f69417a, self.configLastValidatedTimestamp);
            }
        }

        @Nullable
        public final String component1() {
            return this.configExtension;
        }

        @Nullable
        public final String component2() {
            return this.signals;
        }

        @Nullable
        public final Long component3() {
            return this.configLastValidatedTimestamp;
        }

        @NotNull
        public final RequestExt copy(@Nullable String str, @Nullable String str2, @Nullable Long l10) {
            return new RequestExt(str, str2, l10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestExt)) {
                return false;
            }
            RequestExt requestExt = (RequestExt) obj;
            if (Intrinsics.areEqual(this.configExtension, requestExt.configExtension) && Intrinsics.areEqual(this.signals, requestExt.signals) && Intrinsics.areEqual(this.configLastValidatedTimestamp, requestExt.configLastValidatedTimestamp)) {
                return true;
            }
            return false;
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
        public final String getSignals() {
            return this.signals;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            String str = this.configExtension;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            String str2 = this.signals;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            Long l10 = this.configLastValidatedTimestamp;
            if (l10 != null) {
                i10 = l10.hashCode();
            }
            return i12 + i10;
        }

        public final void setSignals(@Nullable String str) {
            this.signals = str;
        }

        @NotNull
        public String toString() {
            return "RequestExt(configExtension=" + this.configExtension + ", signals=" + this.signals + ", configLastValidatedTimestamp=" + this.configLastValidatedTimestamp + ')';
        }

        @c
        public /* synthetic */ RequestExt(int i10, String str, String str2, Long l10, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.configExtension = null;
            } else {
                this.configExtension = str;
            }
            if ((i10 & 2) == 0) {
                this.signals = null;
            } else {
                this.signals = str2;
            }
            if ((i10 & 4) == 0) {
                this.configLastValidatedTimestamp = null;
            } else {
                this.configLastValidatedTimestamp = l10;
            }
        }

        public RequestExt(@Nullable String str, @Nullable String str2, @Nullable Long l10) {
            this.configExtension = str;
            this.signals = str2;
            this.configLastValidatedTimestamp = l10;
        }

        public /* synthetic */ RequestExt(String str, String str2, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : l10);
        }

        public static /* synthetic */ void getConfigExtension$annotations() {
        }

        public static /* synthetic */ void getConfigLastValidatedTimestamp$annotations() {
        }

        public static /* synthetic */ void getSignals$annotations() {
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class RequestParam {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private AdSizeParam adSize;
        @Nullable
        private final Long adStartTime;
        @Nullable
        private final String advAppId;
        @Nullable
        private final String placementReferenceId;
        @Nullable
        private final List<String> placements;
        @Nullable
        private final String user;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<RequestParam> serializer() {
                return CommonRequestBody$RequestParam$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public RequestParam() {
            this((List) null, (AdSizeParam) null, (Long) null, (String) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ RequestParam copy$default(RequestParam requestParam, List list, AdSizeParam adSizeParam, Long l10, String str, String str2, String str3, int i10, Object obj) {
            List<String> list2 = list;
            if ((i10 & 1) != 0) {
                list2 = requestParam.placements;
            }
            if ((i10 & 2) != 0) {
                adSizeParam = requestParam.adSize;
            }
            AdSizeParam adSizeParam2 = adSizeParam;
            if ((i10 & 4) != 0) {
                l10 = requestParam.adStartTime;
            }
            Long l11 = l10;
            if ((i10 & 8) != 0) {
                str = requestParam.advAppId;
            }
            String str4 = str;
            if ((i10 & 16) != 0) {
                str2 = requestParam.placementReferenceId;
            }
            String str5 = str2;
            if ((i10 & 32) != 0) {
                str3 = requestParam.user;
            }
            return requestParam.copy(list2, adSizeParam2, l11, str4, str5, str3);
        }

        public static final void write$Self(@NotNull RequestParam self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.placements != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, new f(w2.f69539a), self.placements);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.adSize != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, CommonRequestBody$AdSizeParam$$serializer.INSTANCE, self.adSize);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.adStartTime != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, g1.f69417a, self.adStartTime);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 3) || self.advAppId != null) {
                output.encodeNullableSerializableElement(serialDesc, 3, w2.f69539a, self.advAppId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 4) || self.placementReferenceId != null) {
                output.encodeNullableSerializableElement(serialDesc, 4, w2.f69539a, self.placementReferenceId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 5) || self.user != null) {
                output.encodeNullableSerializableElement(serialDesc, 5, w2.f69539a, self.user);
            }
        }

        @Nullable
        public final List<String> component1() {
            return this.placements;
        }

        @Nullable
        public final AdSizeParam component2() {
            return this.adSize;
        }

        @Nullable
        public final Long component3() {
            return this.adStartTime;
        }

        @Nullable
        public final String component4() {
            return this.advAppId;
        }

        @Nullable
        public final String component5() {
            return this.placementReferenceId;
        }

        @Nullable
        public final String component6() {
            return this.user;
        }

        @NotNull
        public final RequestParam copy(@Nullable List<String> list, @Nullable AdSizeParam adSizeParam, @Nullable Long l10, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            return new RequestParam(list, adSizeParam, l10, str, str2, str3);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestParam)) {
                return false;
            }
            RequestParam requestParam = (RequestParam) obj;
            if (Intrinsics.areEqual(this.placements, requestParam.placements) && Intrinsics.areEqual(this.adSize, requestParam.adSize) && Intrinsics.areEqual(this.adStartTime, requestParam.adStartTime) && Intrinsics.areEqual(this.advAppId, requestParam.advAppId) && Intrinsics.areEqual(this.placementReferenceId, requestParam.placementReferenceId) && Intrinsics.areEqual(this.user, requestParam.user)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final AdSizeParam getAdSize() {
            return this.adSize;
        }

        @Nullable
        public final Long getAdStartTime() {
            return this.adStartTime;
        }

        @Nullable
        public final String getAdvAppId() {
            return this.advAppId;
        }

        @Nullable
        public final String getPlacementReferenceId() {
            return this.placementReferenceId;
        }

        @Nullable
        public final List<String> getPlacements() {
            return this.placements;
        }

        @Nullable
        public final String getUser() {
            return this.user;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            List<String> list = this.placements;
            int i10 = 0;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            int i11 = hashCode * 31;
            AdSizeParam adSizeParam = this.adSize;
            if (adSizeParam == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = adSizeParam.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            Long l10 = this.adStartTime;
            if (l10 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = l10.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            String str = this.advAppId;
            if (str == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            String str2 = this.placementReferenceId;
            if (str2 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str2.hashCode();
            }
            int i15 = (i14 + hashCode5) * 31;
            String str3 = this.user;
            if (str3 != null) {
                i10 = str3.hashCode();
            }
            return i15 + i10;
        }

        public final void setAdSize(@Nullable AdSizeParam adSizeParam) {
            this.adSize = adSizeParam;
        }

        @NotNull
        public String toString() {
            return "RequestParam(placements=" + this.placements + ", adSize=" + this.adSize + ", adStartTime=" + this.adStartTime + ", advAppId=" + this.advAppId + ", placementReferenceId=" + this.placementReferenceId + ", user=" + this.user + ')';
        }

        @c
        public /* synthetic */ RequestParam(int i10, List list, AdSizeParam adSizeParam, Long l10, String str, String str2, String str3, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.placements = null;
            } else {
                this.placements = list;
            }
            if ((i10 & 2) == 0) {
                this.adSize = null;
            } else {
                this.adSize = adSizeParam;
            }
            if ((i10 & 4) == 0) {
                this.adStartTime = null;
            } else {
                this.adStartTime = l10;
            }
            if ((i10 & 8) == 0) {
                this.advAppId = null;
            } else {
                this.advAppId = str;
            }
            if ((i10 & 16) == 0) {
                this.placementReferenceId = null;
            } else {
                this.placementReferenceId = str2;
            }
            if ((i10 & 32) == 0) {
                this.user = null;
            } else {
                this.user = str3;
            }
        }

        public RequestParam(@Nullable List<String> list, @Nullable AdSizeParam adSizeParam, @Nullable Long l10, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            this.placements = list;
            this.adSize = adSizeParam;
            this.adStartTime = l10;
            this.advAppId = str;
            this.placementReferenceId = str2;
            this.user = str3;
        }

        public /* synthetic */ RequestParam(List list, AdSizeParam adSizeParam, Long l10, String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : list, (i10 & 2) != 0 ? null : adSizeParam, (i10 & 4) != 0 ? null : l10, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : str3);
        }

        public static /* synthetic */ void getAdSize$annotations() {
        }

        public static /* synthetic */ void getAdStartTime$annotations() {
        }

        public static /* synthetic */ void getAdvAppId$annotations() {
        }

        public static /* synthetic */ void getPlacementReferenceId$annotations() {
        }
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class User {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private CCPA ccpa;
        @Nullable
        private COPPA coppa;
        @Nullable
        private FirstPartyData fpd;
        @Nullable
        private GDPR gdpr;
        @Nullable
        private IAB iab;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<User> serializer() {
                return CommonRequestBody$User$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public User() {
            this((GDPR) null, (CCPA) null, (COPPA) null, (FirstPartyData) null, (IAB) null, 31, (DefaultConstructorMarker) null);
        }

        public static /* synthetic */ User copy$default(User user, GDPR gdpr, CCPA ccpa, COPPA coppa, FirstPartyData firstPartyData, IAB iab, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                gdpr = user.gdpr;
            }
            if ((i10 & 2) != 0) {
                ccpa = user.ccpa;
            }
            CCPA ccpa2 = ccpa;
            if ((i10 & 4) != 0) {
                coppa = user.coppa;
            }
            COPPA coppa2 = coppa;
            if ((i10 & 8) != 0) {
                firstPartyData = user.fpd;
            }
            FirstPartyData firstPartyData2 = firstPartyData;
            if ((i10 & 16) != 0) {
                iab = user.iab;
            }
            return user.copy(gdpr, ccpa2, coppa2, firstPartyData2, iab);
        }

        public static final void write$Self(@NotNull User self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.gdpr != null) {
                output.encodeNullableSerializableElement(serialDesc, 0, CommonRequestBody$GDPR$$serializer.INSTANCE, self.gdpr);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.ccpa != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, CommonRequestBody$CCPA$$serializer.INSTANCE, self.ccpa);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.coppa != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, CommonRequestBody$COPPA$$serializer.INSTANCE, self.coppa);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 3) || self.fpd != null) {
                output.encodeNullableSerializableElement(serialDesc, 3, FirstPartyData$$serializer.INSTANCE, self.fpd);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 4) || self.iab != null) {
                output.encodeNullableSerializableElement(serialDesc, 4, CommonRequestBody$IAB$$serializer.INSTANCE, self.iab);
            }
        }

        @Nullable
        public final GDPR component1() {
            return this.gdpr;
        }

        @Nullable
        public final CCPA component2() {
            return this.ccpa;
        }

        @Nullable
        public final COPPA component3() {
            return this.coppa;
        }

        @Nullable
        public final FirstPartyData component4() {
            return this.fpd;
        }

        @Nullable
        public final IAB component5() {
            return this.iab;
        }

        @NotNull
        public final User copy(@Nullable GDPR gdpr, @Nullable CCPA ccpa, @Nullable COPPA coppa, @Nullable FirstPartyData firstPartyData, @Nullable IAB iab) {
            return new User(gdpr, ccpa, coppa, firstPartyData, iab);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof User)) {
                return false;
            }
            User user = (User) obj;
            if (Intrinsics.areEqual(this.gdpr, user.gdpr) && Intrinsics.areEqual(this.ccpa, user.ccpa) && Intrinsics.areEqual(this.coppa, user.coppa) && Intrinsics.areEqual(this.fpd, user.fpd) && Intrinsics.areEqual(this.iab, user.iab)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final CCPA getCcpa() {
            return this.ccpa;
        }

        @Nullable
        public final COPPA getCoppa() {
            return this.coppa;
        }

        @Nullable
        public final FirstPartyData getFpd() {
            return this.fpd;
        }

        @Nullable
        public final GDPR getGdpr() {
            return this.gdpr;
        }

        @Nullable
        public final IAB getIab() {
            return this.iab;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            GDPR gdpr = this.gdpr;
            int i10 = 0;
            if (gdpr == null) {
                hashCode = 0;
            } else {
                hashCode = gdpr.hashCode();
            }
            int i11 = hashCode * 31;
            CCPA ccpa = this.ccpa;
            if (ccpa == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = ccpa.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            COPPA coppa = this.coppa;
            if (coppa == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = coppa.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            FirstPartyData firstPartyData = this.fpd;
            if (firstPartyData == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = firstPartyData.hashCode();
            }
            int i14 = (i13 + hashCode4) * 31;
            IAB iab = this.iab;
            if (iab != null) {
                i10 = iab.hashCode();
            }
            return i14 + i10;
        }

        public final void setCcpa(@Nullable CCPA ccpa) {
            this.ccpa = ccpa;
        }

        public final void setCoppa(@Nullable COPPA coppa) {
            this.coppa = coppa;
        }

        public final void setFpd(@Nullable FirstPartyData firstPartyData) {
            this.fpd = firstPartyData;
        }

        public final void setGdpr(@Nullable GDPR gdpr) {
            this.gdpr = gdpr;
        }

        public final void setIab(@Nullable IAB iab) {
            this.iab = iab;
        }

        @NotNull
        public String toString() {
            return "User(gdpr=" + this.gdpr + ", ccpa=" + this.ccpa + ", coppa=" + this.coppa + ", fpd=" + this.fpd + ", iab=" + this.iab + ')';
        }

        @c
        public /* synthetic */ User(int i10, GDPR gdpr, CCPA ccpa, COPPA coppa, FirstPartyData firstPartyData, IAB iab, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.gdpr = null;
            } else {
                this.gdpr = gdpr;
            }
            if ((i10 & 2) == 0) {
                this.ccpa = null;
            } else {
                this.ccpa = ccpa;
            }
            if ((i10 & 4) == 0) {
                this.coppa = null;
            } else {
                this.coppa = coppa;
            }
            if ((i10 & 8) == 0) {
                this.fpd = null;
            } else {
                this.fpd = firstPartyData;
            }
            if ((i10 & 16) == 0) {
                this.iab = null;
            } else {
                this.iab = iab;
            }
        }

        public User(@Nullable GDPR gdpr, @Nullable CCPA ccpa, @Nullable COPPA coppa, @Nullable FirstPartyData firstPartyData, @Nullable IAB iab) {
            this.gdpr = gdpr;
            this.ccpa = ccpa;
            this.coppa = coppa;
            this.fpd = firstPartyData;
            this.iab = iab;
        }

        public /* synthetic */ User(GDPR gdpr, CCPA ccpa, COPPA coppa, FirstPartyData firstPartyData, IAB iab, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : gdpr, (i10 & 2) != 0 ? null : ccpa, (i10 & 4) != 0 ? null : coppa, (i10 & 8) != 0 ? null : firstPartyData, (i10 & 16) != 0 ? null : iab);
        }
    }

    @c
    public /* synthetic */ CommonRequestBody(int i10, DeviceNode deviceNode, AppNode appNode, User user, RequestExt requestExt, RequestParam requestParam, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, CommonRequestBody$$serializer.INSTANCE.getDescriptor());
        }
        this.device = deviceNode;
        if ((i10 & 2) == 0) {
            this.app = null;
        } else {
            this.app = appNode;
        }
        if ((i10 & 4) == 0) {
            this.user = null;
        } else {
            this.user = user;
        }
        if ((i10 & 8) == 0) {
            this.ext = null;
        } else {
            this.ext = requestExt;
        }
        if ((i10 & 16) == 0) {
            this.request = null;
        } else {
            this.request = requestParam;
        }
    }

    public static /* synthetic */ CommonRequestBody copy$default(CommonRequestBody commonRequestBody, DeviceNode deviceNode, AppNode appNode, User user, RequestExt requestExt, RequestParam requestParam, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            deviceNode = commonRequestBody.device;
        }
        if ((i10 & 2) != 0) {
            appNode = commonRequestBody.app;
        }
        AppNode appNode2 = appNode;
        if ((i10 & 4) != 0) {
            user = commonRequestBody.user;
        }
        User user2 = user;
        if ((i10 & 8) != 0) {
            requestExt = commonRequestBody.ext;
        }
        RequestExt requestExt2 = requestExt;
        if ((i10 & 16) != 0) {
            requestParam = commonRequestBody.request;
        }
        return commonRequestBody.copy(deviceNode, appNode2, user2, requestExt2, requestParam);
    }

    public static final void write$Self(@NotNull CommonRequestBody self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeSerializableElement(serialDesc, 0, DeviceNode$$serializer.INSTANCE, self.device);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.app != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, AppNode$$serializer.INSTANCE, self.app);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.user != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, CommonRequestBody$User$$serializer.INSTANCE, self.user);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.ext != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, CommonRequestBody$RequestExt$$serializer.INSTANCE, self.ext);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.request != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, CommonRequestBody$RequestParam$$serializer.INSTANCE, self.request);
        }
    }

    @NotNull
    public final DeviceNode component1() {
        return this.device;
    }

    @Nullable
    public final AppNode component2() {
        return this.app;
    }

    @Nullable
    public final User component3() {
        return this.user;
    }

    @Nullable
    public final RequestExt component4() {
        return this.ext;
    }

    @Nullable
    public final RequestParam component5() {
        return this.request;
    }

    @NotNull
    public final CommonRequestBody copy(@NotNull DeviceNode device, @Nullable AppNode appNode, @Nullable User user, @Nullable RequestExt requestExt, @Nullable RequestParam requestParam) {
        Intrinsics.checkNotNullParameter(device, "device");
        return new CommonRequestBody(device, appNode, user, requestExt, requestParam);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommonRequestBody)) {
            return false;
        }
        CommonRequestBody commonRequestBody = (CommonRequestBody) obj;
        if (Intrinsics.areEqual(this.device, commonRequestBody.device) && Intrinsics.areEqual(this.app, commonRequestBody.app) && Intrinsics.areEqual(this.user, commonRequestBody.user) && Intrinsics.areEqual(this.ext, commonRequestBody.ext) && Intrinsics.areEqual(this.request, commonRequestBody.request)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AppNode getApp() {
        return this.app;
    }

    @NotNull
    public final DeviceNode getDevice() {
        return this.device;
    }

    @Nullable
    public final RequestExt getExt() {
        return this.ext;
    }

    @Nullable
    public final RequestParam getRequest() {
        return this.request;
    }

    @Nullable
    public final User getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = this.device.hashCode() * 31;
        AppNode appNode = this.app;
        int i10 = 0;
        if (appNode == null) {
            hashCode = 0;
        } else {
            hashCode = appNode.hashCode();
        }
        int i11 = (hashCode4 + hashCode) * 31;
        User user = this.user;
        if (user == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = user.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        RequestExt requestExt = this.ext;
        if (requestExt == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = requestExt.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        RequestParam requestParam = this.request;
        if (requestParam != null) {
            i10 = requestParam.hashCode();
        }
        return i13 + i10;
    }

    public final void setExt(@Nullable RequestExt requestExt) {
        this.ext = requestExt;
    }

    public final void setRequest(@Nullable RequestParam requestParam) {
        this.request = requestParam;
    }

    @NotNull
    public String toString() {
        return "CommonRequestBody(device=" + this.device + ", app=" + this.app + ", user=" + this.user + ", ext=" + this.ext + ", request=" + this.request + ')';
    }

    /* compiled from: CommonRequestBody.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AdSizeParam {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int height;
        private final int width;

        /* compiled from: CommonRequestBody.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<AdSizeParam> serializer() {
                return CommonRequestBody$AdSizeParam$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public AdSizeParam(int i10, int i11) {
            this.width = i10;
            this.height = i11;
        }

        public static /* synthetic */ AdSizeParam copy$default(AdSizeParam adSizeParam, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = adSizeParam.width;
            }
            if ((i12 & 2) != 0) {
                i11 = adSizeParam.height;
            }
            return adSizeParam.copy(i10, i11);
        }

        public static final void write$Self(@NotNull AdSizeParam self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            output.encodeIntElement(serialDesc, 0, self.width);
            output.encodeIntElement(serialDesc, 1, self.height);
        }

        public final int component1() {
            return this.width;
        }

        public final int component2() {
            return this.height;
        }

        @NotNull
        public final AdSizeParam copy(int i10, int i11) {
            return new AdSizeParam(i10, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdSizeParam)) {
                return false;
            }
            AdSizeParam adSizeParam = (AdSizeParam) obj;
            if (this.width == adSizeParam.width && this.height == adSizeParam.height) {
                return true;
            }
            return false;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getWidth() {
            return this.width;
        }

        public int hashCode() {
            return (Integer.hashCode(this.width) * 31) + Integer.hashCode(this.height);
        }

        @NotNull
        public String toString() {
            return "AdSizeParam(width=" + this.width + ", height=" + this.height + ')';
        }

        @c
        public /* synthetic */ AdSizeParam(int i10, int i11, int i12, r2 r2Var) {
            if (3 != (i10 & 3)) {
                c2.a(i10, 3, CommonRequestBody$AdSizeParam$$serializer.INSTANCE.getDescriptor());
            }
            this.width = i11;
            this.height = i12;
        }

        public static /* synthetic */ void getHeight$annotations() {
        }

        public static /* synthetic */ void getWidth$annotations() {
        }
    }

    public CommonRequestBody(@NotNull DeviceNode device, @Nullable AppNode appNode, @Nullable User user, @Nullable RequestExt requestExt, @Nullable RequestParam requestParam) {
        Intrinsics.checkNotNullParameter(device, "device");
        this.device = device;
        this.app = appNode;
        this.user = user;
        this.ext = requestExt;
        this.request = requestParam;
    }

    public /* synthetic */ CommonRequestBody(DeviceNode deviceNode, AppNode appNode, User user, RequestExt requestExt, RequestParam requestParam, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(deviceNode, (i10 & 2) != 0 ? null : appNode, (i10 & 4) != 0 ? null : user, (i10 & 8) != 0 ? null : requestExt, (i10 & 16) != 0 ? null : requestParam);
    }
}
