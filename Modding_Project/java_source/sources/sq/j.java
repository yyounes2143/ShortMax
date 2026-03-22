package sq;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.rendering.model.Orientation;
import sm.q;
import tp.r;
import yq.t;
/* loaded from: classes8.dex */
public class j {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final tq.d f66581a = new tq.e();

    public static void c(@NonNull Activity activity, @NonNull View view, boolean z10) {
        View view2;
        if (Build.VERSION.SDK_INT >= 35) {
            Window window = activity.getWindow();
            if (window != null) {
                view2 = window.getDecorView();
            } else {
                view2 = view;
            }
            view.setPadding(0, 0, 0, 0);
            t.h(view2);
            if (z10) {
                view2.requestApplyInsets();
            }
        }
    }

    public static void d(@NonNull Runnable runnable) {
        f66581a.cancel(runnable);
    }

    public static int e(@NonNull Context context, float f10) {
        if (f10 == 0.0f) {
            return 0;
        }
        return q.q(context, f10);
    }

    public static int f() {
        return View.generateViewId();
    }

    @NonNull
    public static Rect g(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new Rect(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    public static float h(@NonNull Rect rect, @NonNull Rect rect2) {
        int width = rect.width() * rect.height();
        if (width == 0) {
            return 0.0f;
        }
        return (width - (Math.max(0, Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left)) * Math.max(0, Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top)))) / width;
    }

    public static boolean i(@NonNull View view) {
        if (view.getAlpha() == 0.0f) {
            return true;
        }
        return false;
    }

    public static boolean j(int i10) {
        if (i10 == 0) {
            return true;
        }
        return false;
    }

    public static void k(@NonNull Runnable runnable) {
        f66581a.execute(runnable);
    }

    public static void l(@NonNull Runnable runnable, long j10) {
        f66581a.schedule(runnable, j10);
    }

    public static <I> void m(final I i10, @Nullable final yq.d<I> dVar) {
        if (dVar == null) {
            return;
        }
        yq.n.b(new r() { // from class: sq.i
            @Override // yq.m
            public final void s() {
                yq.d.this.execute(i10);
            }
        });
    }

    public static void n(@NonNull Activity activity, @Nullable Orientation orientation) {
        int i10;
        if (orientation != null) {
            i10 = orientation.getActivityOrientation();
        } else {
            i10 = 4;
        }
        activity.setRequestedOrientation(i10);
    }

    @NonNull
    public static String o(int i10) {
        if (i10 != 0) {
            if (i10 != 4) {
                if (i10 != 8) {
                    return "unknown";
                }
                return "GONE";
            }
            return "INVISIBLE";
        }
        return "VISIBLE";
    }
}
