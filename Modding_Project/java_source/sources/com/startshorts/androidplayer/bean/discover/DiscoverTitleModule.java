package com.startshorts.androidplayer.bean.discover;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverTitleModule.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverTitleModule extends DiscoverModule {
    @Nullable
    private Integer backgroundRes;
    @Nullable
    private String bannerId;
    private final int contentModuleStyle;
    @Nullable
    private Integer iconRes;
    private boolean isShowMore;
    @NotNull
    private String title;

    public /* synthetic */ DiscoverTitleModule(String str, String str2, boolean z10, int i10, Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z10, i10, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : num2);
    }

    @Nullable
    public final Integer getBackgroundRes() {
        return this.backgroundRes;
    }

    @Override // com.startshorts.androidplayer.bean.discover.DiscoverModule
    @Nullable
    public String getBannerId() {
        return this.bannerId;
    }

    public final int getContentModuleStyle() {
        return this.contentModuleStyle;
    }

    @Nullable
    public final Integer getIconRes() {
        return this.iconRes;
    }

    @Override // com.startshorts.androidplayer.bean.discover.DiscoverModule
    @NotNull
    public String getTitle() {
        return this.title;
    }

    @Override // com.startshorts.androidplayer.bean.discover.DiscoverModule
    public boolean isShowMore() {
        return this.isShowMore;
    }

    public final void setBackgroundRes(@Nullable Integer num) {
        this.backgroundRes = num;
    }

    @Override // com.startshorts.androidplayer.bean.discover.DiscoverModule
    public void setBannerId(@Nullable String str) {
        this.bannerId = str;
    }

    public final void setIconRes(@Nullable Integer num) {
        this.iconRes = num;
    }

    @Override // com.startshorts.androidplayer.bean.discover.DiscoverModule
    public void setShowMore(boolean z10) {
        this.isShowMore = z10;
    }

    @Override // com.startshorts.androidplayer.bean.discover.DiscoverModule
    public void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverTitleModule(@Nullable String str, @NotNull String title, boolean z10, int i10, @Nullable Integer num, @Nullable Integer num2) {
        super(-11, title, null, null, false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388604, null);
        Intrinsics.checkNotNullParameter(title, "title");
        this.bannerId = str;
        this.title = title;
        this.isShowMore = z10;
        this.contentModuleStyle = i10;
        this.iconRes = num;
        this.backgroundRes = num2;
    }
}
