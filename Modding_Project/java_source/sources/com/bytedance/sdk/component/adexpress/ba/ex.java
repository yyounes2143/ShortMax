package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ex extends View {
    private float BTZ;
    private float Pfn;
    private float PiB;
    private int WcQ;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12656ba;
    private boolean cFZ;
    private Paint dLZ;
    private int ex;
    private List<Integer> jFA;
    private Paint kkU;
    private int oJ;

    /* renamed from: so  reason: collision with root package name */
    private List<Integer> f12657so;
    private float tB;

    public ex(Context context) {
        this(context, null);
    }

    private void tB() {
        Paint paint = new Paint();
        this.kkU = paint;
        paint.setAntiAlias(true);
        this.kkU.setStrokeWidth(this.WcQ);
        this.f12657so.add(255);
        this.jFA.add(0);
        Paint paint2 = new Paint();
        this.dLZ = paint2;
        paint2.setAntiAlias(true);
        this.dLZ.setColor(Color.parseColor("#0FFFFFFF"));
        this.dLZ.setStyle(Paint.Style.FILL);
    }

    public void ZYk() {
        this.cFZ = false;
        this.jFA.clear();
        this.f12657so.clear();
        this.f12657so.add(255);
        this.jFA.add(0);
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    public void oJ() {
        this.cFZ = true;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.kkU.setShader(new LinearGradient(this.BTZ, 0.0f, this.PiB, getMeasuredHeight(), -1, (int) ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
        int i10 = 0;
        while (true) {
            int i11 = 1;
            if (i10 >= this.f12657so.size()) {
                break;
            }
            Integer num = this.f12657so.get(i10);
            this.kkU.setAlpha(num.intValue());
            Integer num2 = this.jFA.get(i10);
            if (this.tB + num2.intValue() < this.Pfn) {
                canvas.drawCircle(this.BTZ, this.PiB, this.tB + num2.intValue(), this.kkU);
            }
            if (num.intValue() > 0 && num2.intValue() < this.Pfn) {
                List<Integer> list = this.f12657so;
                if (num.intValue() - this.f12656ba > 0) {
                    i11 = num.intValue() - (this.f12656ba * 3);
                }
                list.set(i10, Integer.valueOf(i11));
                this.jFA.set(i10, Integer.valueOf(num2.intValue() + this.f12656ba));
            }
            i10++;
        }
        List<Integer> list2 = this.jFA;
        if (list2.get(list2.size() - 1).intValue() >= this.Pfn / this.ex) {
            this.f12657so.add(255);
            this.jFA.add(0);
        }
        if (this.jFA.size() >= 3) {
            this.jFA.remove(0);
            this.f12657so.remove(0);
        }
        this.kkU.setAlpha(255);
        this.kkU.setColor(this.ZYk);
        canvas.drawCircle(this.BTZ, this.PiB, this.tB, this.dLZ);
        if (this.cFZ) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i10 / 2.0f;
        this.BTZ = f10;
        this.PiB = i11 / 2.0f;
        float f11 = f10 - (this.WcQ / 2.0f);
        this.Pfn = f11;
        this.tB = f11 / 4.0f;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            invalidate();
        }
    }

    public void setColor(int i10) {
        this.oJ = i10;
    }

    public void setCoreColor(int i10) {
        this.ZYk = i10;
    }

    public void setCoreRadius(int i10) {
        this.tB = i10;
    }

    public void setDiffuseSpeed(int i10) {
        this.f12656ba = i10;
    }

    public void setDiffuseWidth(int i10) {
        this.ex = i10;
    }

    public void setMaxWidth(int i10) {
        this.Pfn = i10;
    }

    public ex(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public ex(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.oJ = -1;
        this.ZYk = SupportMenu.CATEGORY_MASK;
        this.tB = 18.0f;
        this.ex = 3;
        this.Pfn = 50.0f;
        this.f12656ba = 2;
        this.cFZ = false;
        this.f12657so = new ArrayList();
        this.jFA = new ArrayList();
        this.WcQ = 24;
        tB();
    }
}
