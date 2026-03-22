package yq;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final t f71142a = new t();

    private t() {
    }

    public static final void a(@NotNull ViewGroup container, @NotNull View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(view, "view");
        ViewUtilsKt.b(container, view, layoutParams);
    }

    @NotNull
    public static final ViewGroup.LayoutParams b() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    @Nullable
    public static final View c(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewUtilsKt.f(view);
    }

    public static final void d(@Nullable View view) {
        ViewUtilsKt.i(view);
    }

    public static final boolean e(int i10) {
        if (i10 == 0) {
            return true;
        }
        return false;
    }

    public static final boolean f(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewUtilsKt.j(view);
    }

    @Nullable
    public static final Unit g(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewUtilsKt.k(view);
    }

    @RequiresApi(api = 30)
    public static final void h(@NotNull View view) {
        int systemBars;
        int displayCutout;
        Intrinsics.checkNotNullParameter(view, "view");
        systemBars = WindowInsets.Type.systemBars();
        displayCutout = WindowInsets.Type.displayCutout();
        i(view, systemBars | displayCutout);
    }

    @RequiresApi(api = 30)
    public static final void i(@NotNull View view, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewUtilsKt.m(view, i10);
    }

    public static final void j(@Nullable View view) {
        ViewUtilsKt.o(view);
    }
}
