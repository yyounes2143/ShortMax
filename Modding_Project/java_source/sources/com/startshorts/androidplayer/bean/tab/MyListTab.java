package com.startshorts.androidplayer.bean.tab;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MyListTab.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MyListTab extends SelectableItem {
    @NotNull
    private final String name;

    public MyListTab(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }
}
