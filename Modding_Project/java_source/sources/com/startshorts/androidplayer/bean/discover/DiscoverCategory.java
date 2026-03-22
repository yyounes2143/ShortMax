package com.startshorts.androidplayer.bean.discover;

import android.graphics.Typeface;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.a;
/* compiled from: DiscoverCategory.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverCategory extends SelectableItem {
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f38114id;
    @NotNull
    private String name;

    public DiscoverCategory(@NotNull String id2, @NotNull String name) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f38114id = id2;
        this.name = name;
    }

    @Nullable
    public final Typeface getDiscoverTextTypeFace(boolean z10) {
        if (z10) {
            return a.f70794a.k();
        }
        return a.f70794a.i();
    }

    @NotNull
    public final String getId() {
        return this.f38114id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }
}
