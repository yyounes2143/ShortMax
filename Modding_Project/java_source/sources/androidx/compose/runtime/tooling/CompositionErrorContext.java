package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionErrorContext.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionErrorContext {
    boolean attachComposeStackTrace(@NotNull Throwable th2, @NotNull Object obj);
}
