package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
/* compiled from: TextFieldDefaults.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldDefaultsKt {
    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    /* renamed from: animateBorderStrokeAsState-NuRrP5Q  reason: not valid java name */
    public static final State<BorderStroke> m1254animateBorderStrokeAsStateNuRrP5Q(boolean z10, boolean z11, InteractionSource interactionSource, TextFieldColors textFieldColors, float f10, float f11, Composer composer, int i10) {
        float f12;
        State<Dp> rememberUpdatedState;
        composer.startReplaceableGroup(1097899920);
        State<Boolean> collectIsFocusedAsState = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composer, (i10 >> 6) & 14);
        State<Color> indicatorColor = textFieldColors.indicatorColor(z10, z11, interactionSource, composer, i10 & 8190);
        if (m1255animateBorderStrokeAsState_NuRrP5Q$lambda0(collectIsFocusedAsState)) {
            f12 = f10;
        } else {
            f12 = f11;
        }
        if (z10) {
            composer.startReplaceableGroup(1685712037);
            rememberUpdatedState = AnimateAsStateKt.m129animateDpAsStateKz89ssw(f12, AnimationSpecKt.tween$default(150, 0, null, 6, null), null, composer, 48, 4);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(1685712135);
            rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Dp.m4047boximpl(f11), composer, (i10 >> 15) & 14);
            composer.endReplaceableGroup();
        }
        State<BorderStroke> rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(new BorderStroke(rememberUpdatedState.getValue().m4063unboximpl(), new SolidColor(indicatorColor.getValue().m1852unboximpl(), null), null), composer, 0);
        composer.endReplaceableGroup();
        return rememberUpdatedState2;
    }

    /* renamed from: animateBorderStrokeAsState_NuRrP5Q$lambda-0  reason: not valid java name */
    private static final boolean m1255animateBorderStrokeAsState_NuRrP5Q$lambda0(State<Boolean> state) {
        return state.getValue().booleanValue();
    }
}
