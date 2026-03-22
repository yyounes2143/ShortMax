package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListPinningModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListPinningModifierKt {
    @Composable
    @NotNull
    public static final Modifier lazyListPinningModifier(@NotNull Modifier modifier, @NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(beyondBoundsInfo, "beyondBoundsInfo");
        composer.startReplaceableGroup(854917725);
        int i11 = MutableVector.$stable;
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(state) | composer.changed(beyondBoundsInfo);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LazyListPinningModifier(state, beyondBoundsInfo);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Modifier then = modifier.then((Modifier) rememberedValue);
        composer.endReplaceableGroup();
        return then;
    }
}
