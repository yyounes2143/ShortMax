package yq;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UiUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p {
    public static final void a(@NotNull Activity activity, boolean z10) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        activity.requestWindowFeature(1);
        Window window = activity.getWindow();
        if (window != null) {
            window.addFlags(128);
            c(window, z10);
        }
        f(activity);
    }

    public static /* synthetic */ void b(Activity activity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        a(activity, z10);
    }

    public static final void c(@NotNull Window window, boolean z10) {
        int i10;
        WindowInsetsController windowInsetsController;
        int statusBars;
        Intrinsics.checkNotNullParameter(window, "<this>");
        if (Build.VERSION.SDK_INT >= 30) {
            windowInsetsController = window.getDecorView().getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.setSystemBarsBehavior(2);
                if (z10) {
                    statusBars = WindowInsets.Type.statusBars();
                    windowInsetsController.hide(statusBars);
                    return;
                }
                return;
            }
            return;
        }
        if (z10) {
            window.setFlags(1024, 1024);
            i10 = 4;
        } else {
            i10 = 0;
        }
        if (i10 > 0) {
            window.getDecorView().setSystemUiVisibility(i10);
        }
    }

    public static final void d(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        activity.finish();
        h(activity);
    }

    public static final void e(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            d(activity);
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public static final Boolean f(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        InputMethodManager q10 = s.q(activity);
        if (q10 != null) {
            View currentFocus = activity.getCurrentFocus();
            if (currentFocus == null) {
                currentFocus = new View(activity);
            }
            return Boolean.valueOf(q10.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0));
        }
        return null;
    }

    @Nullable
    public static final Unit g(@NotNull Activity activity, @ColorInt int i10) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        return n.c(activity.getWindow(), i10);
    }

    public static final void h(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (Build.VERSION.SDK_INT >= 34) {
            try {
                activity.overrideActivityTransition(0, 0, 0, 0);
                activity.overrideActivityTransition(1, 0, 0, 0);
                return;
            } catch (Throwable unused) {
            }
        }
        try {
            activity.overridePendingTransition(0, 0);
            Unit unit = Unit.f60915a;
        } catch (Throwable unused2) {
        }
    }

    @Nullable
    public static final Unit i(@Nullable Window window, @ColorInt int i10) {
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(i10));
            return Unit.f60915a;
        }
        return null;
    }
}
