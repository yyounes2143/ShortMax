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
/* compiled from: Slider.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class DefaultSliderColors implements SliderColors {
    private final long activeTickColor;
    private final long activeTrackColor;
    private final long disabledActiveTickColor;
    private final long disabledActiveTrackColor;
    private final long disabledInactiveTickColor;
    private final long disabledInactiveTrackColor;
    private final long disabledThumbColor;
    private final long inactiveTickColor;
    private final long inactiveTrackColor;
    private final long thumbColor;

    public /* synthetic */ DefaultSliderColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultSliderColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultSliderColors defaultSliderColors = (DefaultSliderColors) obj;
        if (Color.m1843equalsimpl0(this.thumbColor, defaultSliderColors.thumbColor) && Color.m1843equalsimpl0(this.disabledThumbColor, defaultSliderColors.disabledThumbColor) && Color.m1843equalsimpl0(this.activeTrackColor, defaultSliderColors.activeTrackColor) && Color.m1843equalsimpl0(this.inactiveTrackColor, defaultSliderColors.inactiveTrackColor) && Color.m1843equalsimpl0(this.disabledActiveTrackColor, defaultSliderColors.disabledActiveTrackColor) && Color.m1843equalsimpl0(this.disabledInactiveTrackColor, defaultSliderColors.disabledInactiveTrackColor) && Color.m1843equalsimpl0(this.activeTickColor, defaultSliderColors.activeTickColor) && Color.m1843equalsimpl0(this.inactiveTickColor, defaultSliderColors.inactiveTickColor) && Color.m1843equalsimpl0(this.disabledActiveTickColor, defaultSliderColors.disabledActiveTickColor) && Color.m1843equalsimpl0(this.disabledInactiveTickColor, defaultSliderColors.disabledInactiveTickColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((Color.m1849hashCodeimpl(this.thumbColor) * 31) + Color.m1849hashCodeimpl(this.disabledThumbColor)) * 31) + Color.m1849hashCodeimpl(this.activeTrackColor)) * 31) + Color.m1849hashCodeimpl(this.inactiveTrackColor)) * 31) + Color.m1849hashCodeimpl(this.disabledActiveTrackColor)) * 31) + Color.m1849hashCodeimpl(this.disabledInactiveTrackColor)) * 31) + Color.m1849hashCodeimpl(this.activeTickColor)) * 31) + Color.m1849hashCodeimpl(this.inactiveTickColor)) * 31) + Color.m1849hashCodeimpl(this.disabledActiveTickColor)) * 31) + Color.m1849hashCodeimpl(this.disabledInactiveTickColor);
    }

    @Override // androidx.compose.material.SliderColors
    @Composable
    @NotNull
    public State<Color> thumbColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-1733795637);
        if (z10) {
            j10 = this.thumbColor;
        } else {
            j10 = this.disabledThumbColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.SliderColors
    @Composable
    @NotNull
    public State<Color> tickColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-1491563694);
        if (z10) {
            if (z11) {
                j10 = this.activeTickColor;
            } else {
                j10 = this.inactiveTickColor;
            }
        } else if (z11) {
            j10 = this.disabledActiveTickColor;
        } else {
            j10 = this.disabledInactiveTickColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.SliderColors
    @Composable
    @NotNull
    public State<Color> trackColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(1575395620);
        if (z10) {
            if (z11) {
                j10 = this.activeTrackColor;
            } else {
                j10 = this.inactiveTrackColor;
            }
        } else if (z11) {
            j10 = this.disabledActiveTrackColor;
        } else {
            j10 = this.disabledInactiveTrackColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    private DefaultSliderColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19) {
        this.thumbColor = j10;
        this.disabledThumbColor = j11;
        this.activeTrackColor = j12;
        this.inactiveTrackColor = j13;
        this.disabledActiveTrackColor = j14;
        this.disabledInactiveTrackColor = j15;
        this.activeTickColor = j16;
        this.inactiveTickColor = j17;
        this.disabledActiveTickColor = j18;
        this.disabledInactiveTickColor = j19;
    }
}
