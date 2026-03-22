package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DebugUtils.kt */
@Metadata
/* loaded from: classes.dex */
public final class DebugUtilsKt {
    public static final void ifDebug(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke();
    }
}
