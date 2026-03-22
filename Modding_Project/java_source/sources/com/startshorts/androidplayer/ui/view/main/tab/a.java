package com.startshorts.androidplayer.ui.view.main.tab;

import com.startshorts.androidplayer.bean.tab.MainTab;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IMainTabView.kt */
@Metadata
/* loaded from: classes7.dex */
public interface a {
    void c(@NotNull String str, boolean z10);

    @Nullable
    MainTab getTab();

    void j(boolean z10);

    void o(@NotNull MainTab.State state);
}
