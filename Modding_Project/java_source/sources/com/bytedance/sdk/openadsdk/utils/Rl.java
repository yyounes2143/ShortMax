package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.util.List;
/* loaded from: classes3.dex */
public class Rl {

    /* loaded from: classes3.dex */
    public interface ZYk {
        void ZYk();

        void oJ();

        void oJ(View view, boolean z10);

        void oJ(boolean z10);
    }

    /* loaded from: classes3.dex */
    class oJ implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ ViewGroup ZYk;
        View oJ = null;
        final /* synthetic */ boolean tB;

        oJ(ViewGroup viewGroup, boolean z10) {
            this.ZYk = viewGroup;
            this.tB = z10;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                ZYk zYk = (ZYk) this.ZYk.getTag(520093765);
                if (this.oJ != null) {
                    Rect rect = new Rect();
                    this.oJ.getGlobalVisibleRect(rect);
                    Rect rect2 = new Rect();
                    this.ZYk.getGlobalVisibleRect(rect2);
                    if (rect.contains(rect2)) {
                        if (zYk != null) {
                            zYk.oJ(this.ZYk, false);
                        }
                        this.ZYk.setTag(520093763, Boolean.FALSE);
                        return;
                    }
                    if (zYk != null) {
                        zYk.oJ(this.ZYk, true);
                    }
                    this.ZYk.setTag(520093763, Boolean.TRUE);
                    return;
                }
                ViewGroup viewGroup = this.ZYk;
                Rl.ZYk(viewGroup, zYk, (Integer) viewGroup.getTag(520093766), this.tB);
            } catch (Exception e10) {
                ApmHelper.reportCustomError("onGlobalLayout exception " + this.ZYk.getTag(520093765), "ViewUtils", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(View view, ZYk zYk, Integer num, boolean z10) {
        if (zYk == null) {
            return;
        }
        if (num == null) {
            num = 0;
        }
        zYk.oJ(view, oJ(view, num.intValue(), z10));
    }

    public static void oJ(final ViewGroup viewGroup, boolean z10, int i10, final boolean z11, ZYk zYk, List<ViewGroup> list) {
        viewGroup.setTag(520093765, zYk);
        viewGroup.setTag(520093766, Integer.valueOf(i10));
        if (viewGroup.getTag(520093764) == Boolean.TRUE) {
            return;
        }
        final oJ oJVar = new oJ(viewGroup, z11);
        if (list != null && list.size() > 0) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                list.get(i11).setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Rl.1
                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewAdded(View view, View view2) {
                        oJ.this.oJ = view2;
                    }

                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewRemoved(View view, View view2) {
                        oJ.this.oJ = null;
                    }
                });
            }
        }
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(oJVar);
        if (z10) {
            viewGroup.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.utils.Rl.2
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public void onScrollChanged() {
                    try {
                        ViewGroup viewGroup2 = viewGroup;
                        Rl.ZYk(viewGroup2, (ZYk) viewGroup.getTag(520093765), (Integer) viewGroup2.getTag(520093766), z11);
                    } catch (Exception e10) {
                        ApmHelper.reportCustomError("onScrollChanged exception " + viewGroup.getTag(520093765), "ViewUtils", e10);
                    }
                }
            });
        }
        viewGroup.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Rl.3
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public void onWindowFocusChanged(boolean z12) {
                try {
                    ZYk zYk2 = (ZYk) viewGroup.getTag(520093765);
                    if (zYk2 != null) {
                        zYk2.oJ(z12);
                        ViewGroup viewGroup2 = viewGroup;
                        Rl.ZYk(viewGroup2, zYk2, (Integer) viewGroup2.getTag(520093766), z11);
                    }
                } catch (Exception e10) {
                    ApmHelper.reportCustomError("onWindowFocusChanged exception " + viewGroup.getTag(520093765), "ViewUtils", e10);
                }
            }
        });
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.Rl.4
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                ZYk zYk2 = (ZYk) viewGroup.getTag(520093765);
                if (zYk2 != null) {
                    zYk2.oJ();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                ZYk zYk2 = (ZYk) viewGroup.getTag(520093765);
                if (zYk2 != null) {
                    zYk2.ZYk();
                }
            }
        });
        viewGroup.setTag(520093764, Boolean.TRUE);
    }

    private static boolean oJ(View view, int i10, boolean z10) {
        return com.bytedance.sdk.openadsdk.core.mu.oJ(view, 20, i10, z10);
    }
}
