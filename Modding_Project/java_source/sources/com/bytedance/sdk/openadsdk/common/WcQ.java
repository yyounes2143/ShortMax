package com.bytedance.sdk.openadsdk.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class WcQ extends View {
    private View ZYk;
    private final oJ oJ;

    /* loaded from: classes3.dex */
    public interface oJ {
        View oJ(Context context);
    }

    public WcQ(Context context, oJ oJVar) {
        super(context);
        this.oJ = oJVar;
        oJ();
    }

    private View ZYk() {
        oJ oJVar;
        if (this.ZYk == null && (oJVar = this.oJ) != null) {
            this.ZYk = oJVar.oJ(getContext());
            oJ(this.ZYk, (ViewGroup) getParent());
        }
        return this.ZYk;
    }

    private void oJ() {
        setVisibility(8);
        setWillNotDraw(true);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        View view = this.ZYk;
        if (view != null) {
            view.setVisibility(i10);
            return;
        }
        super.setVisibility(i10);
        if (i10 == 0 || i10 == 4) {
            ZYk();
        }
    }

    private void oJ(View view, ViewGroup viewGroup) {
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }
}
