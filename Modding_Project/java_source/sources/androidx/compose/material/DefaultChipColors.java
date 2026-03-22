package androidx.compose.material;

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
/* compiled from: Chip.kt */
@Immutable
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
final class DefaultChipColors implements ChipColors {
    private final long backgroundColor;
    private final long contentColor;
    private final long disabledBackgroundColor;
    private final long disabledContentColor;
    private final long disabledLeadingIconContentColor;
    private final long leadingIconContentColor;

    public /* synthetic */ DefaultChipColors(long j10, long j11, long j12, long j13, long j14, long j15, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15);
    }

    @Override // androidx.compose.material.ChipColors
    @Composable
    @NotNull
    public State<Color> backgroundColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-1593588247);
        if (z10) {
            j10 = this.backgroundColor;
        } else {
            j10 = this.disabledBackgroundColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.ChipColors
    @Composable
    @NotNull
    public State<Color> contentColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(483145880);
        if (z10) {
            j10 = this.contentColor;
        } else {
            j10 = this.disabledContentColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultChipColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultChipColors defaultChipColors = (DefaultChipColors) obj;
        if (Color.m1843equalsimpl0(this.backgroundColor, defaultChipColors.backgroundColor) && Color.m1843equalsimpl0(this.contentColor, defaultChipColors.contentColor) && Color.m1843equalsimpl0(this.leadingIconContentColor, defaultChipColors.leadingIconContentColor) && Color.m1843equalsimpl0(this.disabledBackgroundColor, defaultChipColors.disabledBackgroundColor) && Color.m1843equalsimpl0(this.disabledContentColor, defaultChipColors.disabledContentColor) && Color.m1843equalsimpl0(this.disabledLeadingIconContentColor, defaultChipColors.disabledLeadingIconContentColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((Color.m1849hashCodeimpl(this.backgroundColor) * 31) + Color.m1849hashCodeimpl(this.contentColor)) * 31) + Color.m1849hashCodeimpl(this.leadingIconContentColor)) * 31) + Color.m1849hashCodeimpl(this.disabledBackgroundColor)) * 31) + Color.m1849hashCodeimpl(this.disabledContentColor)) * 31) + Color.m1849hashCodeimpl(this.disabledLeadingIconContentColor);
    }

    @Override // androidx.compose.material.ChipColors
    @Composable
    @NotNull
    public State<Color> leadingIconContentColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(1955749013);
        if (z10) {
            j10 = this.leadingIconContentColor;
        } else {
            j10 = this.disabledLeadingIconContentColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    private DefaultChipColors(long j10, long j11, long j12, long j13, long j14, long j15) {
        this.backgroundColor = j10;
        this.contentColor = j11;
        this.leadingIconContentColor = j12;
        this.disabledBackgroundColor = j13;
        this.disabledContentColor = j14;
        this.disabledLeadingIconContentColor = j15;
    }
}
