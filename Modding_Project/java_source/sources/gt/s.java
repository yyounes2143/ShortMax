package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompletableJob.kt */
@Metadata
/* loaded from: classes8.dex */
public interface s extends kotlinx.coroutines.r {
    boolean complete();

    boolean d(@NotNull Throwable th2);
}
