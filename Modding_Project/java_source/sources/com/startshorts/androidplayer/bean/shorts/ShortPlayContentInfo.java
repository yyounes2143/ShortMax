package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortPlayContentInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortPlayContentInfo {
    @Nullable
    private final String classNum;
    @Nullable
    private final List<ShortContentRatingInfo> contentDescriptionResponseList;
    @Nullable
    private final ShortContentRatingInfo contentRatingResponse;
    @Nullable
    private final String countryCode;
    @Nullable
    private final Integer shortPlayId;

    public ShortPlayContentInfo(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable ShortContentRatingInfo shortContentRatingInfo, @Nullable List<ShortContentRatingInfo> list) {
        this.shortPlayId = num;
        this.countryCode = str;
        this.classNum = str2;
        this.contentRatingResponse = shortContentRatingInfo;
        this.contentDescriptionResponseList = list;
    }

    public static /* synthetic */ ShortPlayContentInfo copy$default(ShortPlayContentInfo shortPlayContentInfo, Integer num, String str, String str2, ShortContentRatingInfo shortContentRatingInfo, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = shortPlayContentInfo.shortPlayId;
        }
        if ((i10 & 2) != 0) {
            str = shortPlayContentInfo.countryCode;
        }
        String str3 = str;
        if ((i10 & 4) != 0) {
            str2 = shortPlayContentInfo.classNum;
        }
        String str4 = str2;
        if ((i10 & 8) != 0) {
            shortContentRatingInfo = shortPlayContentInfo.contentRatingResponse;
        }
        ShortContentRatingInfo shortContentRatingInfo2 = shortContentRatingInfo;
        List<ShortContentRatingInfo> list2 = list;
        if ((i10 & 16) != 0) {
            list2 = shortPlayContentInfo.contentDescriptionResponseList;
        }
        return shortPlayContentInfo.copy(num, str3, str4, shortContentRatingInfo2, list2);
    }

    @Nullable
    public final Integer component1() {
        return this.shortPlayId;
    }

    @Nullable
    public final String component2() {
        return this.countryCode;
    }

    @Nullable
    public final String component3() {
        return this.classNum;
    }

    @Nullable
    public final ShortContentRatingInfo component4() {
        return this.contentRatingResponse;
    }

    @Nullable
    public final List<ShortContentRatingInfo> component5() {
        return this.contentDescriptionResponseList;
    }

    @NotNull
    public final ShortPlayContentInfo copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable ShortContentRatingInfo shortContentRatingInfo, @Nullable List<ShortContentRatingInfo> list) {
        return new ShortPlayContentInfo(num, str, str2, shortContentRatingInfo, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortPlayContentInfo)) {
            return false;
        }
        ShortPlayContentInfo shortPlayContentInfo = (ShortPlayContentInfo) obj;
        if (Intrinsics.areEqual(this.shortPlayId, shortPlayContentInfo.shortPlayId) && Intrinsics.areEqual(this.countryCode, shortPlayContentInfo.countryCode) && Intrinsics.areEqual(this.classNum, shortPlayContentInfo.classNum) && Intrinsics.areEqual(this.contentRatingResponse, shortPlayContentInfo.contentRatingResponse) && Intrinsics.areEqual(this.contentDescriptionResponseList, shortPlayContentInfo.contentDescriptionResponseList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getClassNum() {
        return this.classNum;
    }

    @Nullable
    public final List<ShortContentRatingInfo> getContentDescriptionResponseList() {
        return this.contentDescriptionResponseList;
    }

    @Nullable
    public final ShortContentRatingInfo getContentRatingResponse() {
        return this.contentRatingResponse;
    }

    @Nullable
    public final String getCountryCode() {
        return this.countryCode;
    }

    @Nullable
    public final Integer getShortPlayId() {
        return this.shortPlayId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        Integer num = this.shortPlayId;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.countryCode;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.classNum;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        ShortContentRatingInfo shortContentRatingInfo = this.contentRatingResponse;
        if (shortContentRatingInfo == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = shortContentRatingInfo.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        List<ShortContentRatingInfo> list = this.contentDescriptionResponseList;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i14 + i10;
    }

    @NotNull
    public String toString() {
        return "ShortPlayContentInfo(shortPlayId=" + this.shortPlayId + ", countryCode=" + this.countryCode + ", classNum=" + this.classNum + ", contentRatingResponse=" + this.contentRatingResponse + ", contentDescriptionResponseList=" + this.contentDescriptionResponseList + ')';
    }
}
