package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import sm.a;
import sm.h;
/* loaded from: classes7.dex */
public class IabTextView extends TextView implements h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RectF f54969a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private GradientDrawable f54970b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Paint f54971c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54972d;

    public IabTextView(@NonNull Context context) {
        super(context);
        this.f54969a = new RectF();
        this.f54972d = false;
        a(context);
    }

    protected void a(@NonNull Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f54970b = gradientDrawable;
        gradientDrawable.setColor(a.f66383c);
        this.f54970b.setShape(0);
        setBackgroundDrawable(this.f54970b);
        setGravity(17);
        setMaxLines(1);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f54972d && this.f54971c != null) {
            float height = getHeight() / 2.0f;
            canvas.drawRoundRect(this.f54969a, height, height, this.f54971c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (View.MeasureSpec.getMode(i11) == 1073741824) {
            float size = (View.MeasureSpec.getSize(i11) - getCompoundPaddingTop()) - getCompoundPaddingRight();
            if (getTextSize() != size) {
                setTextSize(0, size);
            }
        }
        if (mode == 1073741824 && getText() != null) {
            int size2 = (View.MeasureSpec.getSize(i10) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            float measureText = getPaint().measureText(getText(), 0, getText().length());
            float f10 = size2;
            if (f10 < measureText) {
                float textSize = (int) (getTextSize() * (f10 / measureText));
                if (getTextSize() != textSize) {
                    setTextSize(0, textSize);
                }
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        Paint paint;
        super.onSizeChanged(i10, i11, i12, i13);
        GradientDrawable gradientDrawable = this.f54970b;
        if (gradientDrawable != null) {
            gradientDrawable.setCornerRadius(i11 / 2.0f);
        }
        if (this.f54972d && (paint = this.f54971c) != null) {
            float strokeWidth = paint.getStrokeWidth() / 2.0f;
            float f10 = 0.0f + strokeWidth;
            this.f54969a.set(f10, f10, i10 - strokeWidth, i11 - strokeWidth);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        GradientDrawable gradientDrawable = this.f54970b;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i10);
        }
    }

    @Override // sm.h
    public void setStyle(@NonNull IabElementStyle iabElementStyle) {
        boolean booleanValue = iabElementStyle.K().booleanValue();
        this.f54972d = booleanValue;
        if (booleanValue) {
            Paint paint = new Paint(1);
            this.f54971c = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f54971c.setColor(iabElementStyle.D().intValue());
            this.f54971c.setStrokeWidth(iabElementStyle.E(getContext()).floatValue());
        }
        setTextColor(iabElementStyle.D().intValue());
        setBackgroundColor(iabElementStyle.i().intValue());
        setTextSize(0, iabElementStyle.j(getContext()).floatValue());
        setTypeface(Typeface.create(Typeface.DEFAULT, iabElementStyle.k().intValue()));
        setAlpha(iabElementStyle.y().floatValue());
        setPadding(iabElementStyle.A(getContext()).intValue(), iabElementStyle.C(getContext()).intValue(), iabElementStyle.B(getContext()).intValue(), iabElementStyle.z(getContext()).intValue());
    }

    public IabTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54969a = new RectF();
        this.f54972d = false;
        a(context);
    }
}
