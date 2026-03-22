package tp;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class n {
    public static final boolean a(int i10) {
        if (((i10 >> 24) & 255) == 255) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final <T> int[] b(@NotNull T[] tArr, @NotNull Function1<? super T, Integer> transform) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        int[] iArr = new int[tArr.length];
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Integer invoke = transform.invoke(tArr[i10]);
            if (invoke != null) {
                iArr[i10] = invoke.intValue();
            }
        }
        return iArr;
    }
}
