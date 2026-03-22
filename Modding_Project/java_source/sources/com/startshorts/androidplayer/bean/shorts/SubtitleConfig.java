package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubtitleData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubtitleConfig {
    @Nullable
    private Boolean subtitleEnable;
    @Nullable
    private List<SubtitleFile> subtitleList;
    @Nullable
    private SubtitleStyle subtitleStyle;

    public SubtitleConfig() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubtitleConfig copy$default(SubtitleConfig subtitleConfig, Boolean bool, List list, SubtitleStyle subtitleStyle, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = subtitleConfig.subtitleEnable;
        }
        if ((i10 & 2) != 0) {
            list = subtitleConfig.subtitleList;
        }
        if ((i10 & 4) != 0) {
            subtitleStyle = subtitleConfig.subtitleStyle;
        }
        return subtitleConfig.copy(bool, list, subtitleStyle);
    }

    @Nullable
    public final Boolean component1() {
        return this.subtitleEnable;
    }

    @Nullable
    public final List<SubtitleFile> component2() {
        return this.subtitleList;
    }

    @Nullable
    public final SubtitleStyle component3() {
        return this.subtitleStyle;
    }

    @NotNull
    public final SubtitleConfig copy(@Nullable Boolean bool, @Nullable List<SubtitleFile> list, @Nullable SubtitleStyle subtitleStyle) {
        return new SubtitleConfig(bool, list, subtitleStyle);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubtitleConfig)) {
            return false;
        }
        SubtitleConfig subtitleConfig = (SubtitleConfig) obj;
        if (Intrinsics.areEqual(this.subtitleEnable, subtitleConfig.subtitleEnable) && Intrinsics.areEqual(this.subtitleList, subtitleConfig.subtitleList) && Intrinsics.areEqual(this.subtitleStyle, subtitleConfig.subtitleStyle)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Boolean getSubtitleEnable() {
        return this.subtitleEnable;
    }

    @Nullable
    public final List<SubtitleFile> getSubtitleList() {
        return this.subtitleList;
    }

    @Nullable
    public final SubtitleStyle getSubtitleStyle() {
        return this.subtitleStyle;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Boolean bool = this.subtitleEnable;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = hashCode * 31;
        List<SubtitleFile> list = this.subtitleList;
        if (list == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        SubtitleStyle subtitleStyle = this.subtitleStyle;
        if (subtitleStyle != null) {
            i10 = subtitleStyle.hashCode();
        }
        return i12 + i10;
    }

    public final boolean isEnable() {
        int i10;
        if (!Intrinsics.areEqual(this.subtitleEnable, Boolean.TRUE)) {
            return false;
        }
        List<SubtitleFile> list = this.subtitleList;
        if (list != null) {
            i10 = list.size();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            return false;
        }
        return true;
    }

    public final void setSubtitleEnable(@Nullable Boolean bool) {
        this.subtitleEnable = bool;
    }

    public final void setSubtitleList(@Nullable List<SubtitleFile> list) {
        this.subtitleList = list;
    }

    public final void setSubtitleStyle(@Nullable SubtitleStyle subtitleStyle) {
        this.subtitleStyle = subtitleStyle;
    }

    @NotNull
    public String toString() {
        return "SubtitleConfig(subtitleEnable=" + this.subtitleEnable + ", subtitleList=" + this.subtitleList + ", subtitleStyle=" + this.subtitleStyle + ')';
    }

    public SubtitleConfig(@Nullable Boolean bool, @Nullable List<SubtitleFile> list, @Nullable SubtitleStyle subtitleStyle) {
        this.subtitleEnable = bool;
        this.subtitleList = list;
        this.subtitleStyle = subtitleStyle;
    }

    public /* synthetic */ SubtitleConfig(Boolean bool, List list, SubtitleStyle subtitleStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Boolean.FALSE : bool, (i10 & 2) != 0 ? null : list, (i10 & 4) != 0 ? null : subtitleStyle);
    }
}
