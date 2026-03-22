package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DragInteraction.kt */
@Metadata
/* loaded from: classes.dex */
public final class DragInteractionKt {
    @Composable
    @NotNull
    public static final State<Boolean> collectIsDraggedAsState(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(interactionSource, "<this>");
        composer.startReplaceableGroup(101276833);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        MutableState mutableState = (MutableState) rememberedValue;
        EffectsKt.LaunchedEffect(interactionSource, new DragInteractionKt$collectIsDraggedAsState$1(interactionSource, mutableState, null), composer, i10 & 14);
        composer.endReplaceableGroup();
        return mutableState;
    }
}
