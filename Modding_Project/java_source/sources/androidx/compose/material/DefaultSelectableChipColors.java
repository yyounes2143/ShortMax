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
final class DefaultSelectableChipColors implements SelectableChipColors {
    private final long backgroundColor;
    private final long contentColor;
    private final long disabledBackgroundColor;
    private final long disabledContentColor;
    private final long disabledLeadingIconColor;
    private final long leadingIconColor;
    private final long selectedBackgroundColor;
    private final long selectedContentColor;
    private final long selectedLeadingIconColor;

    public /* synthetic */ DefaultSelectableChipColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15, j16, j17, j18);
    }

    @Override // androidx.compose.material.SelectableChipColors
    @Composable
    @NotNull
    public State<Color> backgroundColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-403836585);
        if (!z10) {
            j10 = this.disabledBackgroundColor;
        } else if (!z11) {
            j10 = this.backgroundColor;
        } else {
            j10 = this.selectedBackgroundColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.SelectableChipColors
    @Composable
    @NotNull
    public State<Color> contentColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(2025240134);
        if (!z10) {
            j10 = this.disabledContentColor;
        } else if (!z11) {
            j10 = this.contentColor;
        } else {
            j10 = this.selectedContentColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultSelectableChipColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultSelectableChipColors defaultSelectableChipColors = (DefaultSelectableChipColors) obj;
        if (Color.m1843equalsimpl0(this.backgroundColor, defaultSelectableChipColors.backgroundColor) && Color.m1843equalsimpl0(this.contentColor, defaultSelectableChipColors.contentColor) && Color.m1843equalsimpl0(this.leadingIconColor, defaultSelectableChipColors.leadingIconColor) && Color.m1843equalsimpl0(this.disabledBackgroundColor, defaultSelectableChipColors.disabledBackgroundColor) && Color.m1843equalsimpl0(this.disabledContentColor, defaultSelectableChipColors.disabledContentColor) && Color.m1843equalsimpl0(this.disabledLeadingIconColor, defaultSelectableChipColors.disabledLeadingIconColor) && Color.m1843equalsimpl0(this.selectedBackgroundColor, defaultSelectableChipColors.selectedBackgroundColor) && Color.m1843equalsimpl0(this.selectedContentColor, defaultSelectableChipColors.selectedContentColor) && Color.m1843equalsimpl0(this.selectedLeadingIconColor, defaultSelectableChipColors.selectedLeadingIconColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((Color.m1849hashCodeimpl(this.backgroundColor) * 31) + Color.m1849hashCodeimpl(this.contentColor)) * 31) + Color.m1849hashCodeimpl(this.leadingIconColor)) * 31) + Color.m1849hashCodeimpl(this.disabledBackgroundColor)) * 31) + Color.m1849hashCodeimpl(this.disabledContentColor)) * 31) + Color.m1849hashCodeimpl(this.disabledLeadingIconColor)) * 31) + Color.m1849hashCodeimpl(this.selectedBackgroundColor)) * 31) + Color.m1849hashCodeimpl(this.selectedContentColor)) * 31) + Color.m1849hashCodeimpl(this.selectedLeadingIconColor);
    }

    @Override // androidx.compose.material.SelectableChipColors
    @Composable
    @NotNull
    public State<Color> leadingIconColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(189838188);
        if (!z10) {
            j10 = this.disabledLeadingIconColor;
        } else if (!z11) {
            j10 = this.leadingIconColor;
        } else {
            j10 = this.selectedLeadingIconColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    private DefaultSelectableChipColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18) {
        this.backgroundColor = j10;
        this.contentColor = j11;
        this.leadingIconColor = j12;
        this.disabledBackgroundColor = j13;
        this.disabledContentColor = j14;
        this.disabledLeadingIconColor = j15;
        this.selectedBackgroundColor = j16;
        this.selectedContentColor = j17;
        this.selectedLeadingIconColor = j18;
    }
}
