package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Expect.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class Expect_jvmKt {
    public static final void invokeComposable(@NotNull Composer composer, @NotNull Function2<? super Composer, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNull(function2, "null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>");
        ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(composer, 1);
    }
}
