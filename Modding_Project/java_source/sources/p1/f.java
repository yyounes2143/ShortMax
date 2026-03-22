package p1;

import android.view.View;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThrottleClick.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f {
    public static final void a(@NotNull View view, long j10, @NotNull TimeUnit unit, @NotNull Function1<? super View, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(unit, "unit");
        Intrinsics.checkNotNullParameter(block, "block");
        view.setOnClickListener(new g(j10, unit, block));
    }

    public static /* synthetic */ void b(View view, long j10, TimeUnit timeUnit, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 500;
        }
        if ((i10 & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        a(view, j10, timeUnit, function1);
    }
}
