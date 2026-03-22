package com.startshorts.androidplayer.ui.view.shortsV2.adapter;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsNormalAdapterView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsNormalAdapterView extends BaseShortsAdapterView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsNormalAdapterView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public int getLayoutResource() {
        return R$layout.view_shorts_normal_adapter_view;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsNormalAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsNormalAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
