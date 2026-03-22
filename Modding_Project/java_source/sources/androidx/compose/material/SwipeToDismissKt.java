package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwipeToDismiss.kt */
@Metadata
/* loaded from: classes.dex */
public final class SwipeToDismissKt {
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0104  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SwipeToDismiss(@org.jetbrains.annotations.NotNull final androidx.compose.material.DismissState r21, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r22, @org.jetbrains.annotations.Nullable java.util.Set<? extends androidx.compose.material.DismissDirection> r23, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.material.DismissDirection, ? extends androidx.compose.material.ThresholdConfig> r24, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r26, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r27, final int r28, final int r29) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwipeToDismissKt.SwipeToDismiss(androidx.compose.material.DismissState, androidx.compose.ui.Modifier, java.util.Set, kotlin.jvm.functions.Function1, at.n, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DismissDirection getDismissDirection(DismissValue dismissValue, DismissValue dismissValue2) {
        if (dismissValue == dismissValue2 && dismissValue == DismissValue.Default) {
            return null;
        }
        if (dismissValue == dismissValue2 && dismissValue == DismissValue.DismissedToEnd) {
            return DismissDirection.StartToEnd;
        }
        if (dismissValue == dismissValue2 && dismissValue == DismissValue.DismissedToStart) {
            return DismissDirection.EndToStart;
        }
        DismissValue dismissValue3 = DismissValue.Default;
        if (dismissValue == dismissValue3 && dismissValue2 == DismissValue.DismissedToEnd) {
            return DismissDirection.StartToEnd;
        }
        if (dismissValue == dismissValue3 && dismissValue2 == DismissValue.DismissedToStart) {
            return DismissDirection.EndToStart;
        }
        if (dismissValue == DismissValue.DismissedToEnd && dismissValue2 == dismissValue3) {
            return DismissDirection.StartToEnd;
        }
        if (dismissValue != DismissValue.DismissedToStart || dismissValue2 != dismissValue3) {
            return null;
        }
        return DismissDirection.EndToStart;
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final DismissState rememberDismissState(@Nullable final DismissValue dismissValue, @Nullable final Function1<? super DismissValue, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1753522702);
        if ((i11 & 1) != 0) {
            dismissValue = DismissValue.Default;
        }
        if ((i11 & 2) != 0) {
            function1 = new Function1<DismissValue, Boolean>() { // from class: androidx.compose.material.SwipeToDismissKt$rememberDismissState$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull DismissValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        DismissState dismissState = (DismissState) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) DismissState.Companion.Saver(function1), (String) null, (Function0<? extends Object>) new Function0<DismissState>() { // from class: androidx.compose.material.SwipeToDismissKt$rememberDismissState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DismissState invoke() {
                return new DismissState(DismissValue.this, function1);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return dismissState;
    }
}
