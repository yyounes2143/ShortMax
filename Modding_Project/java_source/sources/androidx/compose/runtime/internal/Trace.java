package androidx.compose.runtime.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Trace.android.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class Trace {
    public static final int $stable = 0;
    @NotNull
    public static final Trace INSTANCE = new Trace();

    private Trace() {
    }

    @Nullable
    public final Object beginSection(@NotNull String str) {
        android.os.Trace.beginSection(str);
        return null;
    }

    public final void endSection(@Nullable Object obj) {
        android.os.Trace.endSection();
    }
}
