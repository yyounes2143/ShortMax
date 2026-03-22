package com.startshorts.androidplayer.ui.view.progress;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.ui.view.progress.GradientProgressBar;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GradientProgressBar.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GradientProgressBar extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f47521a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final View f47522b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GradientProgressBar(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final int b(int i10) {
        return (int) (i10 * getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(GradientProgressBar gradientProgressBar, int i10) {
        ViewGroup.LayoutParams layoutParams = gradientProgressBar.f47522b.getLayoutParams();
        layoutParams.width = (gradientProgressBar.getWidth() * i10) / 100;
        gradientProgressBar.f47522b.setLayoutParams(layoutParams);
    }

    public final void setProgress(int i10) {
        final int n10 = e.n(i10, 0, 100);
        this.f47522b.post(new Runnable() { // from class: sj.a
            @Override // java.lang.Runnable
            public final void run() {
                GradientProgressBar.c(GradientProgressBar.this, n10);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GradientProgressBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ GradientProgressBar(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GradientProgressBar(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        int parseColor = Color.parseColor("#23252A");
        this.f47521a = parseColor;
        View view = new View(context);
        this.f47522b = view;
        setBackgroundColor(parseColor);
        setLayoutParams(new FrameLayout.LayoutParams(-1, b(4)));
        setClipToOutline(true);
        view.setBackgroundResource(R$drawable.bg_progress_gradient);
        addView(view, new FrameLayout.LayoutParams(0, -1));
    }
}
