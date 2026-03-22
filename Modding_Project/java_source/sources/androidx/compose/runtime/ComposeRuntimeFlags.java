package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComposeRuntimeFlags.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalComposeApi
/* loaded from: classes.dex */
public final class ComposeRuntimeFlags {
    @NotNull
    public static final ComposeRuntimeFlags INSTANCE = new ComposeRuntimeFlags();
    public static boolean isMovingNestedMovableContentEnabled = true;
    public static final int $stable = 8;

    private ComposeRuntimeFlags() {
    }

    public static /* synthetic */ void isMovingNestedMovableContentEnabled$annotations() {
    }
}
