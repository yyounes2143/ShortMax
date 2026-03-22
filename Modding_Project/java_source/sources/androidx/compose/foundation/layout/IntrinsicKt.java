package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Intrinsic.kt */
@Metadata
/* loaded from: classes.dex */
public final class IntrinsicKt {

    /* compiled from: Intrinsic.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IntrinsicSize.values().length];
            iArr[IntrinsicSize.Min.ordinal()] = 1;
            iArr[IntrinsicSize.Max.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Stable
    @NotNull
    public static final Modifier height(@NotNull Modifier modifier, @NotNull IntrinsicSize intrinsicSize) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(intrinsicSize, "intrinsicSize");
        int i10 = WhenMappings.$EnumSwitchMapping$0[intrinsicSize.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return modifier.then(MaxIntrinsicHeightModifier.INSTANCE);
            }
            throw new NoWhenBranchMatchedException();
        }
        return modifier.then(MinIntrinsicHeightModifier.INSTANCE);
    }

    @Stable
    @NotNull
    public static final Modifier requiredHeight(@NotNull Modifier modifier, @NotNull IntrinsicSize intrinsicSize) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(intrinsicSize, "intrinsicSize");
        int i10 = WhenMappings.$EnumSwitchMapping$0[intrinsicSize.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return modifier.then(RequiredMaxIntrinsicHeightModifier.INSTANCE);
            }
            throw new NoWhenBranchMatchedException();
        }
        return modifier.then(RequiredMinIntrinsicHeightModifier.INSTANCE);
    }

    @Stable
    @NotNull
    public static final Modifier requiredWidth(@NotNull Modifier modifier, @NotNull IntrinsicSize intrinsicSize) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(intrinsicSize, "intrinsicSize");
        int i10 = WhenMappings.$EnumSwitchMapping$0[intrinsicSize.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return modifier.then(RequiredMaxIntrinsicWidthModifier.INSTANCE);
            }
            throw new NoWhenBranchMatchedException();
        }
        return modifier.then(RequiredMinIntrinsicWidthModifier.INSTANCE);
    }

    @Stable
    @NotNull
    public static final Modifier width(@NotNull Modifier modifier, @NotNull IntrinsicSize intrinsicSize) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(intrinsicSize, "intrinsicSize");
        int i10 = WhenMappings.$EnumSwitchMapping$0[intrinsicSize.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return modifier.then(MaxIntrinsicWidthModifier.INSTANCE);
            }
            throw new NoWhenBranchMatchedException();
        }
        return modifier.then(MinIntrinsicWidthModifier.INSTANCE);
    }
}
