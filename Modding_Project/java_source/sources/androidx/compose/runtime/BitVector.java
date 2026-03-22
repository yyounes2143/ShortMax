package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/BitVector\n+ 2 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n*L\n1#1,4061:1\n3601#1,5:4065\n3606#1,27:4071\n3601#1,5:4098\n3606#1,27:4104\n3911#2:4062\n3911#2:4063\n3911#2:4064\n3681#2:4070\n3681#2:4103\n3681#2:4131\n3681#2:4132\n3681#2:4133\n3911#2:4134\n3911#2:4135\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/BitVector\n*L\n3591#1:4065,5\n3591#1:4071,27\n3593#1:4098,5\n3593#1:4104,27\n3568#1:4062\n3574#1:4063\n3588#1:4064\n3591#1:4070\n3593#1:4103\n3605#1:4131\n3611#1:4132\n3628#1:4133\n3645#1:4134\n3656#1:4135\n*E\n"})
/* loaded from: classes.dex */
public final class BitVector {
    public static final int $stable = 8;
    private long first;
    @NotNull
    private long[] others;
    private long second;

    public BitVector() {
        long[] jArr;
        jArr = SlotTableKt.EmptyLongArray;
        this.others = jArr;
    }

    private final int nextBit(int i10, Function1<? super Long, Long> function1) {
        int numberOfTrailingZeros;
        if (i10 < 64 && (numberOfTrailingZeros = Long.numberOfTrailingZeros((function1.invoke(Long.valueOf(this.first)).longValue() >>> i10) << i10)) < 64) {
            return numberOfTrailingZeros;
        }
        if (i10 < 128) {
            int i11 = i10 - 64;
            int numberOfTrailingZeros2 = Long.numberOfTrailingZeros((function1.invoke(Long.valueOf(this.second)).longValue() >>> i11) << i11);
            if (numberOfTrailingZeros2 < 64) {
                return numberOfTrailingZeros2 + 64;
            }
        }
        int max = Math.max(i10, 128);
        int i12 = (max / 64) - 2;
        long[] jArr = this.others;
        int length = jArr.length;
        for (int i13 = i12; i13 < length; i13++) {
            long longValue = function1.invoke(Long.valueOf(jArr[i13])).longValue();
            if (i13 == i12) {
                int i14 = max % 64;
                longValue = (longValue >>> i14) << i14;
            }
            int numberOfTrailingZeros3 = Long.numberOfTrailingZeros(longValue);
            if (numberOfTrailingZeros3 < 64) {
                return (i13 * 64) + 128 + numberOfTrailingZeros3;
            }
        }
        return Integer.MAX_VALUE;
    }

    public final boolean get(int i10) {
        int i11;
        if (i10 < 64) {
            if (((1 << i10) & this.first) != 0) {
                return true;
            }
            return false;
        } else if (i10 < 128) {
            if (((1 << (i10 - 64)) & this.second) != 0) {
                return true;
            }
            return false;
        } else {
            long[] jArr = this.others;
            int length = jArr.length;
            if (length == 0 || (i10 / 64) - 2 >= length) {
                return false;
            }
            if (((1 << (i10 % 64)) & jArr[i11]) != 0) {
                return true;
            }
            return false;
        }
    }

    public final int getSize() {
        return (this.others.length + 2) * 64;
    }

    public final int nextClear(int i10) {
        int numberOfTrailingZeros;
        if (i10 >= 64 || (numberOfTrailingZeros = Long.numberOfTrailingZeros(((~this.first) >>> i10) << i10)) >= 64) {
            if (i10 < 128) {
                int i11 = i10 - 64;
                int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(((~this.second) >>> i11) << i11);
                if (numberOfTrailingZeros2 < 64) {
                    return numberOfTrailingZeros2 + 64;
                }
            }
            int max = Math.max(i10, 128);
            int i12 = (max / 64) - 2;
            long[] jArr = this.others;
            int length = jArr.length;
            for (int i13 = i12; i13 < length; i13++) {
                long j10 = ~jArr[i13];
                if (i13 == i12) {
                    int i14 = max % 64;
                    j10 = (j10 >>> i14) << i14;
                }
                int numberOfTrailingZeros3 = Long.numberOfTrailingZeros(j10);
                if (numberOfTrailingZeros3 < 64) {
                    return (i13 * 64) + 128 + numberOfTrailingZeros3;
                }
            }
            return Integer.MAX_VALUE;
        }
        return numberOfTrailingZeros;
    }

    public final int nextSet(int i10) {
        int numberOfTrailingZeros;
        if (i10 >= 64 || (numberOfTrailingZeros = Long.numberOfTrailingZeros((this.first >>> i10) << i10)) >= 64) {
            if (i10 < 128) {
                int i11 = i10 - 64;
                int numberOfTrailingZeros2 = Long.numberOfTrailingZeros((this.second >>> i11) << i11);
                if (numberOfTrailingZeros2 < 64) {
                    return numberOfTrailingZeros2 + 64;
                }
            }
            int max = Math.max(i10, 128);
            int i12 = (max / 64) - 2;
            long[] jArr = this.others;
            int length = jArr.length;
            for (int i13 = i12; i13 < length; i13++) {
                long j10 = jArr[i13];
                if (i13 == i12) {
                    int i14 = max % 64;
                    j10 = (j10 >>> i14) << i14;
                }
                int numberOfTrailingZeros3 = Long.numberOfTrailingZeros(j10);
                if (numberOfTrailingZeros3 < 64) {
                    return (i13 * 64) + 128 + numberOfTrailingZeros3;
                }
            }
            return Integer.MAX_VALUE;
        }
        return numberOfTrailingZeros;
    }

    public final void set(int i10, boolean z10) {
        if (i10 < 64) {
            this.first = ((z10 ? 1L : 0L) << i10) | ((~(1 << i10)) & this.first);
        } else if (i10 < 128) {
            this.second = ((z10 ? 1L : 0L) << i10) | ((~(1 << (i10 - 64))) & this.second);
        } else {
            int i11 = i10 / 64;
            int i12 = i11 - 2;
            int i13 = i10 % 64;
            long j10 = 1 << i13;
            long[] jArr = this.others;
            if (i12 >= jArr.length) {
                jArr = Arrays.copyOf(jArr, i11 - 1);
                Intrinsics.checkNotNullExpressionValue(jArr, "copyOf(...)");
                this.others = jArr;
            }
            jArr[i12] = ((z10 ? 1L : 0L) << i13) | ((~j10) & jArr[i12]);
        }
    }

    public final void setRange(int i10, int i11) {
        long j10;
        int i12;
        if (i10 < i11) {
            j10 = -1;
        } else {
            j10 = 0;
        }
        int i13 = 0;
        if (i10 < 64) {
            i12 = 1;
        } else {
            i12 = 0;
        }
        this.first = (((i12 * j10) >>> (64 - (Math.min(64, i11) - i10))) << i10) | this.first;
        if (i11 > 64) {
            int max = Math.max(i10, 64);
            if (max < 128) {
                i13 = 1;
            }
            this.second = (((j10 * i13) >>> (128 - (Math.min(128, i11) - max))) << max) | this.second;
            if (i11 > 128) {
                for (int max2 = Math.max(max, 128); max2 < i11; max2++) {
                    set(max2, true);
                }
            }
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("BitVector [");
        int size = getSize();
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            if (get(i10)) {
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append(i10);
                z10 = false;
            }
        }
        sb2.append(']');
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }
}
