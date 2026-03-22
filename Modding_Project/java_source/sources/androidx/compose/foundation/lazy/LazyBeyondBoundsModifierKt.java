package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyBeyondBoundsModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyBeyondBoundsModifierKt {
    @Composable
    @NotNull
    public static final Modifier lazyListBeyondBoundsModifier(@NotNull Modifier modifier, @NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, boolean z10, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(beyondBoundsInfo, "beyondBoundsInfo");
        composer.startReplaceableGroup(1245943849);
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        Object[] objArr = {state, beyondBoundsInfo, Boolean.valueOf(z10), layoutDirection};
        composer.startReplaceableGroup(-568225417);
        boolean z11 = false;
        for (int i11 = 0; i11 < 4; i11++) {
            z11 |= composer.changed(objArr[i11]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z11 || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LazyListBeyondBoundsModifierLocal(state, beyondBoundsInfo, z10, layoutDirection);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Modifier then = modifier.then((Modifier) rememberedValue);
        composer.endReplaceableGroup();
        return then;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void unsupportedDirection() {
        throw new IllegalStateException("Lazy list does not support beyond bounds layout for the specified direction");
    }
}
