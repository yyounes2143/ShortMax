package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LifecycleOwner.kt */
@Metadata
/* loaded from: classes2.dex */
public final class LifecycleOwnerKt {
    @NotNull
    public static final LifecycleCoroutineScope getLifecycleScope(@NotNull LifecycleOwner lifecycleOwner) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        return LifecycleKt.getCoroutineScope(lifecycleOwner.getLifecycle());
    }
}
