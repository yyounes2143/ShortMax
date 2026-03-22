package androidx.compose.runtime;

import androidx.compose.runtime.internal.PlatformOptimizedCancellationException;
import kotlin.Metadata;
/* compiled from: Effects.kt */
@Metadata
/* loaded from: classes.dex */
final class ForgottenCoroutineScopeException extends PlatformOptimizedCancellationException {
    public ForgottenCoroutineScopeException() {
        super("rememberCoroutineScope left the composition");
    }
}
