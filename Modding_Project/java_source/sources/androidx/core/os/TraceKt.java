package androidx.core.os;

import android.os.Trace;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: Trace.kt */
@Metadata
/* loaded from: classes.dex */
public final class TraceKt {
    @c
    public static final <T> T trace(@NotNull String str, @NotNull Function0<? extends T> function0) {
        Trace.beginSection(str);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            Trace.endSection();
            InlineMarker.finallyEnd(1);
        }
    }
}
