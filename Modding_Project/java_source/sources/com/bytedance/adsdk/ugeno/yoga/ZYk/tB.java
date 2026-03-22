package com.bytedance.adsdk.ugeno.yoga.ZYk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.ex;
import com.bytedance.adsdk.ugeno.oJ.cFZ;
import com.bytedance.adsdk.ugeno.oJ.so;
import com.bytedance.adsdk.ugeno.yoga.Pfn;
import com.bytedance.adsdk.ugeno.yoga.PiB;
import com.bytedance.adsdk.ugeno.yoga.WcQ;
import com.bytedance.adsdk.ugeno.yoga.ba;
import com.bytedance.adsdk.ugeno.yoga.dLZ;
import com.bytedance.adsdk.ugeno.yoga.jFA;
import com.bytedance.adsdk.ugeno.yoga.kkU;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class tB extends ViewGroup implements com.bytedance.adsdk.ugeno.ZYk.ZYk, cFZ {
    private final kkU ZYk;
    private so ex;
    private final Map<View, kkU> oJ;
    private ex tB;

    public tB(Context context) {
        this(context, null, 0);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.ZYk
    public void ZYk(int i10) {
        kkU kku = this.ZYk;
        if (kku != null) {
            ZYk(kku, i10);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        kkU oJ2;
        this.ZYk.oJ((com.bytedance.adsdk.ugeno.yoga.cFZ) null);
        if (!(view instanceof com.bytedance.adsdk.ugeno.yoga.ZYk.ZYk)) {
            super.addView(view, i10, layoutParams);
            if (this.oJ.containsKey(view)) {
                return;
            }
            if (view instanceof tB) {
                oJ2 = ((tB) view).getYogaNode();
            } else {
                if (this.oJ.containsKey(view)) {
                    oJ2 = this.oJ.get(view);
                } else {
                    oJ2 = dLZ.oJ();
                }
                oJ2.oJ(view);
                oJ2.oJ((com.bytedance.adsdk.ugeno.yoga.cFZ) new ZYk());
            }
            oJ((oJ) view.getLayoutParams(), oJ2, view);
            this.oJ.put(view, oJ2);
            if (view.getVisibility() == 8) {
                view.setTag(151060224, Integer.valueOf(this.ZYk.oJ()));
                return;
            }
            kkU kku = this.ZYk;
            kku.oJ(oJ2, kku.oJ());
            return;
        }
        throw null;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof oJ;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.ZYk(canvas);
        }
    }

    public void ex(View view, int i10) {
        int oJ2;
        view.setVisibility(i10);
        try {
            kkU kku = this.oJ.get(view);
            Object tag = view.getTag(151060224);
            if (i10 == 0) {
                if (tag != null && this.ZYk.oJ(kku) == -1) {
                    int intValue = ((Integer) tag).intValue();
                    if (intValue < this.ZYk.oJ()) {
                        this.ZYk.oJ(this.oJ.get(view), intValue);
                    } else {
                        this.ZYk.oJ(this.oJ.get(view), this.ZYk.oJ());
                    }
                    oJ(this.ZYk);
                }
            } else if (i10 == 8 && (oJ2 = this.ZYk.oJ(kku)) != -1) {
                this.ZYk.ZYk(oJ2);
                view.setTag(151060224, Integer.valueOf(oJ2));
                oJ(this.ZYk);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new oJ(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new oJ(layoutParams);
    }

    public float getBorderRadius() {
        return this.ex.oJ();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRipple() {
        return this.ex.getRipple();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRubIn() {
        return this.ex.getRubIn();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getShine() {
        return this.ex.getShine();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getStretch() {
        return this.ex.getStretch();
    }

    public kkU getYogaNode() {
        return this.ZYk;
    }

    public kkU oJ(View view) {
        return this.oJ.get(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.oJ(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.ba();
        }
        if (!(getParent() instanceof tB)) {
            oJ(View.MeasureSpec.makeMeasureSpec(i12 - i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i13 - i11, 1073741824));
        }
        oJ(this.ZYk, 0.0f, 0.0f);
        ex exVar2 = this.tB;
        if (exVar2 != null) {
            exVar2.oJ(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (!(getParent() instanceof tB)) {
            oJ(i10, i11);
        }
        ex exVar = this.tB;
        if (exVar != null) {
            int[] oJ2 = exVar.oJ(i10, i11);
            setMeasuredDimension(oJ2[0], oJ2[1]);
        } else {
            setMeasuredDimension(Math.round(this.ZYk.so()), Math.round(this.ZYk.jFA()));
        }
        ex exVar2 = this.tB;
        if (exVar2 != null) {
            exVar2.Pfn();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ex exVar = this.tB;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            oJ(getChildAt(i10), false);
        }
        super.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            oJ(getChildAt(i10), true);
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        oJ(view, false);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        oJ(getChildAt(i10), false);
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        oJ(view, true);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            oJ(getChildAt(i12), false);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            oJ(getChildAt(i12), true);
        }
        super.removeViewsInLayout(i10, i11);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.ex.oJ(i10);
    }

    public void setBorderRadius(float f10) {
        this.ex.oJ(f10);
    }

    public void setRipple(float f10) {
        so soVar = this.ex;
        if (soVar != null) {
            soVar.ZYk(f10);
        }
    }

    public void setRubIn(float f10) {
        so soVar = this.ex;
        if (soVar != null) {
            soVar.Pfn(f10);
        }
    }

    public void setShine(float f10) {
        so soVar = this.ex;
        if (soVar != null) {
            soVar.tB(f10);
        }
    }

    public void setStretch(float f10) {
        so soVar = this.ex;
        if (soVar != null) {
            soVar.ex(f10);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.ZYk
    public void tB(View view, int i10) {
        ex(view, i10);
    }

    public tB(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ex = new so(this);
        kkU oJ2 = dLZ.oJ();
        this.ZYk = oJ2;
        this.oJ = new HashMap();
        oJ2.oJ(this);
        oJ2.oJ((com.bytedance.adsdk.ugeno.yoga.cFZ) new ZYk());
        oJ((oJ) generateDefaultLayoutParams(), oJ2, this);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.ZYk
    public void oJ(int i10) {
        kkU kku = this.ZYk;
        if (kku != null) {
            oJ(kku, i10);
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.ZYk
    public void ZYk(View view, int i10) {
        kkU oJ2;
        if (view == null || (oJ2 = oJ(view)) == null) {
            return;
        }
        ZYk(oJ2, i10);
        view.requestLayout();
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.ZYk
    public void oJ(View view, int i10) {
        kkU oJ2;
        if (view == null || (oJ2 = oJ(view)) == null) {
            return;
        }
        oJ(oJ2, i10);
        view.requestLayout();
    }

    private void ZYk(kkU kku, int i10) {
        if (i10 == -1) {
            kku.cFZ(100.0f);
        } else if (i10 == -2) {
            kku.Pfn();
        } else {
            kku.ba(i10);
        }
    }

    private void oJ(kkU kku, int i10) {
        if (i10 == -1) {
            kku.Pfn(100.0f);
        } else if (i10 == -2) {
            kku.ex();
        } else {
            kku.ex(i10);
        }
    }

    /* loaded from: classes3.dex */
    public static class ZYk implements com.bytedance.adsdk.ugeno.yoga.cFZ {
        @Override // com.bytedance.adsdk.ugeno.yoga.cFZ
        public long oJ(kkU kku, float f10, com.bytedance.adsdk.ugeno.yoga.so soVar, float f11, com.bytedance.adsdk.ugeno.yoga.so soVar2) {
            View view = (View) kku.kkU();
            if (view != null && !(view instanceof tB)) {
                view.measure(View.MeasureSpec.makeMeasureSpec((int) f10, oJ(soVar)), View.MeasureSpec.makeMeasureSpec((int) f11, oJ(soVar2)));
                return jFA.oJ(view.getMeasuredWidth(), view.getMeasuredHeight());
            }
            return jFA.oJ(0, 0);
        }

        private int oJ(com.bytedance.adsdk.ugeno.yoga.so soVar) {
            if (soVar == com.bytedance.adsdk.ugeno.yoga.so.AT_MOST) {
                return Integer.MIN_VALUE;
            }
            return soVar == com.bytedance.adsdk.ugeno.yoga.so.EXACTLY ? 1073741824 : 0;
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ extends ViewGroup.LayoutParams {
        private float BTZ;
        private float Pfn;
        private float PiB;
        private float RZ;
        private float Ry;
        private float WcQ;
        SparseArray<String> ZYk;
        private float awB;

        /* renamed from: ba  reason: collision with root package name */
        private float f11732ba;
        private float cFZ;
        private float dLZ;
        private float eZI;
        private float ex;
        private float jFA;
        private float kkU;
        SparseArray<Float> oJ;

        /* renamed from: si  reason: collision with root package name */
        private float f11733si;

        /* renamed from: so  reason: collision with root package name */
        private float f11734so;
        private float tB;

        public oJ(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            if (layoutParams instanceof oJ) {
                oJ oJVar = (oJ) layoutParams;
                this.oJ = oJVar.oJ.clone();
                this.ZYk = oJVar.ZYk.clone();
                return;
            }
            this.oJ = new SparseArray<>();
            this.ZYk = new SparseArray<>();
            if (layoutParams.width >= 0) {
                this.oJ.put(15, Float.valueOf(((ViewGroup.LayoutParams) this).width));
            }
            if (layoutParams.height >= 0) {
                this.oJ.put(16, Float.valueOf(((ViewGroup.LayoutParams) this).height));
            }
        }

        public void BTZ(float f10) {
            this.ex = f10;
            this.oJ.put(18, Float.valueOf(f10));
        }

        public void Pfn(float f10) {
            this.dLZ = f10;
            this.oJ.put(9, Float.valueOf(f10));
        }

        public void PiB(float f10) {
            this.Pfn = f10;
            this.oJ.put(19, Float.valueOf(f10));
        }

        public void WcQ(float f10) {
            this.f11732ba = f10;
            this.oJ.put(20, Float.valueOf(f10));
        }

        public void ZYk(float f10) {
            this.f11734so = f10;
            this.oJ.put(6, Float.valueOf(f10));
        }

        public void awB(float f10) {
            this.f11733si = f10;
            this.oJ.put(25, Float.valueOf(f10));
        }

        public void ba(float f10) {
            this.BTZ = f10;
            this.oJ.put(14, Float.valueOf(f10));
        }

        public void cFZ(float f10) {
            this.PiB = f10;
            this.oJ.put(10, Float.valueOf(f10));
        }

        public void dLZ(float f10) {
            this.tB = f10;
            this.oJ.put(17, Float.valueOf(f10));
        }

        public void eZI(float f10) {
            this.Ry = f10;
            this.oJ.put(27, Float.valueOf(f10));
        }

        public void ex(float f10) {
            this.kkU = f10;
            this.oJ.put(8, Float.valueOf(f10));
        }

        public void jFA(float f10) {
            this.awB = f10;
            this.oJ.put(12, Float.valueOf(f10));
        }

        public void kkU(float f10) {
            this.eZI = f10;
            this.oJ.put(13, Float.valueOf(f10));
        }

        public void oJ(float f10) {
            this.cFZ = f10;
            this.oJ.put(5, Float.valueOf(f10));
        }

        public void si(float f10) {
            this.RZ = f10;
            this.oJ.put(28, Float.valueOf(f10));
        }

        public void so(float f10) {
            this.WcQ = f10;
            this.oJ.put(11, Float.valueOf(f10));
        }

        public void tB(float f10) {
            this.jFA = f10;
            this.oJ.put(7, Float.valueOf(f10));
        }

        public oJ(int i10, int i11) {
            super(i10, i11);
            this.oJ = new SparseArray<>();
            this.ZYk = new SparseArray<>();
            if (i10 == -2 || i10 == -1 || i10 >= 0) {
                this.oJ.put(15, Float.valueOf(i10));
            }
            if (i11 == -2 || i11 == -1 || i11 >= 0) {
                this.oJ.put(16, Float.valueOf(i11));
            }
        }
    }

    private void oJ(kkU kku) {
        if (kku.ZYk() != null) {
            oJ(kku.ZYk());
        } else {
            kku.oJ(Float.NaN, Float.NaN);
        }
    }

    private void oJ(View view, boolean z10) {
        kkU kku = this.oJ.get(view);
        if (kku == null) {
            return;
        }
        kkU ZYk2 = kku.ZYk();
        int i10 = 0;
        while (true) {
            if (i10 >= ZYk2.oJ()) {
                break;
            } else if (ZYk2.oJ(i10).equals(kku)) {
                ZYk2.ZYk(i10);
                break;
            } else {
                i10++;
            }
        }
        kku.oJ((Object) null);
        this.oJ.remove(view);
        if (z10) {
            this.ZYk.oJ(Float.NaN, Float.NaN);
        }
    }

    private void oJ(kkU kku, float f10, float f11) {
        View view = (View) kku.kkU();
        if (view != null && view != this) {
            if (view.getVisibility() == 8) {
                return;
            }
            int round = Math.round(kku.ba() + f10);
            int round2 = Math.round(kku.cFZ() + f11);
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.round(kku.so()), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.round(kku.jFA()), 1073741824));
            view.layout(round, round2, view.getMeasuredWidth() + round, view.getMeasuredHeight() + round2);
        }
        int oJ2 = kku.oJ();
        for (int i10 = 0; i10 < oJ2; i10++) {
            if (equals(view)) {
                oJ(kku.oJ(i10), f10, f11);
            } else if (!(view instanceof tB)) {
                oJ(kku.oJ(i10), kku.ba() + f10, kku.cFZ() + f11);
            }
        }
    }

    private void oJ(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == 1073741824) {
            this.ZYk.ba(size2);
        }
        if (mode == 1073741824) {
            this.ZYk.ex(size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            this.ZYk.dLZ(size2);
        }
        if (mode == Integer.MIN_VALUE) {
            this.ZYk.kkU(size);
        }
        this.ZYk.oJ(Float.NaN, Float.NaN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void oJ(oJ oJVar, kkU kku, View view) {
        if (view.getResources().getConfiguration().getLayoutDirection() == 1) {
            kku.oJ(com.bytedance.adsdk.ugeno.yoga.tB.RTL);
        }
        Drawable background = view.getBackground();
        if (background != null) {
            Rect rect = new Rect();
            if (background.getPadding(rect)) {
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.LEFT, rect.left);
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.TOP, rect.top);
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.RIGHT, rect.right);
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.BOTTOM, rect.bottom);
            }
        }
        for (int i10 = 0; i10 < oJVar.oJ.size(); i10++) {
            int keyAt = oJVar.oJ.keyAt(i10);
            float floatValue = oJVar.oJ.valueAt(i10).floatValue();
            if (keyAt == 4) {
                kku.tB(com.bytedance.adsdk.ugeno.yoga.oJ.oJ(Math.round(floatValue)));
            } else if (keyAt == 0) {
                kku.oJ(com.bytedance.adsdk.ugeno.yoga.oJ.oJ(Math.round(floatValue)));
            } else if (keyAt == 9) {
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.oJ.oJ(Math.round(floatValue)));
            } else if (keyAt == 25) {
                kku.BTZ(floatValue);
            } else if (keyAt == 8) {
                if (floatValue < 0.0f) {
                    kku.tB();
                } else {
                    kku.tB(floatValue);
                }
            } else if (keyAt == 1) {
                kku.oJ(Pfn.oJ(Math.round(floatValue)));
            } else if (keyAt == 6) {
                kku.oJ(floatValue);
            } else if (keyAt == 7) {
                kku.ZYk(floatValue);
            } else if (keyAt == 16) {
                if (floatValue == -1.0f) {
                    kku.cFZ(100.0f);
                } else if (floatValue == -2.0f) {
                    kku.Pfn();
                } else {
                    kku.ba(floatValue);
                }
            } else if (keyAt == 18) {
                kku.oJ(com.bytedance.adsdk.ugeno.yoga.ex.LEFT, floatValue);
            } else if (keyAt == 3) {
                kku.oJ(ba.oJ(Math.round(floatValue)));
            } else if (keyAt == 17) {
                kku.oJ(com.bytedance.adsdk.ugeno.yoga.ex.TOP, floatValue);
            } else if (keyAt == 20) {
                kku.oJ(com.bytedance.adsdk.ugeno.yoga.ex.RIGHT, floatValue);
            } else if (keyAt == 19) {
                kku.oJ(com.bytedance.adsdk.ugeno.yoga.ex.BOTTOM, floatValue);
            } else if (keyAt == 28) {
                kku.jFA(floatValue);
            } else if (keyAt == 27) {
                kku.so(floatValue);
            } else if (keyAt == 22) {
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.LEFT, floatValue);
            } else if (keyAt == 21) {
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.TOP, floatValue);
            } else if (keyAt == 24) {
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.RIGHT, floatValue);
            } else if (keyAt == 23) {
                kku.ZYk(com.bytedance.adsdk.ugeno.yoga.ex.BOTTOM, floatValue);
            } else if (keyAt == 11) {
                kku.tB(com.bytedance.adsdk.ugeno.yoga.ex.LEFT, floatValue);
            } else if (keyAt == 10) {
                kku.tB(com.bytedance.adsdk.ugeno.yoga.ex.TOP, floatValue);
            } else if (keyAt == 13) {
                kku.tB(com.bytedance.adsdk.ugeno.yoga.ex.RIGHT, floatValue);
            } else if (keyAt == 12) {
                kku.tB(com.bytedance.adsdk.ugeno.yoga.ex.BOTTOM, floatValue);
            } else if (keyAt == 14) {
                kku.oJ(PiB.oJ(Math.round(floatValue)));
            } else if (keyAt == 15) {
                if (floatValue == -1.0f) {
                    kku.Pfn(100.0f);
                } else if (floatValue == -2.0f) {
                    kku.ex();
                } else {
                    kku.ex(floatValue);
                }
            } else if (keyAt == 2) {
                kku.oJ(WcQ.oJ(Math.round(floatValue)));
            }
        }
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.tB = tBVar;
    }
}
