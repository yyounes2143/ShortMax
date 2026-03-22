package m1;

import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnDebounceClickListener.kt */
@Metadata
/* loaded from: classes3.dex */
public final class d {
    public static final void a(@NotNull View view, long j10, @NotNull Function1<? super View, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        view.setOnClickListener(new c(j10, block));
    }
}
