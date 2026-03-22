package a;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineDebugging.kt */
@Metadata
/* loaded from: classes.dex */
public final class a {
    @NotNull
    public final StackTraceElement a() {
        StackTraceElement b10;
        b10 = b.b(new Exception(), c.class.getSimpleName());
        return b10;
    }
}
