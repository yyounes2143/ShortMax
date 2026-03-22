package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowInfoKt {
    @Composable
    public static final void WindowFocusObserver(@NotNull final Function1<? super Boolean, Unit> onWindowFocusChanged, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(onWindowFocusChanged, "onWindowFocusChanged");
        Composer startRestartGroup = composer.startRestartGroup(127829799);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(onWindowFocusChanged)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            WindowInfo windowInfo = (WindowInfo) startRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo());
            State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onWindowFocusChanged, startRestartGroup, i11 & 14);
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed = startRestartGroup.changed(windowInfo) | startRestartGroup.changed(rememberUpdatedState);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new WindowInfoKt$WindowFocusObserver$1$1(windowInfo, rememberUpdatedState, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(windowInfo, (Function2) rememberedValue, startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i13) {
                    WindowInfoKt.WindowFocusObserver(onWindowFocusChanged, composer2, i10 | 1);
                }
            });
        }
    }
}
