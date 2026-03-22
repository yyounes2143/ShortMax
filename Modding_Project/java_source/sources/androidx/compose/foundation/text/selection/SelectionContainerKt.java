package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TouchMode_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.profileinstaller.ProfileVerifier;
import com.ss.ttm.player.MediaPlayer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionContainer.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionContainerKt {
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void DisableSelection(@NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(336063542);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(content)) {
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
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{SelectionRegistrarKt.getLocalSelectionRegistrar().provides(null)}, content, startRestartGroup, ((i11 << 3) & 112) | 8);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$DisableSelection$1
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
                    SelectionContainerKt.DisableSelection(content, composer2, i10 | 1);
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void SelectionContainer(@Nullable final Modifier modifier, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1075498320);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (startRestartGroup.changed(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= startRestartGroup.changed(content) ? 32 : 16;
        }
        if ((i12 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i13 != 0) {
                modifier = Modifier.Companion;
            }
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final MutableState mutableState = (MutableState) rememberedValue;
            Selection m825SelectionContainer$lambda1 = m825SelectionContainer$lambda1(mutableState);
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed = startRestartGroup.changed(mutableState);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function1<Selection, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Selection selection) {
                        invoke2(selection);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable Selection selection) {
                        mutableState.setValue(selection);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            SelectionContainer(modifier, m825SelectionContainer$lambda1, (Function1) rememberedValue2, content, startRestartGroup, (i12 & 14) | ((i12 << 6) & 7168), 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$2
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

            public final void invoke(@Nullable Composer composer2, int i14) {
                SelectionContainerKt.SelectionContainer(Modifier.this, content, composer2, i10 | 1, i11);
            }
        });
    }

    /* renamed from: SelectionContainer$lambda-1  reason: not valid java name */
    private static final Selection m825SelectionContainer$lambda1(MutableState<Selection> mutableState) {
        return mutableState.getValue();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void SelectionContainer(@Nullable Modifier modifier, @Nullable final Selection selection, @NotNull final Function1<? super Selection, Unit> onSelectionChange, @NotNull final Function2<? super Composer, ? super Integer, Unit> children, @Nullable Composer composer, final int i10, final int i11) {
        Modifier modifier2;
        int i12;
        final Modifier modifier3;
        Intrinsics.checkNotNullParameter(onSelectionChange, "onSelectionChange");
        Intrinsics.checkNotNullParameter(children, "children");
        Composer startRestartGroup = composer.startRestartGroup(2078139907);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
            modifier2 = modifier;
        } else if ((i10 & 14) == 0) {
            modifier2 = modifier;
            i12 = (startRestartGroup.changed(modifier) ? 4 : 2) | i10;
        } else {
            modifier2 = modifier;
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= startRestartGroup.changed(selection) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & 896) == 0) {
            i12 |= startRestartGroup.changed(onSelectionChange) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= startRestartGroup.changed(children) ? 2048 : 1024;
        }
        final int i14 = i12;
        if ((i14 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        } else {
            modifier3 = i13 != 0 ? Modifier.Companion : modifier2;
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = new SelectionRegistrarImpl();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) rememberedValue;
            startRestartGroup.startReplaceableGroup(-492369756);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new SelectionManager(selectionRegistrarImpl);
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            final SelectionManager selectionManager = (SelectionManager) rememberedValue2;
            selectionManager.setHapticFeedBack((HapticFeedback) startRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
            selectionManager.setClipboardManager((ClipboardManager) startRestartGroup.consume(CompositionLocalsKt.getLocalClipboardManager()));
            selectionManager.setTextToolbar((TextToolbar) startRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
            selectionManager.setOnSelectionChange(onSelectionChange);
            selectionManager.setSelection(selection);
            selectionManager.setTouchMode(TouchMode_androidKt.isInTouchMode());
            final Modifier modifier4 = modifier3;
            ContextMenu_androidKt.ContextMenuArea(selectionManager, ComposableLambdaKt.composableLambda(startRestartGroup, -123806316, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3
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

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void invoke(@Nullable Composer composer2, int i15) {
                    if ((i15 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    final Modifier modifier5 = modifier4;
                    final SelectionManager selectionManager2 = selectionManager;
                    final Function2<Composer, Integer, Unit> function2 = children;
                    final int i16 = i14;
                    CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{SelectionRegistrarKt.getLocalSelectionRegistrar().provides(SelectionRegistrarImpl.this)}, ComposableLambdaKt.composableLambda(composer2, 935424596, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return Unit.f60915a;
                        }

                        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                        @Composable
                        public final void invoke(@Nullable Composer composer3, int i17) {
                            if ((i17 & 11) == 2 && composer3.getSkipping()) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            Modifier then = Modifier.this.then(selectionManager2.getModifier());
                            final Function2<Composer, Integer, Unit> function22 = function2;
                            final int i18 = i16;
                            final SelectionManager selectionManager3 = selectionManager2;
                            SimpleLayoutKt.SimpleLayout(then, ComposableLambdaKt.composableLambda(composer3, 1375295262, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt.SelectionContainer.3.1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.f60915a;
                                }

                                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                                @Composable
                                public final void invoke(@Nullable Composer composer4, int i19) {
                                    Selection selection2;
                                    Offset m860getEndHandlePosition_m7T9E;
                                    ResolvedTextDirection direction;
                                    if ((i19 & 11) == 2 && composer4.getSkipping()) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    function22.invoke(composer4, Integer.valueOf((i18 >> 9) & 14));
                                    if (TouchMode_androidKt.isInTouchMode() && selectionManager3.getHasFocus() && (selection2 = selectionManager3.getSelection()) != null) {
                                        SelectionManager selectionManager4 = selectionManager3;
                                        List q10 = CollectionsKt.q(Boolean.TRUE, Boolean.FALSE);
                                        int size = q10.size();
                                        for (int i20 = 0; i20 < size; i20++) {
                                            Boolean bool = (Boolean) q10.get(i20);
                                            boolean booleanValue = bool.booleanValue();
                                            composer4.startReplaceableGroup(1157296644);
                                            boolean changed = composer4.changed(bool);
                                            Object rememberedValue3 = composer4.rememberedValue();
                                            if (changed || rememberedValue3 == Composer.Companion.getEmpty()) {
                                                rememberedValue3 = selectionManager4.handleDragObserver(booleanValue);
                                                composer4.updateRememberedValue(rememberedValue3);
                                            }
                                            composer4.endReplaceableGroup();
                                            TextDragObserver textDragObserver = (TextDragObserver) rememberedValue3;
                                            if (booleanValue) {
                                                m860getEndHandlePosition_m7T9E = selectionManager4.m861getStartHandlePosition_m7T9E();
                                            } else {
                                                m860getEndHandlePosition_m7T9E = selectionManager4.m860getEndHandlePosition_m7T9E();
                                            }
                                            if (booleanValue) {
                                                direction = selection2.getStart().getDirection();
                                            } else {
                                                direction = selection2.getEnd().getDirection();
                                            }
                                            if (m860getEndHandlePosition_m7T9E != null) {
                                                AndroidSelectionHandles_androidKt.m805SelectionHandle8fL75g(m860getEndHandlePosition_m7T9E.m1616unboximpl(), booleanValue, direction, selection2.getHandlesCrossed(), SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, textDragObserver, new SelectionContainerKt$SelectionContainer$3$1$1$1$1$1(textDragObserver, null)), null, composer4, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
                                            }
                                        }
                                    }
                                }
                            }), composer3, 48, 0);
                        }
                    }), composer2, 56);
                }
            }), startRestartGroup, 56);
            EffectsKt.DisposableEffect(selectionManager, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$4
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    final SelectionManager selectionManager2 = SelectionManager.this;
                    return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$4$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            SelectionManager.this.hideSelectionToolbar$foundation_release();
                        }
                    };
                }
            }, startRestartGroup, 8);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$5
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

            public final void invoke(@Nullable Composer composer2, int i15) {
                SelectionContainerKt.SelectionContainer(Modifier.this, selection, onSelectionChange, children, composer2, i10 | 1, i11);
            }
        });
    }
}
