package com.bytedance.sdk.openadsdk.core;

import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class mu {
    private static boolean ZYk(View view) {
        return view != null && view.isShown();
    }

    private static boolean oJ(View view, int i10) {
        float oJ = oJ(view);
        return oJ > 0.0f && oJ >= ((float) i10) / 100.0f;
    }

    private static int tB(View view, int i10) {
        if (i10 == 3) {
            return cdg.Pfn(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }

    private static int ZYk(View view, int i10) {
        if (i10 == 3) {
            return (int) (cdg.tB(view.getContext().getApplicationContext()) * 0.7d);
        }
        return 20;
    }

    public static float oJ(View view) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null) {
                    Rect rect = new Rect();
                    if (view.getGlobalVisibleRect(rect)) {
                        long height = rect.height() * rect.width();
                        long height2 = view.getHeight() * view.getWidth();
                        if (height2 <= 0) {
                            return -1.0f;
                        }
                        return ((float) height) / ((float) height2);
                    }
                    return -1.0f;
                }
            } catch (Throwable unused) {
            }
        }
        return -1.0f;
    }

    private static int ZYk(View view, int i10, int i11, boolean z10) throws Throwable {
        if (view.getWindowVisibility() != 0) {
            return 4;
        }
        if (ZYk(view)) {
            if (oJ(view, i11, z10)) {
                return !oJ(view, i10) ? 3 : 0;
            }
            return 6;
        }
        return 1;
    }

    private static boolean oJ(View view, int i10, boolean z10) {
        return (i10 == 1 && z10) ? view.getWidth() > 0 && view.getHeight() > 0 : view.getWidth() >= ZYk(view, i10) && view.getHeight() >= tB(view, i10);
    }

    public static boolean oJ(View view, int i10, int i11, boolean z10) {
        if (i11 == 1) {
            while (view != null) {
                try {
                    if (view.getVisibility() == 0) {
                        if ((view instanceof com.bytedance.sdk.openadsdk.core.so.QSm) || (view instanceof com.bytedance.sdk.openadsdk.core.tB.ex)) {
                            break;
                        }
                        view = (View) view.getParent();
                    } else {
                        return false;
                    }
                } catch (Throwable unused) {
                }
            }
            if (z10) {
                i10 = 0;
            }
        }
        return ZYk(view, i10, i11, z10) == 0;
    }
}
