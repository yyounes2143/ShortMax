package com.bytedance.sdk.openadsdk.tB;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class dLZ extends View {
    private final int oJ;

    public dLZ(Context context) {
        this(context, Color.parseColor("#25000000"));
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(getMeasuredWidth(), this.oJ);
    }

    public dLZ(Context context, int i10) {
        super(context);
        setBackgroundColor(i10);
        this.oJ = cdg.ZYk(getContext(), 0.66f);
    }
}
