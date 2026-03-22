package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayNowChip.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PlayNowChip extends BaseChip {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayNowChip(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        C();
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    @NotNull
    public String B() {
        String string = getContext().getString(R$string.discover_fragment_play_now);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_discover_play_now;
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int z() {
        return R$drawable.ic_discover_2_play_now;
    }
}
