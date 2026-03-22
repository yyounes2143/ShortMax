package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Standard.kt */
@Metadata
/* loaded from: classes8.dex */
public final class NotImplementedError extends Error {
    public NotImplementedError() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotImplementedError(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    public /* synthetic */ NotImplementedError(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "An operation is not implemented." : str);
    }
}
