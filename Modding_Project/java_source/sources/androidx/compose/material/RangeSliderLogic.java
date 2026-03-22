package androidx.compose.material;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.State;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Slider.kt */
@Metadata
/* loaded from: classes.dex */
public final class RangeSliderLogic {
    @NotNull
    private final MutableInteractionSource endInteractionSource;
    @NotNull
    private final State<Function2<Boolean, Float, Unit>> onDrag;
    @NotNull
    private final State<Float> rawOffsetEnd;
    @NotNull
    private final State<Float> rawOffsetStart;
    @NotNull
    private final MutableInteractionSource startInteractionSource;

    /* JADX WARN: Multi-variable type inference failed */
    public RangeSliderLogic(@NotNull MutableInteractionSource startInteractionSource, @NotNull MutableInteractionSource endInteractionSource, @NotNull State<Float> rawOffsetStart, @NotNull State<Float> rawOffsetEnd, @NotNull State<? extends Function2<? super Boolean, ? super Float, Unit>> onDrag) {
        Intrinsics.checkNotNullParameter(startInteractionSource, "startInteractionSource");
        Intrinsics.checkNotNullParameter(endInteractionSource, "endInteractionSource");
        Intrinsics.checkNotNullParameter(rawOffsetStart, "rawOffsetStart");
        Intrinsics.checkNotNullParameter(rawOffsetEnd, "rawOffsetEnd");
        Intrinsics.checkNotNullParameter(onDrag, "onDrag");
        this.startInteractionSource = startInteractionSource;
        this.endInteractionSource = endInteractionSource;
        this.rawOffsetStart = rawOffsetStart;
        this.rawOffsetEnd = rawOffsetEnd;
        this.onDrag = onDrag;
    }

    @NotNull
    public final MutableInteractionSource activeInteraction(boolean z10) {
        if (z10) {
            return this.startInteractionSource;
        }
        return this.endInteractionSource;
    }

    public final void captureThumb(boolean z10, float f10, @NotNull Interaction interaction, @NotNull g0 scope) {
        State<Float> state;
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Function2<Boolean, Float, Unit> value = this.onDrag.getValue();
        Boolean valueOf = Boolean.valueOf(z10);
        if (z10) {
            state = this.rawOffsetStart;
        } else {
            state = this.rawOffsetEnd;
        }
        value.invoke(valueOf, Float.valueOf(f10 - state.getValue().floatValue()));
        g.d(scope, null, null, new RangeSliderLogic$captureThumb$1(this, z10, interaction, null), 3, null);
    }

    public final int compareOffsets(float f10) {
        return Float.compare(Math.abs(this.rawOffsetStart.getValue().floatValue() - f10), Math.abs(this.rawOffsetEnd.getValue().floatValue() - f10));
    }

    @NotNull
    public final MutableInteractionSource getEndInteractionSource() {
        return this.endInteractionSource;
    }

    @NotNull
    public final State<Function2<Boolean, Float, Unit>> getOnDrag() {
        return this.onDrag;
    }

    @NotNull
    public final State<Float> getRawOffsetEnd() {
        return this.rawOffsetEnd;
    }

    @NotNull
    public final State<Float> getRawOffsetStart() {
        return this.rawOffsetStart;
    }

    @NotNull
    public final MutableInteractionSource getStartInteractionSource() {
        return this.startInteractionSource;
    }
}
