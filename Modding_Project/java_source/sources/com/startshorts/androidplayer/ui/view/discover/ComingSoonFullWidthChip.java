package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonFullWidthChip.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ComingSoonFullWidthChip extends ComingSoonChip {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonFullWidthChip(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip
    @NotNull
    public String K() {
        return "introduction_pop";
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coming_soon_full_width_chip;
    }
}
