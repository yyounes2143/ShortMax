package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
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
/* compiled from: TextFieldDefaults.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class DefaultTextFieldColors implements TextFieldColors {
    private final long backgroundColor;
    private final long cursorColor;
    private final long disabledIndicatorColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconColor;
    private final long disabledPlaceholderColor;
    private final long disabledTextColor;
    private final long disabledTrailingIconColor;
    private final long errorCursorColor;
    private final long errorIndicatorColor;
    private final long errorLabelColor;
    private final long errorLeadingIconColor;
    private final long errorTrailingIconColor;
    private final long focusedIndicatorColor;
    private final long focusedLabelColor;
    private final long leadingIconColor;
    private final long placeholderColor;
    private final long textColor;
    private final long trailingIconColor;
    private final long unfocusedIndicatorColor;
    private final long unfocusedLabelColor;

    public /* synthetic */ DefaultTextFieldColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30);
    }

    /* renamed from: indicatorColor$lambda-0  reason: not valid java name */
    private static final boolean m1038indicatorColor$lambda0(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* renamed from: labelColor$lambda-1  reason: not valid java name */
    private static final boolean m1039labelColor$lambda1(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> backgroundColor(boolean z10, @Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1423938813);
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(this.backgroundColor), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> cursorColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-1446422485);
        if (z10) {
            j10 = this.errorCursorColor;
        } else {
            j10 = this.cursorColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultTextFieldColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) obj;
        if (Color.m1843equalsimpl0(this.textColor, defaultTextFieldColors.textColor) && Color.m1843equalsimpl0(this.disabledTextColor, defaultTextFieldColors.disabledTextColor) && Color.m1843equalsimpl0(this.cursorColor, defaultTextFieldColors.cursorColor) && Color.m1843equalsimpl0(this.errorCursorColor, defaultTextFieldColors.errorCursorColor) && Color.m1843equalsimpl0(this.focusedIndicatorColor, defaultTextFieldColors.focusedIndicatorColor) && Color.m1843equalsimpl0(this.unfocusedIndicatorColor, defaultTextFieldColors.unfocusedIndicatorColor) && Color.m1843equalsimpl0(this.errorIndicatorColor, defaultTextFieldColors.errorIndicatorColor) && Color.m1843equalsimpl0(this.disabledIndicatorColor, defaultTextFieldColors.disabledIndicatorColor) && Color.m1843equalsimpl0(this.leadingIconColor, defaultTextFieldColors.leadingIconColor) && Color.m1843equalsimpl0(this.disabledLeadingIconColor, defaultTextFieldColors.disabledLeadingIconColor) && Color.m1843equalsimpl0(this.errorLeadingIconColor, defaultTextFieldColors.errorLeadingIconColor) && Color.m1843equalsimpl0(this.trailingIconColor, defaultTextFieldColors.trailingIconColor) && Color.m1843equalsimpl0(this.disabledTrailingIconColor, defaultTextFieldColors.disabledTrailingIconColor) && Color.m1843equalsimpl0(this.errorTrailingIconColor, defaultTextFieldColors.errorTrailingIconColor) && Color.m1843equalsimpl0(this.backgroundColor, defaultTextFieldColors.backgroundColor) && Color.m1843equalsimpl0(this.focusedLabelColor, defaultTextFieldColors.focusedLabelColor) && Color.m1843equalsimpl0(this.unfocusedLabelColor, defaultTextFieldColors.unfocusedLabelColor) && Color.m1843equalsimpl0(this.disabledLabelColor, defaultTextFieldColors.disabledLabelColor) && Color.m1843equalsimpl0(this.errorLabelColor, defaultTextFieldColors.errorLabelColor) && Color.m1843equalsimpl0(this.placeholderColor, defaultTextFieldColors.placeholderColor) && Color.m1843equalsimpl0(this.disabledPlaceholderColor, defaultTextFieldColors.disabledPlaceholderColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((Color.m1849hashCodeimpl(this.textColor) * 31) + Color.m1849hashCodeimpl(this.disabledTextColor)) * 31) + Color.m1849hashCodeimpl(this.cursorColor)) * 31) + Color.m1849hashCodeimpl(this.errorCursorColor)) * 31) + Color.m1849hashCodeimpl(this.focusedIndicatorColor)) * 31) + Color.m1849hashCodeimpl(this.unfocusedIndicatorColor)) * 31) + Color.m1849hashCodeimpl(this.errorIndicatorColor)) * 31) + Color.m1849hashCodeimpl(this.disabledIndicatorColor)) * 31) + Color.m1849hashCodeimpl(this.leadingIconColor)) * 31) + Color.m1849hashCodeimpl(this.disabledLeadingIconColor)) * 31) + Color.m1849hashCodeimpl(this.errorLeadingIconColor)) * 31) + Color.m1849hashCodeimpl(this.trailingIconColor)) * 31) + Color.m1849hashCodeimpl(this.disabledTrailingIconColor)) * 31) + Color.m1849hashCodeimpl(this.errorTrailingIconColor)) * 31) + Color.m1849hashCodeimpl(this.backgroundColor)) * 31) + Color.m1849hashCodeimpl(this.focusedLabelColor)) * 31) + Color.m1849hashCodeimpl(this.unfocusedLabelColor)) * 31) + Color.m1849hashCodeimpl(this.disabledLabelColor)) * 31) + Color.m1849hashCodeimpl(this.errorLabelColor)) * 31) + Color.m1849hashCodeimpl(this.placeholderColor)) * 31) + Color.m1849hashCodeimpl(this.disabledPlaceholderColor);
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> indicatorColor(boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        long j10;
        State<Color> rememberUpdatedState;
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(998675979);
        State<Boolean> collectIsFocusedAsState = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composer, (i10 >> 6) & 14);
        if (!z10) {
            j10 = this.disabledIndicatorColor;
        } else if (z11) {
            j10 = this.errorIndicatorColor;
        } else if (m1038indicatorColor$lambda0(collectIsFocusedAsState)) {
            j10 = this.focusedIndicatorColor;
        } else {
            j10 = this.unfocusedIndicatorColor;
        }
        long j11 = j10;
        if (z10) {
            composer.startReplaceableGroup(-2054190426);
            rememberUpdatedState = SingleValueAnimationKt.m116animateColorAsStateKTwxG1Y(j11, AnimationSpecKt.tween$default(150, 0, null, 6, null), null, composer, 48, 4);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-2054190321);
            rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j11), composer, 0);
            composer.endReplaceableGroup();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> labelColor(boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        long j10;
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(727091888);
        State<Boolean> collectIsFocusedAsState = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composer, (i10 >> 6) & 14);
        if (!z10) {
            j10 = this.disabledLabelColor;
        } else if (z11) {
            j10 = this.errorLabelColor;
        } else if (m1039labelColor$lambda1(collectIsFocusedAsState)) {
            j10 = this.focusedLabelColor;
        } else {
            j10 = this.unfocusedLabelColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> leadingIconColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(1016171324);
        if (!z10) {
            j10 = this.disabledLeadingIconColor;
        } else if (z11) {
            j10 = this.errorLeadingIconColor;
        } else {
            j10 = this.leadingIconColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> placeholderColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(264799724);
        if (z10) {
            j10 = this.placeholderColor;
        } else {
            j10 = this.disabledPlaceholderColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> textColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(9804418);
        if (z10) {
            j10 = this.textColor;
        } else {
            j10 = this.disabledTextColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> trailingIconColor(boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(225259054);
        if (!z10) {
            j10 = this.disabledTrailingIconColor;
        } else if (z11) {
            j10 = this.errorTrailingIconColor;
        } else {
            j10 = this.trailingIconColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    private DefaultTextFieldColors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30) {
        this.textColor = j10;
        this.disabledTextColor = j11;
        this.cursorColor = j12;
        this.errorCursorColor = j13;
        this.focusedIndicatorColor = j14;
        this.unfocusedIndicatorColor = j15;
        this.errorIndicatorColor = j16;
        this.disabledIndicatorColor = j17;
        this.leadingIconColor = j18;
        this.disabledLeadingIconColor = j19;
        this.errorLeadingIconColor = j20;
        this.trailingIconColor = j21;
        this.disabledTrailingIconColor = j22;
        this.errorTrailingIconColor = j23;
        this.backgroundColor = j24;
        this.focusedLabelColor = j25;
        this.unfocusedLabelColor = j26;
        this.disabledLabelColor = j27;
        this.errorLabelColor = j28;
        this.placeholderColor = j29;
        this.disabledPlaceholderColor = j30;
    }
}
