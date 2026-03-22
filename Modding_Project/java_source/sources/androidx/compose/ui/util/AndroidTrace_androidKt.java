package androidx.compose.ui.util;

import android.os.Trace;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidTrace.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidTrace_androidKt {
    public static final <T> T trace(@NotNull String sectionName, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(sectionName, "sectionName");
        Intrinsics.checkNotNullParameter(block, "block");
        Trace.beginSection(sectionName);
        try {
            return block.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            Trace.endSection();
            InlineMarker.finallyEnd(1);
        }
    }
}
