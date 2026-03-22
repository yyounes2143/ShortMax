package com.startshorts.androidplayer.ui.view.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DisplayRewardForAccumulativeaView.kt */
@Metadata
@SuppressLint({"ViewConstructor"})
/* loaded from: classes7.dex */
public final class DisplayRewardForAccumulativeaView extends FrameLayout {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f47791c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BaseTextView f47792a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final BaseTextView f47793b;

    /* compiled from: DisplayRewardForAccumulativeaView.kt */
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
    public DisplayRewardForAccumulativeaView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @SuppressLint({"SetTextI18n"})
    public final void setData(@NotNull String needTime, @NotNull String reward) {
        Intrinsics.checkNotNullParameter(needTime, "needTime");
        Intrinsics.checkNotNullParameter(reward, "reward");
        this.f47792a.setText(needTime);
        BaseTextView baseTextView = this.f47793b;
        baseTextView.setText("+ " + reward);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DisplayRewardForAccumulativeaView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DisplayRewardForAccumulativeaView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisplayRewardForAccumulativeaView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        View.inflate(context, R$layout.view_display_reward_for_accumulativea, this);
        this.f47792a = (BaseTextView) findViewById(R$id.tv_time_need);
        this.f47793b = (BaseTextView) findViewById(R$id.tv_reward);
    }
}
