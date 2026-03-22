package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScrollableState.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScrollableStateKt {
    @NotNull
    public static final ScrollableState ScrollableState(@NotNull Function1<? super Float, Float> consumeScrollDelta) {
        Intrinsics.checkNotNullParameter(consumeScrollDelta, "consumeScrollDelta");
        return new DefaultScrollableState(consumeScrollDelta);
    }

    @Composable
    @NotNull
    public static final ScrollableState rememberScrollableState(@NotNull Function1<? super Float, Float> consumeScrollDelta, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(consumeScrollDelta, "consumeScrollDelta");
        composer.startReplaceableGroup(-180460798);
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(consumeScrollDelta, composer, i10 & 14);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.gestures.ScrollableStateKt$rememberScrollableState$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @NotNull
                public final Float invoke(float f10) {
                    return rememberUpdatedState.getValue().invoke(Float.valueOf(f10));
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Float invoke(Float f10) {
                    return invoke(f10.floatValue());
                }
            });
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        ScrollableState scrollableState = (ScrollableState) rememberedValue;
        composer.endReplaceableGroup();
        return scrollableState;
    }
}
