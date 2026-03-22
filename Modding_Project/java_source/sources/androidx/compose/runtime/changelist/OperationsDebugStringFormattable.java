package androidx.compose.runtime.changelist;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Operations.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public abstract class OperationsDebugStringFormattable {
    public static final int $stable = 0;

    public static /* synthetic */ String toDebugString$default(OperationsDebugStringFormattable operationsDebugStringFormattable, String str, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                str = "  ";
            }
            return operationsDebugStringFormattable.toDebugString(str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toDebugString");
    }

    @NotNull
    public abstract String toDebugString(@NotNull String str);
}
