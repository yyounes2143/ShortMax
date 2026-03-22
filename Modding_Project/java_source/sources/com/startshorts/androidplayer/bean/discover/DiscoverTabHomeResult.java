package com.startshorts.androidplayer.bean.discover;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverTabHomeResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverTabHomeResult {
    @Nullable
    private Integer autoPlay;
    @Nullable
    private Integer dramaRepositoryStyle;
    @Nullable
    private DiscoverTabPage tabPageResponse;
    @Nullable
    private List<DiscoverTab> tabResponseList;

    public DiscoverTabHomeResult() {
        this(null, null, null, null, 15, null);
    }

    @Nullable
    public final Integer getAutoPlay() {
        return this.autoPlay;
    }

    @Nullable
    public final Integer getDramaRepositoryStyle() {
        return this.dramaRepositoryStyle;
    }

    @Nullable
    public final DiscoverTabPage getTabPageResponse() {
        return this.tabPageResponse;
    }

    @Nullable
    public final List<DiscoverTab> getTabResponseList() {
        return this.tabResponseList;
    }

    public final void setAutoPlay(@Nullable Integer num) {
        this.autoPlay = num;
    }

    public final void setDramaRepositoryStyle(@Nullable Integer num) {
        this.dramaRepositoryStyle = num;
    }

    public final void setTabPageResponse(@Nullable DiscoverTabPage discoverTabPage) {
        this.tabPageResponse = discoverTabPage;
    }

    public final void setTabResponseList(@Nullable List<DiscoverTab> list) {
        this.tabResponseList = list;
    }

    public DiscoverTabHomeResult(@Nullable Integer num, @Nullable Integer num2, @Nullable List<DiscoverTab> list, @Nullable DiscoverTabPage discoverTabPage) {
        this.dramaRepositoryStyle = num;
        this.autoPlay = num2;
        this.tabResponseList = list;
        this.tabPageResponse = discoverTabPage;
    }

    public /* synthetic */ DiscoverTabHomeResult(Integer num, Integer num2, List list, DiscoverTabPage discoverTabPage, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : num2, (i10 & 4) != 0 ? null : list, (i10 & 8) != 0 ? null : discoverTabPage);
    }
}
