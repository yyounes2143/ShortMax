package androidx.compose.foundation;

import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Canvas.kt */
@Metadata
/* loaded from: classes.dex */
public final class CanvasKt {
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void Canvas(@NotNull final Modifier modifier, @NotNull final Function1<? super DrawScope, Unit> onDraw, @Nullable Composer composer, final int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(onDraw, "onDraw");
        Composer startRestartGroup = composer.startRestartGroup(-932836462);
        if ((i10 & 14) == 0) {
            i11 = (startRestartGroup.changed(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= startRestartGroup.changed(onDraw) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            SpacerKt.Spacer(DrawModifierKt.drawBehind(modifier, onDraw), startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.CanvasKt$Canvas$1
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

            public final void invoke(@Nullable Composer composer2, int i12) {
                CanvasKt.Canvas(Modifier.this, onDraw, composer2, i10 | 1);
            }
        });
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    @ExperimentalFoundationApi
    public static final void Canvas(@NotNull final Modifier modifier, @NotNull final String contentDescription, @NotNull final Function1<? super DrawScope, Unit> onDraw, @Nullable Composer composer, final int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(contentDescription, "contentDescription");
        Intrinsics.checkNotNullParameter(onDraw, "onDraw");
        Composer startRestartGroup = composer.startRestartGroup(-1162737955);
        if ((i10 & 14) == 0) {
            i11 = (startRestartGroup.changed(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= startRestartGroup.changed(contentDescription) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= startRestartGroup.changed(onDraw) ? 256 : 128;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            Modifier drawBehind = DrawModifierKt.drawBehind(modifier, onDraw);
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed = startRestartGroup.changed(contentDescription);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.CanvasKt$Canvas$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                        SemanticsPropertiesKt.setContentDescription(semantics, contentDescription);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SpacerKt.Spacer(SemanticsModifierKt.semantics$default(drawBehind, false, (Function1) rememberedValue, 1, null), startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.CanvasKt$Canvas$3
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

            public final void invoke(@Nullable Composer composer2, int i12) {
                CanvasKt.Canvas(Modifier.this, contentDescription, onDraw, composer2, i10 | 1);
            }
        });
    }
}
