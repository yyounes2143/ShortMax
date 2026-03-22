package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsDetail.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsDetail extends BaseShorts {
    @Nullable
    private Boolean hasTrailer = Boolean.FALSE;
    @Nullable
    private List<ShortsLabel> labelResponseList;

    @Nullable
    public final Boolean getHasTrailer() {
        return this.hasTrailer;
    }

    @Nullable
    public final List<ShortsLabel> getLabelResponseList() {
        return this.labelResponseList;
    }

    public final void setHasTrailer(@Nullable Boolean bool) {
        this.hasTrailer = bool;
    }

    public final void setLabelResponseList(@Nullable List<ShortsLabel> list) {
        this.labelResponseList = list;
    }

    @Override // com.startshorts.androidplayer.bean.shorts.BaseShorts
    @NotNull
    public String toString() {
        return "ShortsDetail(labelResponseList=" + this.labelResponseList + ")," + super.toString();
    }
}
