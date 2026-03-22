package com.amazonaws.mobile.auth.userpools;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;
/* loaded from: classes2.dex */
public class FormView extends LinearLayout {

    /* renamed from: b  reason: collision with root package name */
    private static final int f5168b = DisplayUtils.a(8);

    /* renamed from: c  reason: collision with root package name */
    private static final int f5169c = DisplayUtils.a(20);

    /* renamed from: a  reason: collision with root package name */
    private final Drawable[] f5170a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class Divider extends View {

        /* renamed from: a  reason: collision with root package name */
        final Paint f5171a;

        public Divider(Context context) {
            super(context);
            this.f5171a = new Paint();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.f5171a.setColor(-3355444);
            canvas.drawRect(getMeasuredWidth() * 0.1f, 0.0f, getMeasuredWidth() * 0.9f, getMeasuredHeight(), this.f5171a);
        }
    }

    public FormView(Context context) {
        this(context, null);
    }

    private EditText a(Context context, int i10, String str) {
        int i11;
        if (getChildCount() == 0) {
            i11 = getFormShadowMargin();
        } else {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(getChildCount() - 1).getLayoutParams();
            layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, 0);
            addView(new Divider(context), -1, DisplayUtils.a(1));
            i11 = 0;
        }
        FormEditText formEditText = new FormEditText(context, i10, str);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        int i12 = f5169c;
        layoutParams2.setMargins(i12, i11, i12, getFormShadowMargin());
        addView(formEditText, layoutParams2);
        return formEditText.getEditTextView();
    }

    private ShapeDrawable c(int i10, int i11, int i12) {
        ShapeDrawable b10 = DisplayUtils.b(i10, i11);
        if (i12 < 100) {
            b10.setAlpha(i12);
        }
        b10.getPaint().setColor(i11);
        return b10;
    }

    private Drawable getFormBackground() {
        LayerDrawable layerDrawable = new LayerDrawable(this.f5170a);
        for (int i10 = 0; i10 < this.f5170a.length; i10++) {
            layerDrawable.setLayerInset(i10, DisplayUtils.a(i10), DisplayUtils.a(i10), DisplayUtils.a(i10), DisplayUtils.a(i10));
        }
        return layerDrawable;
    }

    public EditText b(Context context, int i10, String str) {
        return a(context, i10, str);
    }

    public int getFormShadowMargin() {
        return DisplayUtils.a(this.f5170a.length - 1);
    }

    public FormView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FormView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        boolean z10 = (context.getResources().getConfiguration().uiMode & 48) == 32;
        int i11 = f5168b;
        this.f5170a = new Drawable[]{c(i11, -12303292, 10), c(i11, -12303292, 20), c(i11, -12303292, 30), c(i11, -12303292, 50), c(i11, -12303292, 80), c(i11, z10 ? ViewCompat.MEASURED_STATE_MASK : -1, 100)};
        setOrientation(1);
        setBackgroundDrawable(getFormBackground());
    }
}
