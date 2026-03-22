package com.inmobi.media;

import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.WatermarkData;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Q {

    /* renamed from: a  reason: collision with root package name */
    public final String f24003a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f24004b;

    /* renamed from: c  reason: collision with root package name */
    public final long f24005c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24006d;

    /* renamed from: e  reason: collision with root package name */
    public final String f24007e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24008f;

    /* renamed from: g  reason: collision with root package name */
    public final String f24009g;

    /* renamed from: h  reason: collision with root package name */
    public final String f24010h;

    /* renamed from: i  reason: collision with root package name */
    public final InterfaceC2861a0 f24011i;

    /* renamed from: j  reason: collision with root package name */
    public final String f24012j;

    /* renamed from: k  reason: collision with root package name */
    public final Map f24013k;

    /* renamed from: l  reason: collision with root package name */
    public final Boolean f24014l;

    /* renamed from: m  reason: collision with root package name */
    public final WatermarkData f24015m;

    /* renamed from: n  reason: collision with root package name */
    public final AdQualityControl f24016n;

    /* renamed from: o  reason: collision with root package name */
    public final byte f24017o;

    /* renamed from: p  reason: collision with root package name */
    public final Set f24018p;

    /* renamed from: q  reason: collision with root package name */
    public final String f24019q;

    /* renamed from: r  reason: collision with root package name */
    public final boolean f24020r;

    /* renamed from: s  reason: collision with root package name */
    public final String f24021s;

    /* renamed from: t  reason: collision with root package name */
    public final C2989hc f24022t;

    /* renamed from: u  reason: collision with root package name */
    public final InterfaceC3269z5 f24023u;

    /* renamed from: v  reason: collision with root package name */
    public final long f24024v;

    public Q(String str, boolean z10, long j10, boolean z11, String str2, String str3, String str4, String str5, InterfaceC2861a0 interfaceC2861a0, String str6, Map map, Boolean bool, WatermarkData watermarkData, AdQualityControl adQualityControl, byte b10, Set set, String str7, boolean z12, String landingScheme, C2989hc c2989hc, InterfaceC3269z5 interfaceC3269z5, long j11) {
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        this.f24003a = str;
        this.f24004b = z10;
        this.f24005c = j10;
        this.f24006d = z11;
        this.f24007e = str2;
        this.f24008f = str3;
        this.f24009g = str4;
        this.f24010h = str5;
        this.f24011i = interfaceC2861a0;
        this.f24012j = str6;
        this.f24013k = map;
        this.f24014l = bool;
        this.f24015m = watermarkData;
        this.f24016n = adQualityControl;
        this.f24017o = b10;
        this.f24018p = set;
        this.f24019q = str7;
        this.f24020r = z12;
        this.f24021s = landingScheme;
        this.f24022t = c2989hc;
        this.f24023u = interfaceC3269z5;
        this.f24024v = j11;
    }

    public static Q a(Q q10, C2989hc c2989hc, int i10) {
        WatermarkData watermarkData;
        C2989hc c2989hc2;
        String str = q10.f24003a;
        boolean z10 = q10.f24004b;
        long j10 = q10.f24005c;
        boolean z11 = q10.f24006d;
        String str2 = q10.f24007e;
        String str3 = q10.f24008f;
        String str4 = q10.f24009g;
        String str5 = q10.f24010h;
        String str6 = q10.f24012j;
        Map map = q10.f24013k;
        Boolean bool = q10.f24014l;
        if ((i10 & 4096) != 0) {
            watermarkData = q10.f24015m;
        } else {
            watermarkData = null;
        }
        WatermarkData watermarkData2 = watermarkData;
        AdQualityControl adQualityControl = q10.f24016n;
        byte b10 = q10.f24017o;
        Set set = q10.f24018p;
        String str7 = q10.f24019q;
        boolean z12 = q10.f24020r;
        String landingScheme = q10.f24021s;
        if ((i10 & 524288) != 0) {
            c2989hc2 = q10.f24022t;
        } else {
            c2989hc2 = c2989hc;
        }
        InterfaceC3269z5 interfaceC3269z5 = q10.f24023u;
        long j11 = q10.f24024v;
        Intrinsics.checkNotNullParameter(landingScheme, "landingScheme");
        return new Q(str, z10, j10, z11, str2, str3, str4, str5, null, str6, map, bool, watermarkData2, adQualityControl, b10, set, str7, z12, landingScheme, c2989hc2, interfaceC3269z5, j11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Q)) {
            return false;
        }
        Q q10 = (Q) obj;
        if (Intrinsics.areEqual(this.f24003a, q10.f24003a) && this.f24004b == q10.f24004b && this.f24005c == q10.f24005c && this.f24006d == q10.f24006d && Intrinsics.areEqual(this.f24007e, q10.f24007e) && Intrinsics.areEqual(this.f24008f, q10.f24008f) && Intrinsics.areEqual(this.f24009g, q10.f24009g) && Intrinsics.areEqual(this.f24010h, q10.f24010h) && Intrinsics.areEqual(this.f24011i, q10.f24011i) && Intrinsics.areEqual(this.f24012j, q10.f24012j) && Intrinsics.areEqual(this.f24013k, q10.f24013k) && Intrinsics.areEqual(this.f24014l, q10.f24014l) && Intrinsics.areEqual(this.f24015m, q10.f24015m) && Intrinsics.areEqual(this.f24016n, q10.f24016n) && this.f24017o == q10.f24017o && Intrinsics.areEqual(this.f24018p, q10.f24018p) && Intrinsics.areEqual(this.f24019q, q10.f24019q) && this.f24020r == q10.f24020r && Intrinsics.areEqual(this.f24021s, q10.f24021s) && Intrinsics.areEqual(this.f24022t, q10.f24022t) && Intrinsics.areEqual(this.f24023u, q10.f24023u) && this.f24024v == q10.f24024v) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
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
        String str = this.f24003a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        boolean z10 = this.f24004b;
        int i12 = 1;
        int i13 = z10;
        if (z10 != 0) {
            i13 = 1;
        }
        int hashCode15 = (Long.hashCode(this.f24005c) + ((i11 + i13) * 31)) * 31;
        boolean z11 = this.f24006d;
        int i14 = z11;
        if (z11 != 0) {
            i14 = 1;
        }
        int i15 = (hashCode15 + i14) * 31;
        String str2 = this.f24007e;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i16 = (i15 + hashCode2) * 31;
        String str3 = this.f24008f;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i17 = (i16 + hashCode3) * 31;
        String str4 = this.f24009g;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i18 = (i17 + hashCode4) * 31;
        String str5 = this.f24010h;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int i19 = (i18 + hashCode5) * 31;
        InterfaceC2861a0 interfaceC2861a0 = this.f24011i;
        if (interfaceC2861a0 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = interfaceC2861a0.hashCode();
        }
        int i20 = (i19 + hashCode6) * 31;
        String str6 = this.f24012j;
        if (str6 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str6.hashCode();
        }
        int i21 = (i20 + hashCode7) * 31;
        Map map = this.f24013k;
        if (map == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = map.hashCode();
        }
        int i22 = (i21 + hashCode8) * 31;
        Boolean bool = this.f24014l;
        if (bool == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = bool.hashCode();
        }
        int i23 = (i22 + hashCode9) * 31;
        WatermarkData watermarkData = this.f24015m;
        if (watermarkData == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = watermarkData.hashCode();
        }
        int i24 = (i23 + hashCode10) * 31;
        AdQualityControl adQualityControl = this.f24016n;
        if (adQualityControl == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = adQualityControl.hashCode();
        }
        int hashCode16 = (Byte.hashCode(this.f24017o) + ((i24 + hashCode11) * 31)) * 31;
        Set set = this.f24018p;
        if (set == null) {
            hashCode12 = 0;
        } else {
            hashCode12 = set.hashCode();
        }
        int i25 = (hashCode16 + hashCode12) * 31;
        String str7 = this.f24019q;
        if (str7 == null) {
            hashCode13 = 0;
        } else {
            hashCode13 = str7.hashCode();
        }
        int i26 = (i25 + hashCode13) * 31;
        boolean z12 = this.f24020r;
        if (!z12) {
            i12 = z12 ? 1 : 0;
        }
        int hashCode17 = (this.f24021s.hashCode() + ((i26 + i12) * 31)) * 31;
        C2989hc c2989hc = this.f24022t;
        if (c2989hc == null) {
            hashCode14 = 0;
        } else {
            hashCode14 = c2989hc.hashCode();
        }
        int i27 = (hashCode17 + hashCode14) * 31;
        InterfaceC3269z5 interfaceC3269z5 = this.f24023u;
        if (interfaceC3269z5 != null) {
            i10 = interfaceC3269z5.hashCode();
        }
        return Long.hashCode(this.f24024v) + ((i27 + i10) * 31);
    }

    public final String toString() {
        return "AdMetaData(adType=" + this.f24003a + ", isImmersiveMode=" + this.f24004b + ", placementId=" + this.f24005c + ", allowAutoRedirection=" + this.f24006d + ", creativeId=" + this.f24007e + ", creativeType=" + this.f24008f + ", markupTypeAdUnit=" + this.f24009g + ", adSize=" + this.f24010h + ", adPodHandler=" + this.f24011i + ", contentURL=" + this.f24012j + ", telemetryManagerMap=" + this.f24013k + ", isHardwareAccelerationDisabled=" + this.f24014l + ", watermarkData=" + this.f24015m + ", adQualityControl=" + this.f24016n + ", placementType=" + ((int) this.f24017o) + ", viewabilityTrackers=" + this.f24018p + ", impressionId=" + this.f24019q + ", isInAppBrowser=" + this.f24020r + ", landingScheme=" + this.f24021s + ", renderViewMetaData=" + this.f24022t + ", logger=" + this.f24023u + ", viewTouchTimestamp=" + this.f24024v + ')';
    }

    public /* synthetic */ Q(String str, boolean z10, long j10, boolean z11, String str2, String str3, String str4, String str5, S0 s02, String str6, LinkedHashMap linkedHashMap, Boolean bool, WatermarkData watermarkData, AdQualityControl adQualityControl, byte b10, Set set, String str7, String str8, C2989hc c2989hc, InterfaceC3269z5 interfaceC3269z5, int i10) {
        this(str, z10, j10, z11, str2, (i10 & 32) != 0 ? null : str3, str4, (i10 & 128) != 0 ? null : str5, (i10 & 256) != 0 ? null : s02, (i10 & 512) != 0 ? null : str6, (i10 & 1024) != 0 ? null : linkedHashMap, bool, (i10 & 4096) != 0 ? null : watermarkData, adQualityControl, b10, set, str7, false, (262144 & i10) != 0 ? "DEFAULT" : str8, (i10 & 524288) != 0 ? null : c2989hc, interfaceC3269z5, -1L);
    }
}
