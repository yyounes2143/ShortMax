package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortContentRatingInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortContentRatingInfo {
    @Nullable
    private final String descriptionText;
    @Nullable
    private final String icon;
    @Nullable
    private final String ratingsAbbreviation;
    @Nullable
    private final Integer videoRatingId;

    public ShortContentRatingInfo(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.videoRatingId = num;
        this.ratingsAbbreviation = str;
        this.descriptionText = str2;
        this.icon = str3;
    }

    public static /* synthetic */ ShortContentRatingInfo copy$default(ShortContentRatingInfo shortContentRatingInfo, Integer num, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = shortContentRatingInfo.videoRatingId;
        }
        if ((i10 & 2) != 0) {
            str = shortContentRatingInfo.ratingsAbbreviation;
        }
        if ((i10 & 4) != 0) {
            str2 = shortContentRatingInfo.descriptionText;
        }
        if ((i10 & 8) != 0) {
            str3 = shortContentRatingInfo.icon;
        }
        return shortContentRatingInfo.copy(num, str, str2, str3);
    }

    @Nullable
    public final Integer component1() {
        return this.videoRatingId;
    }

    @Nullable
    public final String component2() {
        return this.ratingsAbbreviation;
    }

    @Nullable
    public final String component3() {
        return this.descriptionText;
    }

    @Nullable
    public final String component4() {
        return this.icon;
    }

    @NotNull
    public final ShortContentRatingInfo copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new ShortContentRatingInfo(num, str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortContentRatingInfo)) {
            return false;
        }
        ShortContentRatingInfo shortContentRatingInfo = (ShortContentRatingInfo) obj;
        if (Intrinsics.areEqual(this.videoRatingId, shortContentRatingInfo.videoRatingId) && Intrinsics.areEqual(this.ratingsAbbreviation, shortContentRatingInfo.ratingsAbbreviation) && Intrinsics.areEqual(this.descriptionText, shortContentRatingInfo.descriptionText) && Intrinsics.areEqual(this.icon, shortContentRatingInfo.icon)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getDescriptionText() {
        return this.descriptionText;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getRatingsAbbreviation() {
        return this.ratingsAbbreviation;
    }

    @Nullable
    public final Integer getVideoRatingId() {
        return this.videoRatingId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        Integer num = this.videoRatingId;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.ratingsAbbreviation;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.descriptionText;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str3 = this.icon;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "ShortContentRatingInfo(videoRatingId=" + this.videoRatingId + ", ratingsAbbreviation=" + this.ratingsAbbreviation + ", descriptionText=" + this.descriptionText + ", icon=" + this.icon + ')';
    }
}
