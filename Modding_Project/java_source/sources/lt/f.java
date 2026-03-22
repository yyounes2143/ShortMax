package lt;

import kotlin.Metadata;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlowExceptions.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    public static final void a(@NotNull AbortFlowException abortFlowException, @NotNull Object obj) {
        if (abortFlowException.f61702a == obj) {
            return;
        }
        throw abortFlowException;
    }
}
