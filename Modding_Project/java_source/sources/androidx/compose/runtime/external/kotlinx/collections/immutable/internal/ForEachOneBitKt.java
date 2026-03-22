package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: ForEachOneBit.kt */
@Metadata
/* loaded from: classes.dex */
public final class ForEachOneBitKt {
    public static final void forEachOneBit(int i10, @NotNull Function2<? super Integer, ? super Integer, Unit> function2) {
        int i11 = 0;
        while (i10 != 0) {
            int lowestOneBit = Integer.lowestOneBit(i10);
            function2.invoke(Integer.valueOf(lowestOneBit), Integer.valueOf(i11));
            i11++;
            i10 ^= lowestOneBit;
        }
    }
}
