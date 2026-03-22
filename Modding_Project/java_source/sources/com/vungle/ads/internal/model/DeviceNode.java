package com.vungle.ads.internal.model;

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
import vt.g1;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: DeviceNode.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class DeviceNode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String carrier;
    @Nullable
    private VungleExt ext;

    /* renamed from: h  reason: collision with root package name */
    private int f49615h;
    @Nullable
    private String ifa;
    @Nullable
    private Integer lmt;
    @NotNull
    private final String make;
    @NotNull
    private final String model;
    @NotNull

    /* renamed from: os  reason: collision with root package name */
    private final String f49616os;
    @NotNull
    private final String osv;
    @Nullable

    /* renamed from: ua  reason: collision with root package name */
    private String f49617ua;

    /* renamed from: w  reason: collision with root package name */
    private int f49618w;

    /* compiled from: DeviceNode.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<DeviceNode> serializer() {
            return DeviceNode$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    /* compiled from: DeviceNode.kt */
    @k
    @Metadata
    /* loaded from: classes7.dex */
    public static final class VungleExt {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private String amazonAdvertisingId;
        @Nullable
        private String appSetId;
        @Nullable
        private Integer appSetIdScope;
        private float batteryLevel;
        private int batterySaverEnabled;
        @Nullable
        private String batteryState;
        @Nullable
        private String connectionType;
        @Nullable
        private String connectionTypeDetail;
        @Nullable
        private String gaid;
        private boolean isGooglePlayServicesAvailable;
        private boolean isSideloadEnabled;
        private boolean isTv;
        @Nullable
        private String language;
        @Nullable
        private String locale;
        @Nullable
        private Long obt;
        @Nullable
        private Long oit;
        @Nullable
        private Long ort;
        private int sdCardAvailable;
        @Nullable
        private Long sit;
        private int soundEnabled;
        @Nullable
        private String timeZone;
        private float volumeLevel;

        /* compiled from: DeviceNode.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final KSerializer<VungleExt> serializer() {
                return DeviceNode$VungleExt$$serializer.INSTANCE;
            }

            private Companion() {
            }
        }

        public VungleExt() {
            this(false, (String) null, (Integer) null, 0.0f, (String) null, 0, (String) null, (String) null, (String) null, (String) null, (String) null, 0.0f, 0, false, 0, false, (String) null, (String) null, (Long) null, (Long) null, (Long) null, (Long) null, 4194303, (DefaultConstructorMarker) null);
        }

        public static final void write$Self(@NotNull VungleExt self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
            Intrinsics.checkNotNullParameter(self, "self");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
            if (output.shouldEncodeElementDefault(serialDesc, 0) || self.isGooglePlayServicesAvailable) {
                output.encodeBooleanElement(serialDesc, 0, self.isGooglePlayServicesAvailable);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 1) || self.appSetId != null) {
                output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.appSetId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 2) || self.appSetIdScope != null) {
                output.encodeNullableSerializableElement(serialDesc, 2, v0.f69529a, self.appSetIdScope);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 3) || !Intrinsics.areEqual((Object) Float.valueOf(self.batteryLevel), (Object) Float.valueOf(0.0f))) {
                output.encodeFloatElement(serialDesc, 3, self.batteryLevel);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 4) || self.batteryState != null) {
                output.encodeNullableSerializableElement(serialDesc, 4, w2.f69539a, self.batteryState);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 5) || self.batterySaverEnabled != 0) {
                output.encodeIntElement(serialDesc, 5, self.batterySaverEnabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 6) || self.connectionType != null) {
                output.encodeNullableSerializableElement(serialDesc, 6, w2.f69539a, self.connectionType);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 7) || self.connectionTypeDetail != null) {
                output.encodeNullableSerializableElement(serialDesc, 7, w2.f69539a, self.connectionTypeDetail);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 8) || self.locale != null) {
                output.encodeNullableSerializableElement(serialDesc, 8, w2.f69539a, self.locale);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 9) || self.language != null) {
                output.encodeNullableSerializableElement(serialDesc, 9, w2.f69539a, self.language);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 10) || self.timeZone != null) {
                output.encodeNullableSerializableElement(serialDesc, 10, w2.f69539a, self.timeZone);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 11) || !Intrinsics.areEqual((Object) Float.valueOf(self.volumeLevel), (Object) Float.valueOf(0.0f))) {
                output.encodeFloatElement(serialDesc, 11, self.volumeLevel);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 12) || self.soundEnabled != 1) {
                output.encodeIntElement(serialDesc, 12, self.soundEnabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 13) || self.isTv) {
                output.encodeBooleanElement(serialDesc, 13, self.isTv);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 14) || self.sdCardAvailable != 1) {
                output.encodeIntElement(serialDesc, 14, self.sdCardAvailable);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 15) || self.isSideloadEnabled) {
                output.encodeBooleanElement(serialDesc, 15, self.isSideloadEnabled);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 16) || self.gaid != null) {
                output.encodeNullableSerializableElement(serialDesc, 16, w2.f69539a, self.gaid);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 17) || self.amazonAdvertisingId != null) {
                output.encodeNullableSerializableElement(serialDesc, 17, w2.f69539a, self.amazonAdvertisingId);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 18) || self.sit != null) {
                output.encodeNullableSerializableElement(serialDesc, 18, g1.f69417a, self.sit);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 19) || self.oit != null) {
                output.encodeNullableSerializableElement(serialDesc, 19, g1.f69417a, self.oit);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 20) || self.ort != null) {
                output.encodeNullableSerializableElement(serialDesc, 20, g1.f69417a, self.ort);
            }
            if (output.shouldEncodeElementDefault(serialDesc, 21) || self.obt != null) {
                output.encodeNullableSerializableElement(serialDesc, 21, g1.f69417a, self.obt);
            }
        }

        public final boolean component1() {
            return this.isGooglePlayServicesAvailable;
        }

        @Nullable
        public final String component10() {
            return this.language;
        }

        @Nullable
        public final String component11() {
            return this.timeZone;
        }

        public final float component12() {
            return this.volumeLevel;
        }

        public final int component13() {
            return this.soundEnabled;
        }

        public final boolean component14() {
            return this.isTv;
        }

        public final int component15() {
            return this.sdCardAvailable;
        }

        public final boolean component16() {
            return this.isSideloadEnabled;
        }

        @Nullable
        public final String component17() {
            return this.gaid;
        }

        @Nullable
        public final String component18() {
            return this.amazonAdvertisingId;
        }

        @Nullable
        public final Long component19() {
            return this.sit;
        }

        @Nullable
        public final String component2() {
            return this.appSetId;
        }

        @Nullable
        public final Long component20() {
            return this.oit;
        }

        @Nullable
        public final Long component21() {
            return this.ort;
        }

        @Nullable
        public final Long component22() {
            return this.obt;
        }

        @Nullable
        public final Integer component3() {
            return this.appSetIdScope;
        }

        public final float component4() {
            return this.batteryLevel;
        }

        @Nullable
        public final String component5() {
            return this.batteryState;
        }

        public final int component6() {
            return this.batterySaverEnabled;
        }

        @Nullable
        public final String component7() {
            return this.connectionType;
        }

        @Nullable
        public final String component8() {
            return this.connectionTypeDetail;
        }

        @Nullable
        public final String component9() {
            return this.locale;
        }

        @NotNull
        public final VungleExt copy(boolean z10, @Nullable String str, @Nullable Integer num, float f10, @Nullable String str2, int i10, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, float f11, int i11, boolean z11, int i12, boolean z12, @Nullable String str8, @Nullable String str9, @Nullable Long l10, @Nullable Long l11, @Nullable Long l12, @Nullable Long l13) {
            return new VungleExt(z10, str, num, f10, str2, i10, str3, str4, str5, str6, str7, f11, i11, z11, i12, z12, str8, str9, l10, l11, l12, l13);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof VungleExt)) {
                return false;
            }
            VungleExt vungleExt = (VungleExt) obj;
            if (this.isGooglePlayServicesAvailable == vungleExt.isGooglePlayServicesAvailable && Intrinsics.areEqual(this.appSetId, vungleExt.appSetId) && Intrinsics.areEqual(this.appSetIdScope, vungleExt.appSetIdScope) && Intrinsics.areEqual((Object) Float.valueOf(this.batteryLevel), (Object) Float.valueOf(vungleExt.batteryLevel)) && Intrinsics.areEqual(this.batteryState, vungleExt.batteryState) && this.batterySaverEnabled == vungleExt.batterySaverEnabled && Intrinsics.areEqual(this.connectionType, vungleExt.connectionType) && Intrinsics.areEqual(this.connectionTypeDetail, vungleExt.connectionTypeDetail) && Intrinsics.areEqual(this.locale, vungleExt.locale) && Intrinsics.areEqual(this.language, vungleExt.language) && Intrinsics.areEqual(this.timeZone, vungleExt.timeZone) && Intrinsics.areEqual((Object) Float.valueOf(this.volumeLevel), (Object) Float.valueOf(vungleExt.volumeLevel)) && this.soundEnabled == vungleExt.soundEnabled && this.isTv == vungleExt.isTv && this.sdCardAvailable == vungleExt.sdCardAvailable && this.isSideloadEnabled == vungleExt.isSideloadEnabled && Intrinsics.areEqual(this.gaid, vungleExt.gaid) && Intrinsics.areEqual(this.amazonAdvertisingId, vungleExt.amazonAdvertisingId) && Intrinsics.areEqual(this.sit, vungleExt.sit) && Intrinsics.areEqual(this.oit, vungleExt.oit) && Intrinsics.areEqual(this.ort, vungleExt.ort) && Intrinsics.areEqual(this.obt, vungleExt.obt)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getAmazonAdvertisingId() {
            return this.amazonAdvertisingId;
        }

        @Nullable
        public final String getAppSetId() {
            return this.appSetId;
        }

        @Nullable
        public final Integer getAppSetIdScope() {
            return this.appSetIdScope;
        }

        public final float getBatteryLevel() {
            return this.batteryLevel;
        }

        public final int getBatterySaverEnabled() {
            return this.batterySaverEnabled;
        }

        @Nullable
        public final String getBatteryState() {
            return this.batteryState;
        }

        @Nullable
        public final String getConnectionType() {
            return this.connectionType;
        }

        @Nullable
        public final String getConnectionTypeDetail() {
            return this.connectionTypeDetail;
        }

        @Nullable
        public final String getGaid() {
            return this.gaid;
        }

        @Nullable
        public final String getLanguage() {
            return this.language;
        }

        @Nullable
        public final String getLocale() {
            return this.locale;
        }

        @Nullable
        public final Long getObt() {
            return this.obt;
        }

        @Nullable
        public final Long getOit() {
            return this.oit;
        }

        @Nullable
        public final Long getOrt() {
            return this.ort;
        }

        public final int getSdCardAvailable() {
            return this.sdCardAvailable;
        }

        @Nullable
        public final Long getSit() {
            return this.sit;
        }

        public final int getSoundEnabled() {
            return this.soundEnabled;
        }

        @Nullable
        public final String getTimeZone() {
            return this.timeZone;
        }

        public final float getVolumeLevel() {
            return this.volumeLevel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v44 */
        /* JADX WARN: Type inference failed for: r0v45 */
        /* JADX WARN: Type inference failed for: r2v32, types: [boolean] */
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
            boolean z10 = this.isGooglePlayServicesAvailable;
            int i10 = 1;
            ?? r02 = z10;
            if (z10) {
                r02 = 1;
            }
            int i11 = r02 * 31;
            String str = this.appSetId;
            int i12 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i13 = (i11 + hashCode) * 31;
            Integer num = this.appSetIdScope;
            if (num == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = num.hashCode();
            }
            int hashCode14 = (((i13 + hashCode2) * 31) + Float.hashCode(this.batteryLevel)) * 31;
            String str2 = this.batteryState;
            if (str2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str2.hashCode();
            }
            int hashCode15 = (((hashCode14 + hashCode3) * 31) + Integer.hashCode(this.batterySaverEnabled)) * 31;
            String str3 = this.connectionType;
            if (str3 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str3.hashCode();
            }
            int i14 = (hashCode15 + hashCode4) * 31;
            String str4 = this.connectionTypeDetail;
            if (str4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str4.hashCode();
            }
            int i15 = (i14 + hashCode5) * 31;
            String str5 = this.locale;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i16 = (i15 + hashCode6) * 31;
            String str6 = this.language;
            if (str6 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = str6.hashCode();
            }
            int i17 = (i16 + hashCode7) * 31;
            String str7 = this.timeZone;
            if (str7 == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = str7.hashCode();
            }
            int hashCode16 = (((((i17 + hashCode8) * 31) + Float.hashCode(this.volumeLevel)) * 31) + Integer.hashCode(this.soundEnabled)) * 31;
            ?? r22 = this.isTv;
            int i18 = r22;
            if (r22 != 0) {
                i18 = 1;
            }
            int hashCode17 = (((hashCode16 + i18) * 31) + Integer.hashCode(this.sdCardAvailable)) * 31;
            boolean z11 = this.isSideloadEnabled;
            if (!z11) {
                i10 = z11 ? 1 : 0;
            }
            int i19 = (hashCode17 + i10) * 31;
            String str8 = this.gaid;
            if (str8 == null) {
                hashCode9 = 0;
            } else {
                hashCode9 = str8.hashCode();
            }
            int i20 = (i19 + hashCode9) * 31;
            String str9 = this.amazonAdvertisingId;
            if (str9 == null) {
                hashCode10 = 0;
            } else {
                hashCode10 = str9.hashCode();
            }
            int i21 = (i20 + hashCode10) * 31;
            Long l10 = this.sit;
            if (l10 == null) {
                hashCode11 = 0;
            } else {
                hashCode11 = l10.hashCode();
            }
            int i22 = (i21 + hashCode11) * 31;
            Long l11 = this.oit;
            if (l11 == null) {
                hashCode12 = 0;
            } else {
                hashCode12 = l11.hashCode();
            }
            int i23 = (i22 + hashCode12) * 31;
            Long l12 = this.ort;
            if (l12 == null) {
                hashCode13 = 0;
            } else {
                hashCode13 = l12.hashCode();
            }
            int i24 = (i23 + hashCode13) * 31;
            Long l13 = this.obt;
            if (l13 != null) {
                i12 = l13.hashCode();
            }
            return i24 + i12;
        }

        public final boolean isGooglePlayServicesAvailable() {
            return this.isGooglePlayServicesAvailable;
        }

        public final boolean isSideloadEnabled() {
            return this.isSideloadEnabled;
        }

        public final boolean isTv() {
            return this.isTv;
        }

        public final void setAmazonAdvertisingId(@Nullable String str) {
            this.amazonAdvertisingId = str;
        }

        public final void setAppSetId(@Nullable String str) {
            this.appSetId = str;
        }

        public final void setAppSetIdScope(@Nullable Integer num) {
            this.appSetIdScope = num;
        }

        public final void setBatteryLevel(float f10) {
            this.batteryLevel = f10;
        }

        public final void setBatterySaverEnabled(int i10) {
            this.batterySaverEnabled = i10;
        }

        public final void setBatteryState(@Nullable String str) {
            this.batteryState = str;
        }

        public final void setConnectionType(@Nullable String str) {
            this.connectionType = str;
        }

        public final void setConnectionTypeDetail(@Nullable String str) {
            this.connectionTypeDetail = str;
        }

        public final void setGaid(@Nullable String str) {
            this.gaid = str;
        }

        public final void setGooglePlayServicesAvailable(boolean z10) {
            this.isGooglePlayServicesAvailable = z10;
        }

        public final void setLanguage(@Nullable String str) {
            this.language = str;
        }

        public final void setLocale(@Nullable String str) {
            this.locale = str;
        }

        public final void setObt(@Nullable Long l10) {
            this.obt = l10;
        }

        public final void setOit(@Nullable Long l10) {
            this.oit = l10;
        }

        public final void setOrt(@Nullable Long l10) {
            this.ort = l10;
        }

        public final void setSdCardAvailable(int i10) {
            this.sdCardAvailable = i10;
        }

        public final void setSideloadEnabled(boolean z10) {
            this.isSideloadEnabled = z10;
        }

        public final void setSit(@Nullable Long l10) {
            this.sit = l10;
        }

        public final void setSoundEnabled(int i10) {
            this.soundEnabled = i10;
        }

        public final void setTimeZone(@Nullable String str) {
            this.timeZone = str;
        }

        public final void setTv(boolean z10) {
            this.isTv = z10;
        }

        public final void setVolumeLevel(float f10) {
            this.volumeLevel = f10;
        }

        @NotNull
        public String toString() {
            return "VungleExt(isGooglePlayServicesAvailable=" + this.isGooglePlayServicesAvailable + ", appSetId=" + this.appSetId + ", appSetIdScope=" + this.appSetIdScope + ", batteryLevel=" + this.batteryLevel + ", batteryState=" + this.batteryState + ", batterySaverEnabled=" + this.batterySaverEnabled + ", connectionType=" + this.connectionType + ", connectionTypeDetail=" + this.connectionTypeDetail + ", locale=" + this.locale + ", language=" + this.language + ", timeZone=" + this.timeZone + ", volumeLevel=" + this.volumeLevel + ", soundEnabled=" + this.soundEnabled + ", isTv=" + this.isTv + ", sdCardAvailable=" + this.sdCardAvailable + ", isSideloadEnabled=" + this.isSideloadEnabled + ", gaid=" + this.gaid + ", amazonAdvertisingId=" + this.amazonAdvertisingId + ", sit=" + this.sit + ", oit=" + this.oit + ", ort=" + this.ort + ", obt=" + this.obt + ')';
        }

        @c
        public /* synthetic */ VungleExt(int i10, boolean z10, String str, Integer num, float f10, String str2, int i11, String str3, String str4, String str5, String str6, String str7, float f11, int i12, boolean z11, int i13, boolean z12, String str8, String str9, Long l10, Long l11, Long l12, Long l13, r2 r2Var) {
            if ((i10 & 1) == 0) {
                this.isGooglePlayServicesAvailable = false;
            } else {
                this.isGooglePlayServicesAvailable = z10;
            }
            if ((i10 & 2) == 0) {
                this.appSetId = null;
            } else {
                this.appSetId = str;
            }
            if ((i10 & 4) == 0) {
                this.appSetIdScope = null;
            } else {
                this.appSetIdScope = num;
            }
            if ((i10 & 8) == 0) {
                this.batteryLevel = 0.0f;
            } else {
                this.batteryLevel = f10;
            }
            if ((i10 & 16) == 0) {
                this.batteryState = null;
            } else {
                this.batteryState = str2;
            }
            if ((i10 & 32) == 0) {
                this.batterySaverEnabled = 0;
            } else {
                this.batterySaverEnabled = i11;
            }
            if ((i10 & 64) == 0) {
                this.connectionType = null;
            } else {
                this.connectionType = str3;
            }
            if ((i10 & 128) == 0) {
                this.connectionTypeDetail = null;
            } else {
                this.connectionTypeDetail = str4;
            }
            if ((i10 & 256) == 0) {
                this.locale = null;
            } else {
                this.locale = str5;
            }
            if ((i10 & 512) == 0) {
                this.language = null;
            } else {
                this.language = str6;
            }
            if ((i10 & 1024) == 0) {
                this.timeZone = null;
            } else {
                this.timeZone = str7;
            }
            if ((i10 & 2048) == 0) {
                this.volumeLevel = 0.0f;
            } else {
                this.volumeLevel = f11;
            }
            if ((i10 & 4096) == 0) {
                this.soundEnabled = 1;
            } else {
                this.soundEnabled = i12;
            }
            if ((i10 & 8192) == 0) {
                this.isTv = false;
            } else {
                this.isTv = z11;
            }
            if ((i10 & 16384) == 0) {
                this.sdCardAvailable = 1;
            } else {
                this.sdCardAvailable = i13;
            }
            if ((32768 & i10) == 0) {
                this.isSideloadEnabled = false;
            } else {
                this.isSideloadEnabled = z12;
            }
            if ((65536 & i10) == 0) {
                this.gaid = null;
            } else {
                this.gaid = str8;
            }
            if ((131072 & i10) == 0) {
                this.amazonAdvertisingId = null;
            } else {
                this.amazonAdvertisingId = str9;
            }
            if ((262144 & i10) == 0) {
                this.sit = null;
            } else {
                this.sit = l10;
            }
            if ((524288 & i10) == 0) {
                this.oit = null;
            } else {
                this.oit = l11;
            }
            if ((1048576 & i10) == 0) {
                this.ort = null;
            } else {
                this.ort = l12;
            }
            if ((i10 & 2097152) == 0) {
                this.obt = null;
            } else {
                this.obt = l13;
            }
        }

        public VungleExt(boolean z10, @Nullable String str, @Nullable Integer num, float f10, @Nullable String str2, int i10, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, float f11, int i11, boolean z11, int i12, boolean z12, @Nullable String str8, @Nullable String str9, @Nullable Long l10, @Nullable Long l11, @Nullable Long l12, @Nullable Long l13) {
            this.isGooglePlayServicesAvailable = z10;
            this.appSetId = str;
            this.appSetIdScope = num;
            this.batteryLevel = f10;
            this.batteryState = str2;
            this.batterySaverEnabled = i10;
            this.connectionType = str3;
            this.connectionTypeDetail = str4;
            this.locale = str5;
            this.language = str6;
            this.timeZone = str7;
            this.volumeLevel = f11;
            this.soundEnabled = i11;
            this.isTv = z11;
            this.sdCardAvailable = i12;
            this.isSideloadEnabled = z12;
            this.gaid = str8;
            this.amazonAdvertisingId = str9;
            this.sit = l10;
            this.oit = l11;
            this.ort = l12;
            this.obt = l13;
        }

        public static /* synthetic */ void getAmazonAdvertisingId$annotations() {
        }

        public static /* synthetic */ void getAppSetId$annotations() {
        }

        public static /* synthetic */ void getAppSetIdScope$annotations() {
        }

        public static /* synthetic */ void getBatteryLevel$annotations() {
        }

        public static /* synthetic */ void getBatterySaverEnabled$annotations() {
        }

        public static /* synthetic */ void getBatteryState$annotations() {
        }

        public static /* synthetic */ void getConnectionType$annotations() {
        }

        public static /* synthetic */ void getConnectionTypeDetail$annotations() {
        }

        public static /* synthetic */ void getGaid$annotations() {
        }

        public static /* synthetic */ void getLanguage$annotations() {
        }

        public static /* synthetic */ void getLocale$annotations() {
        }

        public static /* synthetic */ void getObt$annotations() {
        }

        public static /* synthetic */ void getOit$annotations() {
        }

        public static /* synthetic */ void getOrt$annotations() {
        }

        public static /* synthetic */ void getSdCardAvailable$annotations() {
        }

        public static /* synthetic */ void getSit$annotations() {
        }

        public static /* synthetic */ void getSoundEnabled$annotations() {
        }

        public static /* synthetic */ void getTimeZone$annotations() {
        }

        public static /* synthetic */ void getVolumeLevel$annotations() {
        }

        public static /* synthetic */ void isGooglePlayServicesAvailable$annotations() {
        }

        public static /* synthetic */ void isSideloadEnabled$annotations() {
        }

        public static /* synthetic */ void isTv$annotations() {
        }

        public /* synthetic */ VungleExt(boolean z10, String str, Integer num, float f10, String str2, int i10, String str3, String str4, String str5, String str6, String str7, float f11, int i11, boolean z11, int i12, boolean z12, String str8, String str9, Long l10, Long l11, Long l12, Long l13, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? false : z10, (i13 & 2) != 0 ? null : str, (i13 & 4) != 0 ? null : num, (i13 & 8) != 0 ? 0.0f : f10, (i13 & 16) != 0 ? null : str2, (i13 & 32) != 0 ? 0 : i10, (i13 & 64) != 0 ? null : str3, (i13 & 128) != 0 ? null : str4, (i13 & 256) != 0 ? null : str5, (i13 & 512) != 0 ? null : str6, (i13 & 1024) != 0 ? null : str7, (i13 & 2048) == 0 ? f11 : 0.0f, (i13 & 4096) != 0 ? 1 : i11, (i13 & 8192) != 0 ? false : z11, (i13 & 16384) == 0 ? i12 : 1, (32768 & i13) != 0 ? false : z12, (i13 & 65536) != 0 ? null : str8, (i13 & 131072) != 0 ? null : str9, (i13 & 262144) != 0 ? null : l10, (i13 & 524288) != 0 ? null : l11, (i13 & 1048576) != 0 ? null : l12, (i13 & 2097152) != 0 ? null : l13);
        }
    }

    @c
    public /* synthetic */ DeviceNode(int i10, String str, String str2, String str3, String str4, String str5, int i11, int i12, String str6, String str7, Integer num, VungleExt vungleExt, r2 r2Var) {
        if (119 != (i10 & 119)) {
            c2.a(i10, 119, DeviceNode$$serializer.INSTANCE.getDescriptor());
        }
        this.make = str;
        this.model = str2;
        this.osv = str3;
        if ((i10 & 8) == 0) {
            this.carrier = null;
        } else {
            this.carrier = str4;
        }
        this.f49616os = str5;
        this.f49618w = i11;
        this.f49615h = i12;
        if ((i10 & 128) == 0) {
            this.f49617ua = null;
        } else {
            this.f49617ua = str6;
        }
        if ((i10 & 256) == 0) {
            this.ifa = null;
        } else {
            this.ifa = str7;
        }
        if ((i10 & 512) == 0) {
            this.lmt = null;
        } else {
            this.lmt = num;
        }
        if ((i10 & 1024) == 0) {
            this.ext = null;
        } else {
            this.ext = vungleExt;
        }
    }

    public static final void write$Self(@NotNull DeviceNode self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.make);
        output.encodeStringElement(serialDesc, 1, self.model);
        output.encodeStringElement(serialDesc, 2, self.osv);
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.carrier != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, w2.f69539a, self.carrier);
        }
        output.encodeStringElement(serialDesc, 4, self.f49616os);
        output.encodeIntElement(serialDesc, 5, self.f49618w);
        output.encodeIntElement(serialDesc, 6, self.f49615h);
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.f49617ua != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, w2.f69539a, self.f49617ua);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.ifa != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, w2.f69539a, self.ifa);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.lmt != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, v0.f69529a, self.lmt);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.ext != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, DeviceNode$VungleExt$$serializer.INSTANCE, self.ext);
        }
    }

    @NotNull
    public final String component1() {
        return this.make;
    }

    @Nullable
    public final Integer component10() {
        return this.lmt;
    }

    @Nullable
    public final VungleExt component11() {
        return this.ext;
    }

    @NotNull
    public final String component2() {
        return this.model;
    }

    @NotNull
    public final String component3() {
        return this.osv;
    }

    @Nullable
    public final String component4() {
        return this.carrier;
    }

    @NotNull
    public final String component5() {
        return this.f49616os;
    }

    public final int component6() {
        return this.f49618w;
    }

    public final int component7() {
        return this.f49615h;
    }

    @Nullable
    public final String component8() {
        return this.f49617ua;
    }

    @Nullable
    public final String component9() {
        return this.ifa;
    }

    @NotNull
    public final DeviceNode copy(@NotNull String make, @NotNull String model, @NotNull String osv, @Nullable String str, @NotNull String os2, int i10, int i11, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable VungleExt vungleExt) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(osv, "osv");
        Intrinsics.checkNotNullParameter(os2, "os");
        return new DeviceNode(make, model, osv, str, os2, i10, i11, str2, str3, num, vungleExt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceNode)) {
            return false;
        }
        DeviceNode deviceNode = (DeviceNode) obj;
        if (Intrinsics.areEqual(this.make, deviceNode.make) && Intrinsics.areEqual(this.model, deviceNode.model) && Intrinsics.areEqual(this.osv, deviceNode.osv) && Intrinsics.areEqual(this.carrier, deviceNode.carrier) && Intrinsics.areEqual(this.f49616os, deviceNode.f49616os) && this.f49618w == deviceNode.f49618w && this.f49615h == deviceNode.f49615h && Intrinsics.areEqual(this.f49617ua, deviceNode.f49617ua) && Intrinsics.areEqual(this.ifa, deviceNode.ifa) && Intrinsics.areEqual(this.lmt, deviceNode.lmt) && Intrinsics.areEqual(this.ext, deviceNode.ext)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCarrier() {
        return this.carrier;
    }

    @Nullable
    public final VungleExt getExt() {
        return this.ext;
    }

    public final int getH() {
        return this.f49615h;
    }

    @Nullable
    public final String getIfa() {
        return this.ifa;
    }

    @Nullable
    public final Integer getLmt() {
        return this.lmt;
    }

    @NotNull
    public final String getMake() {
        return this.make;
    }

    @NotNull
    public final String getModel() {
        return this.model;
    }

    @NotNull
    public final String getOs() {
        return this.f49616os;
    }

    @NotNull
    public final String getOsv() {
        return this.osv;
    }

    @Nullable
    public final String getUa() {
        return this.f49617ua;
    }

    public final int getW() {
        return this.f49618w;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = ((((this.make.hashCode() * 31) + this.model.hashCode()) * 31) + this.osv.hashCode()) * 31;
        String str = this.carrier;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode6 = (((((((hashCode5 + hashCode) * 31) + this.f49616os.hashCode()) * 31) + Integer.hashCode(this.f49618w)) * 31) + Integer.hashCode(this.f49615h)) * 31;
        String str2 = this.f49617ua;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i11 = (hashCode6 + hashCode2) * 31;
        String str3 = this.ifa;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i12 = (i11 + hashCode3) * 31;
        Integer num = this.lmt;
        if (num == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num.hashCode();
        }
        int i13 = (i12 + hashCode4) * 31;
        VungleExt vungleExt = this.ext;
        if (vungleExt != null) {
            i10 = vungleExt.hashCode();
        }
        return i13 + i10;
    }

    public final void setExt(@Nullable VungleExt vungleExt) {
        this.ext = vungleExt;
    }

    public final void setH(int i10) {
        this.f49615h = i10;
    }

    public final void setIfa(@Nullable String str) {
        this.ifa = str;
    }

    public final void setLmt(@Nullable Integer num) {
        this.lmt = num;
    }

    public final void setUa(@Nullable String str) {
        this.f49617ua = str;
    }

    public final void setW(int i10) {
        this.f49618w = i10;
    }

    @NotNull
    public String toString() {
        return "DeviceNode(make=" + this.make + ", model=" + this.model + ", osv=" + this.osv + ", carrier=" + this.carrier + ", os=" + this.f49616os + ", w=" + this.f49618w + ", h=" + this.f49615h + ", ua=" + this.f49617ua + ", ifa=" + this.ifa + ", lmt=" + this.lmt + ", ext=" + this.ext + ')';
    }

    public DeviceNode(@NotNull String make, @NotNull String model, @NotNull String osv, @Nullable String str, @NotNull String os2, int i10, int i11, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable VungleExt vungleExt) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(osv, "osv");
        Intrinsics.checkNotNullParameter(os2, "os");
        this.make = make;
        this.model = model;
        this.osv = osv;
        this.carrier = str;
        this.f49616os = os2;
        this.f49618w = i10;
        this.f49615h = i11;
        this.f49617ua = str2;
        this.ifa = str3;
        this.lmt = num;
        this.ext = vungleExt;
    }

    public /* synthetic */ DeviceNode(String str, String str2, String str3, String str4, String str5, int i10, int i11, String str6, String str7, Integer num, VungleExt vungleExt, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i12 & 8) != 0 ? null : str4, str5, i10, i11, (i12 & 128) != 0 ? null : str6, (i12 & 256) != 0 ? null : str7, (i12 & 512) != 0 ? null : num, (i12 & 1024) != 0 ? null : vungleExt);
    }
}
