package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import fk.z;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BannerIndicatorCircleView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerIndicatorCircleView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f47191a;

    /* renamed from: b  reason: collision with root package name */
    private int f47192b;

    /* renamed from: c  reason: collision with root package name */
    private float f47193c;

    /* renamed from: d  reason: collision with root package name */
    private final float f47194d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Paint f47195e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Paint f47196f;

    /* renamed from: g  reason: collision with root package name */
    private final float f47197g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerIndicatorCircleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final float getSelectedGap() {
        return this.f47194d;
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Paint paint;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        float f10 = 2;
        float width = (getWidth() - this.f47193c) / f10;
        int i10 = this.f47192b;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 == this.f47191a) {
                paint = this.f47196f;
            } else {
                paint = this.f47195e;
            }
            canvas.drawCircle((i11 * this.f47197g * f10) + width + this.f47194d, getHeight() / 2.0f, Math.min(getWidth(), getHeight()) / f10, paint);
        }
    }

    public final void setIndex(int i10) {
        this.f47191a = i10;
        invalidate();
    }

    public final void setMax(int i10) {
        this.f47192b = i10;
        this.f47191a = 0;
        this.f47193c = ((i10 - 1) * this.f47197g * 2) + g.a(8.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = (int) this.f47197g;
        layoutParams.width = (int) this.f47193c;
        setLayoutParams(layoutParams);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerIndicatorCircleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerIndicatorCircleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47194d = z.f51786a.m();
        Paint paint = new Paint();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(ContextCompat.getColor(getContext(), R$color.color_discover_fragment_2_banner_indicate_unselected));
        this.f47195e = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(style);
        paint2.setColor(-1);
        this.f47196f = paint2;
        this.f47197g = g.a(4.0f);
    }
}
