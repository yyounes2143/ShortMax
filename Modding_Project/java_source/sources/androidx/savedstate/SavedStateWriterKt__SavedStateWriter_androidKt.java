package androidx.savedstate;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateWriter.android.kt */
@Metadata
/* loaded from: classes2.dex */
final /* synthetic */ class SavedStateWriterKt__SavedStateWriter_androidKt {
    @NotNull
    public static final <T> ArrayList<T> toArrayListUnsafe(@NotNull Collection<?> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        if (collection instanceof ArrayList) {
            return (ArrayList) collection;
        }
        return new ArrayList<>((Collection<? extends T>) collection);
    }
}
