package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridState.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridStateKt {
    @Composable
    @NotNull
    public static final LazyGridState rememberLazyGridState(final int i10, final int i11, @Nullable Composer composer, int i12, int i13) {
        composer.startReplaceableGroup(29186956);
        if ((i13 & 1) != 0) {
            i10 = 0;
        }
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        LazyGridState lazyGridState = (LazyGridState) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) LazyGridState.Companion.getSaver(), (String) null, (Function0<? extends Object>) new Function0<LazyGridState>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridStateKt$rememberLazyGridState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LazyGridState invoke() {
                return new LazyGridState(i10, i11);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return lazyGridState;
    }
}
