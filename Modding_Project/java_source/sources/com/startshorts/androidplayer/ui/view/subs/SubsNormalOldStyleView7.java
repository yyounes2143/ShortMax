package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsNormalOldStyleView7.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubsNormalOldStyleView7 extends SubsNormalOldStyleView {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private View f47955k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsNormalOldStyleView7(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_subs_type_normal_7;
    }

    public final void setSelect(boolean z10) {
        if (z10) {
            View view = this.f47955k;
            if (view != null) {
                b0.l(view);
                return;
            }
            return;
        }
        View view2 = this.f47955k;
        if (view2 != null) {
            b0.d(view2);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47955k = findViewById(R$id.card_bg_box);
    }
}
