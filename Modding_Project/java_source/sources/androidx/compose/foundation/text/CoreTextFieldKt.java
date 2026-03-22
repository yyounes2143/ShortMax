package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CoreTextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class CoreTextFieldKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x031b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x035e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0600 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0698  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x070f  */
    /* JADX WARN: Removed duplicated region for block: B:295:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0132  */
    /* JADX WARN: Type inference failed for: r0v53, types: [androidx.compose.ui.Modifier] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoreTextField(@org.jetbrains.annotations.NotNull final androidx.compose.ui.text.input.TextFieldValue r43, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.TextFieldValue, kotlin.Unit> r44, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r45, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.TextStyle r46, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.input.VisualTransformation r47, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r48, @org.jetbrains.annotations.Nullable androidx.compose.foundation.interaction.MutableInteractionSource r49, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Brush r50, boolean r51, int r52, @org.jetbrains.annotations.Nullable androidx.compose.ui.text.input.ImeOptions r53, @org.jetbrains.annotations.Nullable androidx.compose.foundation.text.KeyboardActions r54, boolean r55, boolean r56, @org.jetbrains.annotations.Nullable at.n<? super kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r57, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r58, final int r59, final int r60, final int r61) {
        /*
            Method dump skipped, instructions count: 1835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CoreTextFieldKt.CoreTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Brush, boolean, int, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.text.KeyboardActions, boolean, boolean, at.n, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    public static final void CoreTextFieldRootBox(final Modifier modifier, final TextFieldSelectionManager textFieldSelectionManager, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-20551815);
        startRestartGroup.startReplaceableGroup(733328855);
        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), true, startRestartGroup, 48);
        startRestartGroup.startReplaceableGroup(-1323940314);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
        if (startRestartGroup.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startReusableNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(constructor);
        } else {
            startRestartGroup.useNode();
        }
        startRestartGroup.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        startRestartGroup.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(startRestartGroup)), startRestartGroup, 0);
        startRestartGroup.startReplaceableGroup(2058660585);
        startRestartGroup.startReplaceableGroup(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        startRestartGroup.startReplaceableGroup(1524757375);
        ContextMenu_androidKt.ContextMenuArea(textFieldSelectionManager, function2, startRestartGroup, ((i10 >> 3) & 112) | 8);
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextFieldRootBox$2
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

                public final void invoke(@Nullable Composer composer2, int i11) {
                    CoreTextFieldKt.CoreTextFieldRootBox(Modifier.this, textFieldSelectionManager, function2, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void SelectionToolbarAndHandles(final TextFieldSelectionManager textFieldSelectionManager, final boolean z10, Composer composer, final int i10) {
        TextLayoutResult textLayoutResult;
        TextLayoutResultProxy layoutResult;
        Composer startRestartGroup = composer.startRestartGroup(626339208);
        if (z10) {
            TextFieldState state$foundation_release = textFieldSelectionManager.getState$foundation_release();
            if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null) {
                textLayoutResult = layoutResult.getValue();
            } else {
                textLayoutResult = null;
            }
            if (textLayoutResult != null) {
                if (!TextRange.m3691getCollapsedimpl(textFieldSelectionManager.getValue$foundation_release().m3874getSelectiond9O1mEE())) {
                    int originalToTransformed = textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m3697getStartimpl(textFieldSelectionManager.getValue$foundation_release().m3874getSelectiond9O1mEE()));
                    int originalToTransformed2 = textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m3692getEndimpl(textFieldSelectionManager.getValue$foundation_release().m3874getSelectiond9O1mEE()));
                    ResolvedTextDirection bidiRunDirection = textLayoutResult.getBidiRunDirection(originalToTransformed);
                    ResolvedTextDirection bidiRunDirection2 = textLayoutResult.getBidiRunDirection(Math.max(originalToTransformed2 - 1, 0));
                    startRestartGroup.startReplaceableGroup(-498396421);
                    TextFieldState state$foundation_release2 = textFieldSelectionManager.getState$foundation_release();
                    if (state$foundation_release2 != null && state$foundation_release2.getShowSelectionHandleStart()) {
                        TextFieldSelectionManagerKt.TextFieldSelectionHandle(true, bidiRunDirection, textFieldSelectionManager, startRestartGroup, 518);
                    }
                    startRestartGroup.endReplaceableGroup();
                    TextFieldState state$foundation_release3 = textFieldSelectionManager.getState$foundation_release();
                    if (state$foundation_release3 != null && state$foundation_release3.getShowSelectionHandleEnd()) {
                        TextFieldSelectionManagerKt.TextFieldSelectionHandle(false, bidiRunDirection2, textFieldSelectionManager, startRestartGroup, 518);
                    }
                }
                TextFieldState state$foundation_release4 = textFieldSelectionManager.getState$foundation_release();
                if (state$foundation_release4 != null) {
                    if (textFieldSelectionManager.isTextChanged$foundation_release()) {
                        state$foundation_release4.setShowFloatingToolbar(false);
                    }
                    if (state$foundation_release4.getHasFocus()) {
                        if (state$foundation_release4.getShowFloatingToolbar()) {
                            textFieldSelectionManager.showSelectionToolbar$foundation_release();
                        } else {
                            textFieldSelectionManager.hideSelectionToolbar$foundation_release();
                        }
                    }
                }
            }
        } else {
            textFieldSelectionManager.hideSelectionToolbar$foundation_release();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$SelectionToolbarAndHandles$2
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

                public final void invoke(@Nullable Composer composer2, int i11) {
                    CoreTextFieldKt.SelectionToolbarAndHandles(TextFieldSelectionManager.this, z10, composer2, i10 | 1);
                }
            });
        }
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void TextFieldCursorHandle(@NotNull final TextFieldSelectionManager manager, @Nullable Composer composer, final int i10) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Composer startRestartGroup = composer.startRestartGroup(-1436003720);
        TextFieldState state$foundation_release = manager.getState$foundation_release();
        if (state$foundation_release != null && state$foundation_release.getShowCursorHandle()) {
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed = startRestartGroup.changed(manager);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = manager.cursorDragObserver$foundation_release();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
            final long m892getCursorPositiontuRUvjQ$foundation_release = manager.m892getCursorPositiontuRUvjQ$foundation_release((Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity()));
            Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, textDragObserver, new CoreTextFieldKt$TextFieldCursorHandle$1(textDragObserver, null));
            Offset m1595boximpl = Offset.m1595boximpl(m892getCursorPositiontuRUvjQ$foundation_release);
            startRestartGroup.startReplaceableGroup(1157296644);
            boolean changed2 = startRestartGroup.changed(m1595boximpl);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1
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
                        semantics.set(SelectionHandlesKt.getSelectionHandleInfoKey(), new SelectionHandleInfo(Handle.Cursor, m892getCursorPositiontuRUvjQ$foundation_release, null));
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            AndroidCursorHandle_androidKt.m700CursorHandleULxng0E(m892getCursorPositiontuRUvjQ$foundation_release, SemanticsModifierKt.semantics$default(pointerInput, false, (Function1) rememberedValue2, 1, null), null, startRestartGroup, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$3
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

                public final void invoke(@Nullable Composer composer2, int i11) {
                    CoreTextFieldKt.TextFieldCursorHandle(TextFieldSelectionManager.this, composer2, i10 | 1);
                }
            });
        }
    }

    @Nullable
    public static final Object bringSelectionEndIntoView(@NotNull BringIntoViewRequester bringIntoViewRequester, @NotNull TextFieldValue textFieldValue, @NotNull TextDelegate textDelegate, @NotNull TextLayoutResult textLayoutResult, @NotNull OffsetMapping offsetMapping, @NotNull c<? super Unit> cVar) {
        Rect rect;
        int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m3694getMaximpl(textFieldValue.m3874getSelectiond9O1mEE()));
        if (originalToTransformed < textLayoutResult.getLayoutInput().getText().length()) {
            rect = textLayoutResult.getBoundingBox(originalToTransformed);
        } else if (originalToTransformed != 0) {
            rect = textLayoutResult.getBoundingBox(originalToTransformed - 1);
        } else {
            rect = new Rect(0.0f, 0.0f, 1.0f, IntSize.m4208getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null)));
        }
        Object bringIntoView = bringIntoViewRequester.bringIntoView(rect, cVar);
        if (bringIntoView == a.f()) {
            return bringIntoView;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyTextInputServiceOnFocusChange(TextInputService textInputService, TextFieldState textFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions) {
        if (textFieldState.getHasFocus()) {
            textFieldState.setInputSession(TextFieldDelegate.Companion.onFocus$foundation_release(textInputService, textFieldValue, textFieldState.getProcessor(), imeOptions, textFieldState.getOnValueChange(), textFieldState.getOnImeActionPerformed()));
        } else {
            onBlur(textFieldState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBlur(TextFieldState textFieldState) {
        TextInputSession inputSession = textFieldState.getInputSession();
        if (inputSession != null) {
            TextFieldDelegate.Companion.onBlur$foundation_release(inputSession, textFieldState.getProcessor(), textFieldState.getOnValueChange());
        }
        textFieldState.setInputSession(null);
    }

    private static final Modifier previewKeyEventToDeselectOnBack(Modifier modifier, final TextFieldState textFieldState, final TextFieldSelectionManager textFieldSelectionManager) {
        return KeyInputModifierKt.onPreviewKeyEvent(modifier, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m717invokeZmokQxo(keyEvent.m3065unboximpl());
            }

            @NotNull
            /* renamed from: invoke-ZmokQxo  reason: not valid java name */
            public final Boolean m717invokeZmokQxo(@NotNull android.view.KeyEvent keyEvent) {
                boolean z10;
                Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
                if (TextFieldState.this.getHandleState() == HandleState.Selection && KeyEventHelpers_androidKt.m722cancelsTextSelectionZmokQxo(keyEvent)) {
                    z10 = true;
                    TextFieldSelectionManager.m887deselect_kEHs6E$foundation_release$default(textFieldSelectionManager, null, 1, null);
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tapToFocus(TextFieldState textFieldState, FocusRequester focusRequester, boolean z10) {
        TextInputSession inputSession;
        if (!textFieldState.getHasFocus()) {
            focusRequester.requestFocus();
        } else if (z10 && (inputSession = textFieldState.getInputSession()) != null) {
            inputSession.showSoftwareKeyboard();
        }
    }
}
