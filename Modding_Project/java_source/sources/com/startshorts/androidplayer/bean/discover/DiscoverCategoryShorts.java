package com.startshorts.androidplayer.bean.discover;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverCategoryShorts.kt */
@Metadata
/* loaded from: classes6.dex */
public class DiscoverCategoryShorts extends DiscoverShorts {
    @Nullable
    private String categoryID;
    @Nullable
    private String categoryName;

    @Nullable
    public final String getCategoryID() {
        return this.categoryID;
    }

    @Nullable
    public final String getCategoryName() {
        return this.categoryName;
    }

    public final void setCategoryID(@Nullable String str) {
        this.categoryID = str;
    }

    public final void setCategoryName(@Nullable String str) {
        this.categoryName = str;
    }
}
