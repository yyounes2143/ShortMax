package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composer.kt */
@InternalComposeTracingApi
@Metadata
/* loaded from: classes.dex */
public interface CompositionTracer {
    boolean isTraceInProgress();

    void traceEventEnd();

    void traceEventStart(int i10, int i11, int i12, @NotNull String str);
}
