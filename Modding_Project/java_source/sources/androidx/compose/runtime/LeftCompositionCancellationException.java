package androidx.compose.runtime;

import androidx.compose.runtime.internal.PlatformOptimizedCancellationException;
import kotlin.Metadata;
/* compiled from: Effects.kt */
@Metadata
/* loaded from: classes.dex */
final class LeftCompositionCancellationException extends PlatformOptimizedCancellationException {
    public LeftCompositionCancellationException() {
        super("The coroutine scope left the composition");
    }
}
