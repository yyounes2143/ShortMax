package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    private float Pfn;
    private final boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.activity.so f13049ba;
    private boolean cFZ;
    private float ex;
    private final boolean oJ;
    private com.bytedance.sdk.openadsdk.core.Pfn.tB tB;

    public ZYk(@NonNull Context context, boolean z10, boolean z11, final int i10) {
        super(context);
        this.oJ = z10;
        this.ZYk = z11;
        if (!z10) {
            this.tB = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            addView(this.tB, layoutParams);
            this.tB.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.ZYk.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i10);
                }
            });
            this.tB.setClipToOutline(true);
            return;
        }
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.ZYk.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i10);
            }
        });
        setClipToOutline(true);
    }

    public void oJ(jFA jfa, FrameLayout.LayoutParams layoutParams) {
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = this.tB;
        if (tBVar != null) {
            tBVar.addView(jfa, layoutParams);
        } else {
            addView(jfa, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb2;
        super.onAttachedToWindow();
        if (this.cFZ || (soVar = this.f13049ba) == null || (tb2 = soVar.tb()) == null) {
            return;
        }
        tb2.IUZ.ZYk(true);
        this.cFZ = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb2;
        super.onDetachedFromWindow();
        if (!this.cFZ || (soVar = this.f13049ba) == null || (tb2 = soVar.tb()) == null) {
            return;
        }
        tb2.IUZ.ZYk(false);
        this.cFZ = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.Pfn.tB, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (!this.ZYk) {
            if (this.oJ) {
                float f10 = this.ex;
                if (f10 > 0.0f) {
                    i11 = View.MeasureSpec.makeMeasureSpec((int) (size / f10), 1073741824);
                } else {
                    float f11 = this.Pfn;
                    if (f11 > 0.0f) {
                        i11 = View.MeasureSpec.makeMeasureSpec((int) (size2 * f11), 1073741824);
                    }
                }
            } else {
                float f12 = this.ex;
                if (f12 > 0.0f) {
                    int max = Math.max(0, (size - ((int) (size2 * f12))) / 2);
                    setPadding(max, 0, max, 0);
                } else {
                    float f13 = this.Pfn;
                    if (f13 > 0.0f) {
                        int max2 = Math.max(0, (size - ((int) (size * f13))) / 2);
                        setPadding(max2, 0, max2, 0);
                    }
                }
            }
        } else {
            float f14 = this.ex;
            if (f14 > 0.0f) {
                int max3 = Math.max(0, (size - ((int) (size2 * f14))) / 2);
                setPadding(max3, 0, max3, 0);
            } else {
                float f15 = this.Pfn;
                if (f15 > 0.0f) {
                    int max4 = Math.max(0, (size - ((int) (size * f15))) / 2);
                    setPadding(max4, 0, max4, 0);
                }
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ tb2;
        super.onWindowFocusChanged(z10);
        if (this.cFZ == z10 || (soVar = this.f13049ba) == null || (tb2 = soVar.tb()) == null) {
            return;
        }
        tb2.IUZ.ZYk(z10);
    }

    public void setScene(com.bytedance.sdk.openadsdk.activity.so soVar) {
        this.f13049ba = soVar;
    }

    public void setWidthAndHeightRatio(float f10) {
        this.ex = f10;
    }

    public void setWidthOrHeightInParentRatio(float f10) {
        this.Pfn = f10;
    }

    public void oJ() {
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = this.tB;
        if (tBVar != null) {
            tBVar.removeAllViews();
        } else {
            removeAllViews();
        }
    }
}
