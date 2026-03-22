package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequence.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Sequence<T> {
    @NotNull
    Iterator<T> iterator();
}
