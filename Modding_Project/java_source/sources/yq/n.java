package yq;

import android.app.Activity;
import android.view.Window;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UiUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n f71131a = new n();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final cr.c f71132b = new er.b();

    private n() {
    }

    public static final void a(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        p.d(activity);
    }

    public static final boolean b(@Nullable Runnable runnable) {
        if (runnable == null) {
            return false;
        }
        return f71132b.b(runnable);
    }

    @Nullable
    public static final Unit c(@Nullable Window window, @ColorInt int i10) {
        return p.i(window, i10);
    }
}
