package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
/* compiled from: SuspendingPointerInputFilter.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PointerEventTimeoutCancellationException extends CancellationException {
    public static final int $stable = 0;

    public PointerEventTimeoutCancellationException(long j10) {
        super("Timed out waiting for " + j10 + " ms");
    }
}
