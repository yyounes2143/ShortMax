package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class eZI extends View {
    private Drawable Pfn;
    private final boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private float f13306ba;
    private Drawable ex;
    private final Path oJ;
    private int tB;

    public eZI(Context context) {
        this(context, false);
    }

    private void ZYk() {
        int width = getWidth();
        int height = getHeight();
        if (this.f13306ba > 0.0f && width > 0 && height > 0) {
            this.oJ.reset();
            this.oJ.addRect(new RectF(0.0f, 0.0f, width * this.f13306ba, height), Path.Direction.CCW);
        }
    }

    private void oJ() {
        Context context = getContext();
        this.ex = cY.tB(context, this.ZYk ? "tt_star_thick_dark" : "tt_star_thick");
        this.Pfn = cY.tB(context, "tt_star");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.tB <= 0) {
            return;
        }
        int save = canvas.save();
        for (int i10 = 0; i10 < 5; i10++) {
            this.ex.draw(canvas);
            canvas.translate(this.tB, 0.0f);
        }
        canvas.restoreToCount(save);
        canvas.clipPath(this.oJ);
        for (int i11 = 0; i11 < 5; i11++) {
            this.Pfn.draw(canvas);
            canvas.translate(this.tB, 0.0f);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.tB * 5, 1073741824), View.MeasureSpec.makeMeasureSpec(this.tB, 1073741824));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ZYk();
    }

    public eZI(Context context, boolean z10) {
        super(context);
        this.oJ = new Path();
        this.ZYk = z10;
        oJ();
    }

    public void oJ(double d10, int i10) {
        int oJ = (int) cdg.oJ(getContext(), i10, false);
        this.tB = oJ;
        this.ex.setBounds(0, 0, oJ, oJ);
        Drawable drawable = this.Pfn;
        int i11 = this.tB;
        drawable.setBounds(0, 0, i11, i11);
        this.f13306ba = ((float) d10) / 5.0f;
        ZYk();
        requestLayout();
    }
}
