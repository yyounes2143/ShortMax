package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayListDiscoverCategory.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayListDiscoverCategory extends SelectableItem {
    @NotNull
    private final String categoryId;
    @NotNull
    private String categoryName;
    @Nullable
    private List<DiscoverCategoryShorts> shortPlayResponseList;

    public /* synthetic */ PlayListDiscoverCategory(String str, String str2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? null : list);
    }

    @NotNull
    public final String getCategoryId() {
        return this.categoryId;
    }

    @NotNull
    public final String getCategoryName() {
        return this.categoryName;
    }

    @Nullable
    public final List<DiscoverCategoryShorts> getShortPlayResponseList() {
        return this.shortPlayResponseList;
    }

    public final void setCategoryName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.categoryName = str;
    }

    public final void setShortPlayResponseList(@Nullable List<DiscoverCategoryShorts> list) {
        this.shortPlayResponseList = list;
    }

    public PlayListDiscoverCategory(@NotNull String categoryId, @NotNull String categoryName, @Nullable List<DiscoverCategoryShorts> list) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        Intrinsics.checkNotNullParameter(categoryName, "categoryName");
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.shortPlayResponseList = list;
    }
}
