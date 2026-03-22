package com.startshorts.androidplayer.ui.view.task;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.databinding.ViewAccumulatedTaskProgressItemBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccumulatedTaskProgressItemView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AccumulatedTaskProgressItemView extends ConstraintLayout {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f48031c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public ViewAccumulatedTaskProgressItemBinding f48032a;

    /* renamed from: b  reason: collision with root package name */
    private int f48033b;

    /* compiled from: AccumulatedTaskProgressItemView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccumulatedTaskProgressItemView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @NotNull
    public final ViewAccumulatedTaskProgressItemBinding getBinding() {
        ViewAccumulatedTaskProgressItemBinding viewAccumulatedTaskProgressItemBinding = this.f48032a;
        if (viewAccumulatedTaskProgressItemBinding != null) {
            return viewAccumulatedTaskProgressItemBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final int getMState() {
        return this.f48033b;
    }

    public final void q(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ViewAccumulatedTaskProgressItemBinding.b(LayoutInflater.from(context), this, true));
    }

    public final void r(int i10) {
        this.f48033b = i10;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    getBinding().f41172a.setAlpha(1.0f);
                    getBinding().f41172a.setBackgroundResource(R$drawable.task_progress_bouns_future);
                    getBinding().f41173b.setTextColor(getContext().getColor(R$color.v_light));
                    getBinding().f41174c.setImageResource(R$drawable.task_progress_future);
                    return;
                }
                return;
            }
            getBinding().f41172a.setAlpha(1.0f);
            getBinding().f41172a.setBackgroundResource(R$drawable.task_progress_bouns_curr);
            getBinding().f41173b.setTextColor(getContext().getColor(R$color.t_b_100));
            getBinding().f41174c.setImageResource(R$drawable.task_progress_curr);
            return;
        }
        getBinding().f41172a.setAlpha(0.4f);
        getBinding().f41172a.setBackgroundResource(R$drawable.task_progress_bouns_curr);
        getBinding().f41173b.setTextColor(getContext().getColor(R$color.t_b_100));
        getBinding().f41174c.setImageResource(R$drawable.task_progress_pass);
    }

    public final void setBinding(@NotNull ViewAccumulatedTaskProgressItemBinding viewAccumulatedTaskProgressItemBinding) {
        Intrinsics.checkNotNullParameter(viewAccumulatedTaskProgressItemBinding, "<set-?>");
        this.f48032a = viewAccumulatedTaskProgressItemBinding;
    }

    public final void setBonus(@NotNull String bonus) {
        Intrinsics.checkNotNullParameter(bonus, "bonus");
        getBinding().f41173b.setText(bonus);
    }

    public final void setMState(int i10) {
        this.f48033b = i10;
    }

    public final void setTime(@NotNull String time) {
        Intrinsics.checkNotNullParameter(time, "time");
        getBinding().f41175d.setText(time);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AccumulatedTaskProgressItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccumulatedTaskProgressItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48033b = 3;
        q(context);
    }

    public final void setCoinRunVisibility(int i10) {
    }
}
