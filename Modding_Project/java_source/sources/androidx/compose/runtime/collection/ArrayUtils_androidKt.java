package androidx.compose.runtime.collection;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayUtils.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ArrayUtils_androidKt {
    @NotNull
    public static final <T> T[] fastCopyInto(@NotNull T[] tArr, @NotNull T[] tArr2, int i10, int i11, int i12) {
        System.arraycopy(tArr, i11, tArr2, i10, i12 - i11);
        return tArr2;
    }
}
