package com.startshorts.androidplayer.bean.shorts;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsListNewBean.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsListNewBean {
    @NotNull
    private List<EpisodeDetail> dramaListResponseList;
    @Nullable
    private Boolean hasTrailer;

    public ShortsListNewBean() {
        this(null, null, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShortsListNewBean copy$default(ShortsListNewBean shortsListNewBean, List list, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = shortsListNewBean.dramaListResponseList;
        }
        if ((i10 & 2) != 0) {
            bool = shortsListNewBean.hasTrailer;
        }
        return shortsListNewBean.copy(list, bool);
    }

    @NotNull
    public final List<EpisodeDetail> component1() {
        return this.dramaListResponseList;
    }

    @Nullable
    public final Boolean component2() {
        return this.hasTrailer;
    }

    @NotNull
    public final ShortsListNewBean copy(@NotNull List<EpisodeDetail> dramaListResponseList, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(dramaListResponseList, "dramaListResponseList");
        return new ShortsListNewBean(dramaListResponseList, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortsListNewBean)) {
            return false;
        }
        ShortsListNewBean shortsListNewBean = (ShortsListNewBean) obj;
        if (Intrinsics.areEqual(this.dramaListResponseList, shortsListNewBean.dramaListResponseList) && Intrinsics.areEqual(this.hasTrailer, shortsListNewBean.hasTrailer)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<EpisodeDetail> getDramaListResponseList() {
        return this.dramaListResponseList;
    }

    @Nullable
    public final Boolean getHasTrailer() {
        return this.hasTrailer;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.dramaListResponseList.hashCode() * 31;
        Boolean bool = this.hasTrailer;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final void setDramaListResponseList(@NotNull List<EpisodeDetail> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.dramaListResponseList = list;
    }

    public final void setHasTrailer(@Nullable Boolean bool) {
        this.hasTrailer = bool;
    }

    @NotNull
    public String toString() {
        return "ShortsListNewBean(dramaListResponseList=" + this.dramaListResponseList + ", hasTrailer=" + this.hasTrailer + ')';
    }

    public ShortsListNewBean(@NotNull List<EpisodeDetail> dramaListResponseList, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(dramaListResponseList, "dramaListResponseList");
        this.dramaListResponseList = dramaListResponseList;
        this.hasTrailer = bool;
    }

    public /* synthetic */ ShortsListNewBean(List list, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new ArrayList() : list, (i10 & 2) != 0 ? Boolean.FALSE : bool);
    }
}
