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
/* compiled from: Switch.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class DefaultSwitchColors implements SwitchColors {
    private final long checkedThumbColor;
    private final long checkedTrackColor;
    private final long disabledCheckedThumbColor;
    private final long disabledCheckedTrackColor;
    private final long disabledUncheckedThumbColor;
    private final long disabledUncheckedTrackColor;
    private final long uncheckedThumbColor;
    private final long uncheckedTrackColor;

    public /* synthetic */ DefaultSwitchColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15, j16, j17);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultSwitchColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultSwitchColors defaultSwitchColors = (DefaultSwitchColors) obj;
        if (Color.m1843equalsimpl0(this.checkedThumbColor, defaultSwitchColors.checkedThumbColor) && Color.m1843equalsimpl0(this.checkedTrackColor, defaultSwitchColors.checkedTrackColor) && Color.m1843equalsimpl0(this.uncheckedThumbColor, defaultSwitchColors.uncheckedThumbColor) && Color.m1843equalsimpl0(this.uncheckedTrackColor, defaultSwitchColors.uncheckedTrackColor) && Color.m1843equalsimpl0(this.disabledCheckedThumbColor, defaultSwitchColors.disabledCheckedThumbColor) && Color.m1843equalsimpl0(this.disabledCheckedTrackColor, defaultSwitchColors.disabledCheckedTrackColor) && Color.m1843equalsimpl0(this.disabledUncheckedThumbColor, defaultSwitchColors.disabledUncheckedThumbColor) && Color.m1843equalsimpl0(this.disabledUncheckedTrackColor, defaultSwitchColors.disabledUncheckedTrackColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((Color.m1849hashCodeimpl(this.checkedThumbColor) * 31) + Color.m1849hashCodeimpl(this.checkedTrackColor)) * 31) + Color.m1849hashCodeimpl(this.uncheckedThumbColor)) * 31) + Color.m1849hashCodeimpl(this.uncheckedTrackColor)) * 31) + Color.m1849hashCodeimpl(this.disabledCheckedThumbColor)) * 31) + Color.m1849hashCodeimpl(this.disabledCheckedTrackColor)) * 31) + Color.m1849hashCodeimpl(this.disabledUncheckedThumbColor)) * 31) + Color.m1849hashCodeimpl(this.disabledUncheckedTrackColor);
    }

    @Override // androidx.compose.material.SwitchColors
    @Composable
    @NotNull
    public State<Color> thumbColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-66424183);
        if (z10) {
            if (z11) {
                j10 = this.checkedThumbColor;
            } else {
                j10 = this.uncheckedThumbColor;
            }
        } else if (z11) {
            j10 = this.disabledCheckedThumbColor;
        } else {
            j10 = this.disabledUncheckedThumbColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.SwitchColors
    @Composable
    @NotNull
    public State<Color> trackColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-1176343362);
        if (z10) {
            if (z11) {
                j10 = this.checkedTrackColor;
            } else {
                j10 = this.uncheckedTrackColor;
            }
        } else if (z11) {
            j10 = this.disabledCheckedTrackColor;
        } else {
            j10 = this.disabledUncheckedTrackColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    private DefaultSwitchColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17) {
        this.checkedThumbColor = j10;
        this.checkedTrackColor = j11;
        this.uncheckedThumbColor = j12;
        this.uncheckedTrackColor = j13;
        this.disabledCheckedThumbColor = j14;
        this.disabledCheckedTrackColor = j15;
        this.disabledUncheckedThumbColor = j16;
        this.disabledUncheckedTrackColor = j17;
    }
}
