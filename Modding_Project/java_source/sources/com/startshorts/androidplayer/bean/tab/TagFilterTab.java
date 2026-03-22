package com.startshorts.androidplayer.bean.tab;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TagFilterTab.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TagFilterTab extends SelectableItem {

    /* renamed from: id  reason: collision with root package name */
    private final int f38133id;
    @NotNull
    private final String name;

    public TagFilterTab(int i10, @NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f38133id = i10;
        this.name = name;
    }

    public final int getId() {
        return this.f38133id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }
}
