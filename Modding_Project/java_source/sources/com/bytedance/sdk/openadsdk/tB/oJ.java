package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.openadsdk.core.Pfn.so {
    private float ZYk;
    private int ex;
    private Paint oJ;
    private boolean tB;

    public oJ(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        this.ZYk = cdg.oJ(getContext(), 8.0f);
        this.oJ = new Paint();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        oJ(getText().toString(), getWidth());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.Pfn.so, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.ex = getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, this.ex);
        } else {
            layoutParams.height = this.ex;
        }
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Pfn.so, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        int i10 = this.ex;
        if (i10 != 0 && layoutParams != null) {
            layoutParams.height = i10;
        }
    }

    public void setMinTextSize(float f10) {
        if (f10 <= 0.0f) {
            return;
        }
        this.ZYk = f10;
    }

    private void oJ(String str, int i10) {
        if (!this.tB && i10 > 0) {
            float textSize = getTextSize();
            this.oJ.set(getPaint());
            int paddingLeft = (i10 - getPaddingLeft()) - getPaddingRight();
            float oJ = oJ(textSize, str);
            while (oJ > paddingLeft) {
                textSize -= 1.0f;
                this.oJ.setTextSize(textSize);
                if (textSize <= this.ZYk) {
                    break;
                }
                oJ = oJ(textSize, str);
            }
            setTextSize(0, textSize);
            this.tB = true;
        }
    }

    private float oJ(float f10, String str) {
        this.oJ.setTextSize(f10);
        return this.oJ.measureText(str);
    }
}
