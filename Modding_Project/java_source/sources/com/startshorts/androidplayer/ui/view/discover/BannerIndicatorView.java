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
/* compiled from: BannerIndicatorView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BannerIndicatorView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f47198a;

    /* renamed from: b  reason: collision with root package name */
    private int f47199b;

    /* renamed from: c  reason: collision with root package name */
    private float f47200c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Paint f47201d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Paint f47202e;

    /* renamed from: f  reason: collision with root package name */
    private final float f47203f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerIndicatorView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        float f10;
        Paint paint;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        float f11 = 2;
        float width = (getWidth() - this.f47200c) / f11;
        int i10 = this.f47199b;
        float f12 = 0.0f;
        for (int i11 = 0; i11 < i10; i11++) {
            float f13 = this.f47203f;
            float f14 = (i11 * f13 * f11) + width + f12;
            if (i11 == this.f47198a) {
                f12 = z.f51786a.m();
                f10 = (this.f47203f * f11) + f14;
            } else {
                f10 = f13 + f14;
            }
            float f15 = this.f47203f;
            if (i11 == this.f47198a) {
                paint = this.f47202e;
            } else {
                paint = this.f47201d;
            }
            canvas.drawRect(f14, 0.0f, f10, f15, paint);
        }
    }

    public final void setIndex(int i10) {
        this.f47198a = i10;
        invalidate();
    }

    public final void setMax(int i10) {
        this.f47199b = i10;
        this.f47198a = 0;
        this.f47200c = ((i10 - 1) * this.f47203f * 2) + g.a(7.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = (int) this.f47203f;
        layoutParams.width = (int) this.f47200c;
        setLayoutParams(layoutParams);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(ContextCompat.getColor(getContext(), R$color.color_discover_fragment_2_banner_indicate_unselected));
        this.f47201d = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(style);
        paint2.setColor(-1);
        this.f47202e = paint2;
        this.f47203f = g.a(3.0f);
    }
}
