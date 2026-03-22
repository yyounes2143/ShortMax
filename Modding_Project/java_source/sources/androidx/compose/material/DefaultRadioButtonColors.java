package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RadioButton.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class DefaultRadioButtonColors implements RadioButtonColors {
    private final long disabledColor;
    private final long selectedColor;
    private final long unselectedColor;

    public /* synthetic */ DefaultRadioButtonColors(long j10, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultRadioButtonColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultRadioButtonColors defaultRadioButtonColors = (DefaultRadioButtonColors) obj;
        if (Color.m1843equalsimpl0(this.selectedColor, defaultRadioButtonColors.selectedColor) && Color.m1843equalsimpl0(this.unselectedColor, defaultRadioButtonColors.unselectedColor) && Color.m1843equalsimpl0(this.disabledColor, defaultRadioButtonColors.disabledColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Color.m1849hashCodeimpl(this.selectedColor) * 31) + Color.m1849hashCodeimpl(this.unselectedColor)) * 31) + Color.m1849hashCodeimpl(this.disabledColor);
    }

    @Override // androidx.compose.material.RadioButtonColors
    @Composable
    @NotNull
    public State<Color> radioColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        State<Color> rememberUpdatedState;
        composer.startReplaceableGroup(1243421834);
        if (!z10) {
            j10 = this.disabledColor;
        } else if (!z11) {
            j10 = this.unselectedColor;
        } else {
            j10 = this.selectedColor;
        }
        long j11 = j10;
        if (z10) {
            composer.startReplaceableGroup(-1052799218);
            rememberUpdatedState = SingleValueAnimationKt.m116animateColorAsStateKTwxG1Y(j11, AnimationSpecKt.tween$default(100, 0, null, 6, null), null, composer, 48, 4);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-1052799113);
            rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j11), composer, 0);
            composer.endReplaceableGroup();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    private DefaultRadioButtonColors(long j10, long j11, long j12) {
        this.selectedColor = j10;
        this.unselectedColor = j11;
        this.disabledColor = j12;
    }
}
