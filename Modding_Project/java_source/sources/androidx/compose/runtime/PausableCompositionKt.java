package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PausableComposition.kt */
@Metadata
/* loaded from: classes.dex */
public final class PausableCompositionKt {
    @NotNull
    public static final PausableComposition PausableComposition(@NotNull Applier<?> applier, @NotNull CompositionContext compositionContext) {
        return new CompositionImpl(compositionContext, applier, null, 4, null);
    }
}
