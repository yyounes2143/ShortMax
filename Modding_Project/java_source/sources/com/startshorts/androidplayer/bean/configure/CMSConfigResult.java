package com.startshorts.androidplayer.bean.configure;

import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CMSConfigResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CMSConfigResult {
    @Nullable
    private final int[] abtestIds;
    @Nullable
    private final Boolean isUpdated;
    @Nullable
    private final String key;
    @Nullable
    private final Map<String, String> keyValueMap;
    @Nullable
    private final Map<String, String> paramsConfigMap;
    @Nullable
    private Long updateTime;
    @Nullable
    private final String versionData;

    public CMSConfigResult() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ CMSConfigResult copy$default(CMSConfigResult cMSConfigResult, Boolean bool, Map map, Map map2, String str, String str2, Long l10, int[] iArr, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = cMSConfigResult.isUpdated;
        }
        Map<String, String> map3 = map;
        if ((i10 & 2) != 0) {
            map3 = cMSConfigResult.keyValueMap;
        }
        Map map4 = map3;
        Map<String, String> map5 = map2;
        if ((i10 & 4) != 0) {
            map5 = cMSConfigResult.paramsConfigMap;
        }
        Map map6 = map5;
        if ((i10 & 8) != 0) {
            str = cMSConfigResult.key;
        }
        String str3 = str;
        if ((i10 & 16) != 0) {
            str2 = cMSConfigResult.versionData;
        }
        String str4 = str2;
        if ((i10 & 32) != 0) {
            l10 = cMSConfigResult.updateTime;
        }
        Long l11 = l10;
        if ((i10 & 64) != 0) {
            iArr = cMSConfigResult.abtestIds;
        }
        return cMSConfigResult.copy(bool, map4, map6, str3, str4, l11, iArr);
    }

    @Nullable
    public final Boolean component1() {
        return this.isUpdated;
    }

    @Nullable
    public final Map<String, String> component2() {
        return this.keyValueMap;
    }

    @Nullable
    public final Map<String, String> component3() {
        return this.paramsConfigMap;
    }

    @Nullable
    public final String component4() {
        return this.key;
    }

    @Nullable
    public final String component5() {
        return this.versionData;
    }

    @Nullable
    public final Long component6() {
        return this.updateTime;
    }

    @Nullable
    public final int[] component7() {
        return this.abtestIds;
    }

    @NotNull
    public final CMSConfigResult copy(@Nullable Boolean bool, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable String str, @Nullable String str2, @Nullable Long l10, @Nullable int[] iArr) {
        return new CMSConfigResult(bool, map, map2, str, str2, l10, iArr);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CMSConfigResult)) {
            return false;
        }
        CMSConfigResult cMSConfigResult = (CMSConfigResult) obj;
        if (Intrinsics.areEqual(this.isUpdated, cMSConfigResult.isUpdated) && Intrinsics.areEqual(this.keyValueMap, cMSConfigResult.keyValueMap) && Intrinsics.areEqual(this.paramsConfigMap, cMSConfigResult.paramsConfigMap) && Intrinsics.areEqual(this.key, cMSConfigResult.key) && Intrinsics.areEqual(this.versionData, cMSConfigResult.versionData) && Intrinsics.areEqual(this.updateTime, cMSConfigResult.updateTime) && Intrinsics.areEqual(this.abtestIds, cMSConfigResult.abtestIds)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getABTestIds() {
        int[] iArr = this.abtestIds;
        if (iArr != null && iArr.length != 0) {
            return n.S0(iArr, ",", null, null, 0, null, null, 62, null);
        }
        return "";
    }

    @Nullable
    public final int[] getAbtestIds() {
        return this.abtestIds;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final Map<String, String> getKeyValueMap() {
        return this.keyValueMap;
    }

    @Nullable
    public final Map<String, String> getParamsConfigMap() {
        return this.paramsConfigMap;
    }

    @Nullable
    public final Long getUpdateTime() {
        return this.updateTime;
    }

    @Nullable
    public final String getVersionData() {
        return this.versionData;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        Boolean bool = this.isUpdated;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = hashCode * 31;
        Map<String, String> map = this.keyValueMap;
        if (map == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = map.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Map<String, String> map2 = this.paramsConfigMap;
        if (map2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = map2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str = this.key;
        if (str == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str2 = this.versionData;
        if (str2 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str2.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        Long l10 = this.updateTime;
        if (l10 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = l10.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        int[] iArr = this.abtestIds;
        if (iArr != null) {
            i10 = Arrays.hashCode(iArr);
        }
        return i16 + i10;
    }

    @Nullable
    public final Boolean isUpdated() {
        return this.isUpdated;
    }

    public final void setUpdateTime(@Nullable Long l10) {
        this.updateTime = l10;
    }

    @NotNull
    public String toString() {
        return "CMSConfigResult(isUpdated=" + this.isUpdated + ", keyValueMap=" + this.keyValueMap + ", paramsConfigMap=" + this.paramsConfigMap + ", key=" + this.key + ", versionData=" + this.versionData + ", updateTime=" + this.updateTime + ", abtestIds=" + Arrays.toString(this.abtestIds) + ')';
    }

    public CMSConfigResult(@Nullable Boolean bool, @Nullable Map<String, String> map, @Nullable Map<String, String> map2, @Nullable String str, @Nullable String str2, @Nullable Long l10, @Nullable int[] iArr) {
        this.isUpdated = bool;
        this.keyValueMap = map;
        this.paramsConfigMap = map2;
        this.key = str;
        this.versionData = str2;
        this.updateTime = l10;
        this.abtestIds = iArr;
    }

    public /* synthetic */ CMSConfigResult(Boolean bool, Map map, Map map2, String str, String str2, Long l10, int[] iArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : map, (i10 & 4) != 0 ? null : map2, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : l10, (i10 & 64) != 0 ? null : iArr);
    }
}
