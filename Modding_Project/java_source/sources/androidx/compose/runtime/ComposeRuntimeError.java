package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ComposeRuntimeError extends IllegalStateException {
    public static final int $stable = 8;
    @NotNull
    private final String message;

    public ComposeRuntimeError(@NotNull String str) {
        this.message = str;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.message;
    }
}
