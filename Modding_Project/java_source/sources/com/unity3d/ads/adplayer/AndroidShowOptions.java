package com.unity3d.ads.adplayer;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidShowOptions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidShowOptions implements ShowOptions {
    @NotNull
    private final WeakReference<Activity> activity;
    private final boolean isOfferwallAd;
    private final boolean isScarAd;
    @Nullable
    private final String offerwallPlacementName;
    @Nullable
    private final String placementId;
    @Nullable
    private final String scarAdString;
    @Nullable
    private final String scarAdUnitId;
    @Nullable
    private final String scarQueryId;
    @Nullable
    private final Map<String, Object> unityAdsShowOptions;

    public AndroidShowOptions(@NotNull WeakReference<Activity> activity, @Nullable Map<String, ? extends Object> map, @Nullable String str, boolean z10, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z11, @Nullable String str5) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
        this.unityAdsShowOptions = map;
        this.placementId = str;
        this.isScarAd = z10;
        this.scarQueryId = str2;
        this.scarAdString = str3;
        this.scarAdUnitId = str4;
        this.isOfferwallAd = z11;
        this.offerwallPlacementName = str5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AndroidShowOptions copy$default(AndroidShowOptions androidShowOptions, WeakReference weakReference, Map map, String str, boolean z10, String str2, String str3, String str4, boolean z11, String str5, int i10, Object obj) {
        WeakReference<Activity> weakReference2;
        Map<String, ? extends Object> map2;
        String str6;
        boolean z12;
        String str7;
        String str8;
        String str9;
        boolean z13;
        String str10;
        if ((i10 & 1) != 0) {
            weakReference2 = androidShowOptions.activity;
        } else {
            weakReference2 = weakReference;
        }
        if ((i10 & 2) != 0) {
            map2 = androidShowOptions.unityAdsShowOptions;
        } else {
            map2 = map;
        }
        if ((i10 & 4) != 0) {
            str6 = androidShowOptions.placementId;
        } else {
            str6 = str;
        }
        if ((i10 & 8) != 0) {
            z12 = androidShowOptions.isScarAd;
        } else {
            z12 = z10;
        }
        if ((i10 & 16) != 0) {
            str7 = androidShowOptions.scarQueryId;
        } else {
            str7 = str2;
        }
        if ((i10 & 32) != 0) {
            str8 = androidShowOptions.scarAdString;
        } else {
            str8 = str3;
        }
        if ((i10 & 64) != 0) {
            str9 = androidShowOptions.scarAdUnitId;
        } else {
            str9 = str4;
        }
        if ((i10 & 128) != 0) {
            z13 = androidShowOptions.isOfferwallAd;
        } else {
            z13 = z11;
        }
        if ((i10 & 256) != 0) {
            str10 = androidShowOptions.offerwallPlacementName;
        } else {
            str10 = str5;
        }
        return androidShowOptions.copy(weakReference2, map2, str6, z12, str7, str8, str9, z13, str10);
    }

    @NotNull
    public final WeakReference<Activity> component1() {
        return this.activity;
    }

    @Nullable
    public final Map<String, Object> component2() {
        return this.unityAdsShowOptions;
    }

    @Nullable
    public final String component3() {
        return this.placementId;
    }

    public final boolean component4() {
        return this.isScarAd;
    }

    @Nullable
    public final String component5() {
        return this.scarQueryId;
    }

    @Nullable
    public final String component6() {
        return this.scarAdString;
    }

    @Nullable
    public final String component7() {
        return this.scarAdUnitId;
    }

    public final boolean component8() {
        return this.isOfferwallAd;
    }

    @Nullable
    public final String component9() {
        return this.offerwallPlacementName;
    }

    @NotNull
    public final AndroidShowOptions copy(@NotNull WeakReference<Activity> activity, @Nullable Map<String, ? extends Object> map, @Nullable String str, boolean z10, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z11, @Nullable String str5) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return new AndroidShowOptions(activity, map, str, z10, str2, str3, str4, z11, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidShowOptions)) {
            return false;
        }
        AndroidShowOptions androidShowOptions = (AndroidShowOptions) obj;
        if (Intrinsics.areEqual(this.activity, androidShowOptions.activity) && Intrinsics.areEqual(this.unityAdsShowOptions, androidShowOptions.unityAdsShowOptions) && Intrinsics.areEqual(this.placementId, androidShowOptions.placementId) && this.isScarAd == androidShowOptions.isScarAd && Intrinsics.areEqual(this.scarQueryId, androidShowOptions.scarQueryId) && Intrinsics.areEqual(this.scarAdString, androidShowOptions.scarAdString) && Intrinsics.areEqual(this.scarAdUnitId, androidShowOptions.scarAdUnitId) && this.isOfferwallAd == androidShowOptions.isOfferwallAd && Intrinsics.areEqual(this.offerwallPlacementName, androidShowOptions.offerwallPlacementName)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final WeakReference<Activity> getActivity() {
        return this.activity;
    }

    @Nullable
    public final String getOfferwallPlacementName() {
        return this.offerwallPlacementName;
    }

    @Nullable
    public final String getPlacementId() {
        return this.placementId;
    }

    @Nullable
    public final String getScarAdString() {
        return this.scarAdString;
    }

    @Nullable
    public final String getScarAdUnitId() {
        return this.scarAdUnitId;
    }

    @Nullable
    public final String getScarQueryId() {
        return this.scarQueryId;
    }

    @Nullable
    public final Map<String, Object> getUnityAdsShowOptions() {
        return this.unityAdsShowOptions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = this.activity.hashCode() * 31;
        Map<String, Object> map = this.unityAdsShowOptions;
        int i10 = 0;
        if (map == null) {
            hashCode = 0;
        } else {
            hashCode = map.hashCode();
        }
        int i11 = (hashCode6 + hashCode) * 31;
        String str = this.placementId;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        boolean z10 = this.isScarAd;
        int i13 = 1;
        int i14 = z10;
        if (z10 != 0) {
            i14 = 1;
        }
        int i15 = (i12 + i14) * 31;
        String str2 = this.scarQueryId;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i16 = (i15 + hashCode3) * 31;
        String str3 = this.scarAdString;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i17 = (i16 + hashCode4) * 31;
        String str4 = this.scarAdUnitId;
        if (str4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str4.hashCode();
        }
        int i18 = (i17 + hashCode5) * 31;
        boolean z11 = this.isOfferwallAd;
        if (!z11) {
            i13 = z11 ? 1 : 0;
        }
        int i19 = (i18 + i13) * 31;
        String str5 = this.offerwallPlacementName;
        if (str5 != null) {
            i10 = str5.hashCode();
        }
        return i19 + i10;
    }

    public final boolean isOfferwallAd() {
        return this.isOfferwallAd;
    }

    public final boolean isScarAd() {
        return this.isScarAd;
    }

    @NotNull
    public String toString() {
        return "AndroidShowOptions(activity=" + this.activity + ", unityAdsShowOptions=" + this.unityAdsShowOptions + ", placementId=" + this.placementId + ", isScarAd=" + this.isScarAd + ", scarQueryId=" + this.scarQueryId + ", scarAdString=" + this.scarAdString + ", scarAdUnitId=" + this.scarAdUnitId + ", isOfferwallAd=" + this.isOfferwallAd + ", offerwallPlacementName=" + this.offerwallPlacementName + ')';
    }

    public /* synthetic */ AndroidShowOptions(WeakReference weakReference, Map map, String str, boolean z10, String str2, String str3, String str4, boolean z11, String str5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(weakReference, map, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : str4, (i10 & 128) != 0 ? false : z11, (i10 & 256) != 0 ? null : str5);
    }
}
