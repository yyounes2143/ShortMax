package com.startshorts.androidplayer.ui.view.immersion;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.TimeUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionTimeLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionTimeLayout extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47306b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47307c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionTimeLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_time;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47306b = (BaseTextView) findViewById(R$id.total_time_tv);
        this.f47307c = (BaseTextView) findViewById(R$id.current_time_tv);
    }

    public final void v(long j10, long j11) {
        BaseTextView baseTextView = this.f47307c;
        if (baseTextView != null) {
            baseTextView.setText(TimeUtil.f48175a.c(j10, false));
        }
        BaseTextView baseTextView2 = this.f47306b;
        if (baseTextView2 != null) {
            baseTextView2.setText(" / " + TimeUtil.f48175a.c(j11, false));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionTimeLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionTimeLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
