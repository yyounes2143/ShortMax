package kotlin.jvm.internal;

import java.util.Iterator;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterator.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ArrayIteratorKt {
    @NotNull
    public static final <T> Iterator<T> iterator(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayIterator(array);
    }
}
