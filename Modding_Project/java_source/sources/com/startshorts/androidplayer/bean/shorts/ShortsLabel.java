package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsLabel.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsLabel {
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private Integer f38131id;
    @Nullable
    private final String labelName;
    @Nullable
    private Integer rankingId;

    public ShortsLabel() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ ShortsLabel copy$default(ShortsLabel shortsLabel, Integer num, String str, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = shortsLabel.f38131id;
        }
        if ((i10 & 2) != 0) {
            str = shortsLabel.labelName;
        }
        if ((i10 & 4) != 0) {
            num2 = shortsLabel.rankingId;
        }
        return shortsLabel.copy(num, str, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.f38131id;
    }

    @Nullable
    public final String component2() {
        return this.labelName;
    }

    @Nullable
    public final Integer component3() {
        return this.rankingId;
    }

    @NotNull
    public final ShortsLabel copy(@Nullable Integer num, @Nullable String str, @Nullable Integer num2) {
        return new ShortsLabel(num, str, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortsLabel)) {
            return false;
        }
        ShortsLabel shortsLabel = (ShortsLabel) obj;
        if (Intrinsics.areEqual(this.f38131id, shortsLabel.f38131id) && Intrinsics.areEqual(this.labelName, shortsLabel.labelName) && Intrinsics.areEqual(this.rankingId, shortsLabel.rankingId)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f38131id;
    }

    @Nullable
    public final String getLabelName() {
        return this.labelName;
    }

    @Nullable
    public final Integer getRankingId() {
        return this.rankingId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.f38131id;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.labelName;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Integer num2 = this.rankingId;
        if (num2 != null) {
            i10 = num2.hashCode();
        }
        return i12 + i10;
    }

    public final void setId(@Nullable Integer num) {
        this.f38131id = num;
    }

    public final void setRankingId(@Nullable Integer num) {
        this.rankingId = num;
    }

    @NotNull
    public String toString() {
        return "ShortsLabel(id=" + this.f38131id + ", labelName=" + this.labelName + ", rankingId=" + this.rankingId + ')';
    }

    public ShortsLabel(@Nullable Integer num, @Nullable String str, @Nullable Integer num2) {
        this.f38131id = num;
        this.labelName = str;
        this.rankingId = num2;
    }

    public /* synthetic */ ShortsLabel(Integer num, String str, Integer num2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : num2);
    }
}
