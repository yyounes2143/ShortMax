package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pj.a;
/* compiled from: NormalUnlockView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NormalUnlockView extends BaseConstraintLayout implements a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NormalUnlockView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_normal_unlock;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBackgroundResource(R$drawable.bg_positive_button_50dp_primary);
    }

    @Override // pj.a
    public void release() {
    }
}
