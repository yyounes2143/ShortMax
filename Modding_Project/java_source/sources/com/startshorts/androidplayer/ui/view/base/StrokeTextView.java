package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import com.startshorts.androidplayer.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StrokeTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StrokeTextView extends BaseTextView {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private TextView f47121b;

    /* renamed from: c  reason: collision with root package name */
    private int f47122c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private ColorStateList f47123d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private Paint f47124e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StrokeTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void d() {
        Paint paint = this.f47124e;
        paint.setStrokeWidth(this.f47122c);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        this.f47121b.setTextColor(this.f47123d);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.f47121b.draw(canvas);
        super.onDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f47121b.layout(i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        CharSequence text = this.f47121b.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        if (!Intrinsics.areEqual(text, getText())) {
            this.f47121b.setText(getText());
            postInvalidate();
        }
        super.onMeasure(i10, i11);
        this.f47121b.measure(i10, i11);
    }

    @Override // android.view.View
    public void setLayoutParams(@Nullable ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        this.f47121b.setLayoutParams(layoutParams);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StrokeTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StrokeTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        BaseTextView baseTextView = new BaseTextView(context, attributeSet, i10);
        this.f47121b = baseTextView;
        this.f47124e = baseTextView.getPaint();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.StrokeTextView, i10, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47122c = obtainStyledAttributes.getDimensionPixelSize(R$styleable.StrokeTextView_stroke_width, 4);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R$styleable.StrokeTextView_stroke_color);
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16776961);
            Intrinsics.checkNotNullExpressionValue(colorStateList, "valueOf(...)");
        }
        this.f47123d = colorStateList;
        obtainStyledAttributes.recycle();
        d();
    }
}
