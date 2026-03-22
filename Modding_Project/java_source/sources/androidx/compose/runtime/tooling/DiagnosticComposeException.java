package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiagnosticComposeException.jvm.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class DiagnosticComposeException extends RuntimeException {
    public static final int $stable = 8;
    @NotNull
    private final List<ComposeStackTraceFrame> trace;

    public DiagnosticComposeException(@NotNull List<ComposeStackTraceFrame> list) {
        this.trace = list;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Composition stack when thrown:");
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        sb2.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb2, "append(...)");
        ComposeStackTraceKt.appendStackTrace(sb2, this.trace);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
