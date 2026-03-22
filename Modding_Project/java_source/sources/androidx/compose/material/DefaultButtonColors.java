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
/* compiled from: Button.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
final class DefaultButtonColors implements ButtonColors {
    private final long backgroundColor;
    private final long contentColor;
    private final long disabledBackgroundColor;
    private final long disabledContentColor;

    public /* synthetic */ DefaultButtonColors(long j10, long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13);
    }

    @Override // androidx.compose.material.ButtonColors
    @Composable
    @NotNull
    public State<Color> backgroundColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-655254499);
        if (z10) {
            j10 = this.backgroundColor;
        } else {
            j10 = this.disabledBackgroundColor;
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    @Override // androidx.compose.material.ButtonColors
    @Composable
    @NotNull
    public State<Color> contentColor(boolean z10, @Nullable Composer composer, int i10) {
        long j10;
        composer.startReplaceableGroup(-2133647540);
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
        if (obj == null || !Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(DefaultButtonColors.class), Reflection.getOrCreateKotlinClass(obj.getClass()))) {
            return false;
        }
        DefaultButtonColors defaultButtonColors = (DefaultButtonColors) obj;
        if (Color.m1843equalsimpl0(this.backgroundColor, defaultButtonColors.backgroundColor) && Color.m1843equalsimpl0(this.contentColor, defaultButtonColors.contentColor) && Color.m1843equalsimpl0(this.disabledBackgroundColor, defaultButtonColors.disabledBackgroundColor) && Color.m1843equalsimpl0(this.disabledContentColor, defaultButtonColors.disabledContentColor)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((Color.m1849hashCodeimpl(this.backgroundColor) * 31) + Color.m1849hashCodeimpl(this.contentColor)) * 31) + Color.m1849hashCodeimpl(this.disabledBackgroundColor)) * 31) + Color.m1849hashCodeimpl(this.disabledContentColor);
    }

    private DefaultButtonColors(long j10, long j11, long j12, long j13) {
        this.backgroundColor = j10;
        this.contentColor = j11;
        this.disabledBackgroundColor = j12;
        this.disabledContentColor = j13;
    }
}
