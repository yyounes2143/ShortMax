package androidx.compose.foundation.lazy.layout;

import android.view.View;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyLayoutPrefetcher.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyLayoutPrefetcher_androidKt {
    @Composable
    @ExperimentalFoundationApi
    public static final void LazyLayoutPrefetcher(@NotNull final LazyLayoutPrefetchState prefetchState, @NotNull final LazyLayoutItemContentFactory itemContentFactory, @NotNull final SubcomposeLayoutState subcomposeLayoutState, @Nullable Composer composer, final int i10) {
        Intrinsics.checkNotNullParameter(prefetchState, "prefetchState");
        Intrinsics.checkNotNullParameter(itemContentFactory, "itemContentFactory");
        Intrinsics.checkNotNullParameter(subcomposeLayoutState, "subcomposeLayoutState");
        Composer startRestartGroup = composer.startRestartGroup(1113453182);
        View view = (View) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
        int i11 = SubcomposeLayoutState.$stable;
        startRestartGroup.startReplaceableGroup(1618982084);
        boolean changed = startRestartGroup.changed(subcomposeLayoutState) | startRestartGroup.changed(prefetchState) | startRestartGroup.changed(view);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            startRestartGroup.updateRememberedValue(new LazyLayoutPrefetcher(prefetchState, subcomposeLayoutState, itemContentFactory, view));
        }
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i12) {
                    LazyLayoutPrefetcher_androidKt.LazyLayoutPrefetcher(LazyLayoutPrefetchState.this, itemContentFactory, subcomposeLayoutState, composer2, i10 | 1);
                }
            });
        }
    }
}
