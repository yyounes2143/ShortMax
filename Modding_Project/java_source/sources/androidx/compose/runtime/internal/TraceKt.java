package androidx.compose.runtime.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Trace.kt */
@Metadata
/* loaded from: classes.dex */
public final class TraceKt {
    public static final <T> T trace(@NotNull String str, @NotNull Function0<? extends T> function0) {
        Trace trace = Trace.INSTANCE;
        Object beginSection = trace.beginSection(str);
        try {
            T invoke = function0.invoke();
            InlineMarker.finallyStart(1);
            trace.endSection(beginSection);
            InlineMarker.finallyEnd(1);
            return invoke;
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            Trace.INSTANCE.endSection(beginSection);
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }
}
