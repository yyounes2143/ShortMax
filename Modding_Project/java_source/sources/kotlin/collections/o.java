package kotlin.collections;

import java.lang.reflect.Array;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArraysJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public class o {
    @NotNull
    public static final <T> T[] a(@NotNull T[] reference, int i10) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Object newInstance = Array.newInstance(reference.getClass().getComponentType(), i10);
        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (T[]) ((Object[]) newInstance);
    }

    public static <T> int b(@Nullable T[] tArr) {
        return Arrays.deepHashCode(tArr);
    }

    public static final void c(int i10, int i11) {
        if (i10 <= i11) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is greater than size (" + i11 + ").");
    }
}
