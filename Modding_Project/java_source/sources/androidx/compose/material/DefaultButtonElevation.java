package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Button.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
final class DefaultButtonElevation implements ButtonElevation {
    private final float defaultElevation;
    private final float disabledElevation;
    private final float focusedElevation;
    private final float hoveredElevation;
    private final float pressedElevation;

    public /* synthetic */ DefaultButtonElevation(float f10, float f11, float f12, float f13, float f14, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, f14);
    }

    @Override // androidx.compose.material.ButtonElevation
    @Composable
    @NotNull
    public State<Dp> elevation(boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        float f10;
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(-1588756907);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt.mutableStateListOf();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue;
        EffectsKt.LaunchedEffect(interactionSource, new DefaultButtonElevation$elevation$1(interactionSource, snapshotStateList, null), composer, (i10 >> 3) & 14);
        Interaction interaction = (Interaction) CollectionsKt.D0(snapshotStateList);
        if (!z10) {
            f10 = this.disabledElevation;
        } else if (interaction instanceof PressInteraction.Press) {
            f10 = this.pressedElevation;
        } else if (interaction instanceof HoverInteraction.Enter) {
            f10 = this.hoveredElevation;
        } else if (interaction instanceof FocusInteraction.Focus) {
            f10 = this.focusedElevation;
        } else {
            f10 = this.defaultElevation;
        }
        float f11 = f10;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Animatable(Dp.m4047boximpl(f11), VectorConvertersKt.getVectorConverter(Dp.Companion), null, 4, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue2;
        if (!z10) {
            composer.startReplaceableGroup(-1598807481);
            EffectsKt.LaunchedEffect(Dp.m4047boximpl(f11), new DefaultButtonElevation$elevation$2(animatable, f11, null), composer, 0);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-1598807310);
            EffectsKt.LaunchedEffect(Dp.m4047boximpl(f11), new DefaultButtonElevation$elevation$3(animatable, this, f11, interaction, null), composer, 0);
            composer.endReplaceableGroup();
        }
        State<Dp> asState = animatable.asState();
        composer.endReplaceableGroup();
        return asState;
    }

    private DefaultButtonElevation(float f10, float f11, float f12, float f13, float f14) {
        this.defaultElevation = f10;
        this.pressedElevation = f11;
        this.disabledElevation = f12;
        this.hoveredElevation = f13;
        this.focusedElevation = f14;
    }
}
