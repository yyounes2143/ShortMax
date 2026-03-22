package d0;

import androidx.annotation.Px;
import coil.size.Scale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.NotNull;
/* compiled from: DecodeUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f49739a = new f();

    /* compiled from: DecodeUtils.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Scale.values().length];
            iArr[Scale.FILL.ordinal()] = 1;
            iArr[Scale.FIT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private f() {
    }

    public static final int a(@Px int i10, @Px int i11, @Px int i12, @Px int i13, @NotNull Scale scale) {
        int min;
        int highestOneBit = Integer.highestOneBit(i10 / i12);
        int highestOneBit2 = Integer.highestOneBit(i11 / i13);
        int i14 = a.$EnumSwitchMapping$0[scale.ordinal()];
        if (i14 != 1) {
            if (i14 == 2) {
                min = Math.max(highestOneBit, highestOneBit2);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            min = Math.min(highestOneBit, highestOneBit2);
        }
        return kotlin.ranges.e.e(min, 1);
    }

    public static final double b(@Px double d10, @Px double d11, @Px double d12, @Px double d13, @NotNull Scale scale) {
        double d14 = d12 / d10;
        double d15 = d13 / d11;
        int i10 = a.$EnumSwitchMapping$0[scale.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return Math.min(d14, d15);
            }
            throw new NoWhenBranchMatchedException();
        }
        return Math.max(d14, d15);
    }

    public static final double c(@Px int i10, @Px int i11, @Px int i12, @Px int i13, @NotNull Scale scale) {
        double d10 = i12 / i10;
        double d11 = i13 / i11;
        int i14 = a.$EnumSwitchMapping$0[scale.ordinal()];
        if (i14 != 1) {
            if (i14 == 2) {
                return Math.min(d10, d11);
            }
            throw new NoWhenBranchMatchedException();
        }
        return Math.max(d10, d11);
    }
}
