package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Exceptions.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CompletionHandlerException extends RuntimeException {
    public CompletionHandlerException(@NotNull String str, @NotNull Throwable th2) {
        super(str, th2);
    }
}
