package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldKeyInput.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldKeyInput {
    private final boolean editable;
    @NotNull
    private final KeyMapping keyMapping;
    @NotNull
    private final OffsetMapping offsetMapping;
    @NotNull
    private final Function1<TextFieldValue, Unit> onValueChange;
    @NotNull
    private final TextPreparedSelectionState preparedSelectionState;
    @NotNull
    private final TextFieldSelectionManager selectionManager;
    private final boolean singleLine;
    @NotNull
    private final TextFieldState state;
    @Nullable
    private final UndoManager undoManager;
    @NotNull
    private final TextFieldValue value;

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldKeyInput(@NotNull TextFieldState state, @NotNull TextFieldSelectionManager selectionManager, @NotNull TextFieldValue value, boolean z10, boolean z11, @NotNull TextPreparedSelectionState preparedSelectionState, @NotNull OffsetMapping offsetMapping, @Nullable UndoManager undoManager, @NotNull KeyMapping keyMapping, @NotNull Function1<? super TextFieldValue, Unit> onValueChange) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(selectionManager, "selectionManager");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(preparedSelectionState, "preparedSelectionState");
        Intrinsics.checkNotNullParameter(offsetMapping, "offsetMapping");
        Intrinsics.checkNotNullParameter(keyMapping, "keyMapping");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        this.state = state;
        this.selectionManager = selectionManager;
        this.value = value;
        this.editable = z10;
        this.singleLine = z11;
        this.preparedSelectionState = preparedSelectionState;
        this.offsetMapping = offsetMapping;
        this.undoManager = undoManager;
        this.keyMapping = keyMapping;
        this.onValueChange = onValueChange;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void apply(List<? extends EditCommand> list) {
        EditProcessor processor = this.state.getProcessor();
        List<? extends EditCommand> g12 = CollectionsKt.g1(list);
        g12.add(0, new FinishComposingTextCommand());
        this.onValueChange.invoke(processor.apply(g12));
    }

    private final void commandExecutionContext(Function1<? super TextFieldPreparedSelection, Unit> function1) {
        TextFieldPreparedSelection textFieldPreparedSelection = new TextFieldPreparedSelection(this.value, this.offsetMapping, this.state.getLayoutResult(), this.preparedSelectionState);
        function1.invoke(textFieldPreparedSelection);
        if (!TextRange.m3690equalsimpl0(textFieldPreparedSelection.m807getSelectiond9O1mEE(), this.value.m3874getSelectiond9O1mEE()) || !Intrinsics.areEqual(textFieldPreparedSelection.getAnnotatedString(), this.value.getAnnotatedString())) {
            this.onValueChange.invoke(textFieldPreparedSelection.getValue());
        }
    }

    /* renamed from: typedCommand-ZmokQxo  reason: not valid java name */
    private final CommitTextCommand m777typedCommandZmokQxo(KeyEvent keyEvent) {
        if (TextFieldKeyInput_androidKt.m780isTypedEventZmokQxo(keyEvent)) {
            String sb2 = StringHelpers_jvmKt.appendCodePointX(new StringBuilder(), KeyEvent_androidKt.m3078getUtf16CodePointZmokQxo(keyEvent)).toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().appendCo…              .toString()");
            return new CommitTextCommand(sb2, 1);
        }
        return null;
    }

    public final boolean getEditable() {
        return this.editable;
    }

    @NotNull
    public final OffsetMapping getOffsetMapping() {
        return this.offsetMapping;
    }

    @NotNull
    public final TextPreparedSelectionState getPreparedSelectionState() {
        return this.preparedSelectionState;
    }

    @NotNull
    public final TextFieldSelectionManager getSelectionManager() {
        return this.selectionManager;
    }

    public final boolean getSingleLine() {
        return this.singleLine;
    }

    @NotNull
    public final TextFieldState getState() {
        return this.state;
    }

    @Nullable
    public final UndoManager getUndoManager() {
        return this.undoManager;
    }

    @NotNull
    public final TextFieldValue getValue() {
        return this.value;
    }

    /* renamed from: process-ZmokQxo  reason: not valid java name */
    public final boolean m778processZmokQxo(@NotNull KeyEvent event) {
        final KeyCommand mo723mapZmokQxo;
        Intrinsics.checkNotNullParameter(event, "event");
        CommitTextCommand m777typedCommandZmokQxo = m777typedCommandZmokQxo(event);
        if (m777typedCommandZmokQxo != null) {
            if (!this.editable) {
                return false;
            }
            apply(m777typedCommandZmokQxo);
            this.preparedSelectionState.resetCachedX();
            return true;
        } else if (!KeyEventType.m3069equalsimpl0(KeyEvent_androidKt.m3077getTypeZmokQxo(event), KeyEventType.Companion.m3073getKeyDownCS__XNY()) || (mo723mapZmokQxo = this.keyMapping.mo723mapZmokQxo(event)) == null || (mo723mapZmokQxo.getEditsText() && !this.editable)) {
            return false;
        } else {
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            booleanRef.element = true;
            commandExecutionContext(new Function1<TextFieldPreparedSelection, Unit>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2

                /* compiled from: TextFieldKeyInput.kt */
                @Metadata
                /* loaded from: classes.dex */
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[KeyCommand.values().length];
                        iArr[KeyCommand.COPY.ordinal()] = 1;
                        iArr[KeyCommand.PASTE.ordinal()] = 2;
                        iArr[KeyCommand.CUT.ordinal()] = 3;
                        iArr[KeyCommand.LEFT_CHAR.ordinal()] = 4;
                        iArr[KeyCommand.RIGHT_CHAR.ordinal()] = 5;
                        iArr[KeyCommand.LEFT_WORD.ordinal()] = 6;
                        iArr[KeyCommand.RIGHT_WORD.ordinal()] = 7;
                        iArr[KeyCommand.PREV_PARAGRAPH.ordinal()] = 8;
                        iArr[KeyCommand.NEXT_PARAGRAPH.ordinal()] = 9;
                        iArr[KeyCommand.UP.ordinal()] = 10;
                        iArr[KeyCommand.DOWN.ordinal()] = 11;
                        iArr[KeyCommand.PAGE_UP.ordinal()] = 12;
                        iArr[KeyCommand.PAGE_DOWN.ordinal()] = 13;
                        iArr[KeyCommand.LINE_START.ordinal()] = 14;
                        iArr[KeyCommand.LINE_END.ordinal()] = 15;
                        iArr[KeyCommand.LINE_LEFT.ordinal()] = 16;
                        iArr[KeyCommand.LINE_RIGHT.ordinal()] = 17;
                        iArr[KeyCommand.HOME.ordinal()] = 18;
                        iArr[KeyCommand.END.ordinal()] = 19;
                        iArr[KeyCommand.DELETE_PREV_CHAR.ordinal()] = 20;
                        iArr[KeyCommand.DELETE_NEXT_CHAR.ordinal()] = 21;
                        iArr[KeyCommand.DELETE_PREV_WORD.ordinal()] = 22;
                        iArr[KeyCommand.DELETE_NEXT_WORD.ordinal()] = 23;
                        iArr[KeyCommand.DELETE_FROM_LINE_START.ordinal()] = 24;
                        iArr[KeyCommand.DELETE_TO_LINE_END.ordinal()] = 25;
                        iArr[KeyCommand.NEW_LINE.ordinal()] = 26;
                        iArr[KeyCommand.TAB.ordinal()] = 27;
                        iArr[KeyCommand.SELECT_ALL.ordinal()] = 28;
                        iArr[KeyCommand.SELECT_LEFT_CHAR.ordinal()] = 29;
                        iArr[KeyCommand.SELECT_RIGHT_CHAR.ordinal()] = 30;
                        iArr[KeyCommand.SELECT_LEFT_WORD.ordinal()] = 31;
                        iArr[KeyCommand.SELECT_RIGHT_WORD.ordinal()] = 32;
                        iArr[KeyCommand.SELECT_PREV_PARAGRAPH.ordinal()] = 33;
                        iArr[KeyCommand.SELECT_NEXT_PARAGRAPH.ordinal()] = 34;
                        iArr[KeyCommand.SELECT_LINE_START.ordinal()] = 35;
                        iArr[KeyCommand.SELECT_LINE_END.ordinal()] = 36;
                        iArr[KeyCommand.SELECT_LINE_LEFT.ordinal()] = 37;
                        iArr[KeyCommand.SELECT_LINE_RIGHT.ordinal()] = 38;
                        iArr[KeyCommand.SELECT_UP.ordinal()] = 39;
                        iArr[KeyCommand.SELECT_DOWN.ordinal()] = 40;
                        iArr[KeyCommand.SELECT_PAGE_UP.ordinal()] = 41;
                        iArr[KeyCommand.SELECT_PAGE_DOWN.ordinal()] = 42;
                        iArr[KeyCommand.SELECT_HOME.ordinal()] = 43;
                        iArr[KeyCommand.SELECT_END.ordinal()] = 44;
                        iArr[KeyCommand.DESELECT.ordinal()] = 45;
                        iArr[KeyCommand.UNDO.ordinal()] = 46;
                        iArr[KeyCommand.REDO.ordinal()] = 47;
                        iArr[KeyCommand.CHARACTER_PALETTE.ordinal()] = 48;
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TextFieldPreparedSelection textFieldPreparedSelection) {
                    invoke2(textFieldPreparedSelection);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull TextFieldPreparedSelection commandExecutionContext) {
                    TextFieldValue undo;
                    Function1 function1;
                    TextFieldValue redo;
                    Function1 function12;
                    Intrinsics.checkNotNullParameter(commandExecutionContext, "$this$commandExecutionContext");
                    switch (WhenMappings.$EnumSwitchMapping$0[KeyCommand.this.ordinal()]) {
                        case 1:
                            this.getSelectionManager().copy$foundation_release(false);
                            return;
                        case 2:
                            this.getSelectionManager().paste$foundation_release();
                            return;
                        case 3:
                            this.getSelectionManager().cut$foundation_release();
                            return;
                        case 4:
                            commandExecutionContext.collapseLeftOr(new Function1<TextFieldPreparedSelection, Unit>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(TextFieldPreparedSelection textFieldPreparedSelection) {
                                    invoke2(textFieldPreparedSelection);
                                    return Unit.f60915a;
                                }

                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2(@NotNull TextFieldPreparedSelection collapseLeftOr) {
                                    Intrinsics.checkNotNullParameter(collapseLeftOr, "$this$collapseLeftOr");
                                    collapseLeftOr.moveCursorLeft();
                                }
                            });
                            return;
                        case 5:
                            commandExecutionContext.collapseRightOr(new Function1<TextFieldPreparedSelection, Unit>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.2
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(TextFieldPreparedSelection textFieldPreparedSelection) {
                                    invoke2(textFieldPreparedSelection);
                                    return Unit.f60915a;
                                }

                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2(@NotNull TextFieldPreparedSelection collapseRightOr) {
                                    Intrinsics.checkNotNullParameter(collapseRightOr, "$this$collapseRightOr");
                                    collapseRightOr.moveCursorRight();
                                }
                            });
                            return;
                        case 6:
                            commandExecutionContext.moveCursorLeftByWord();
                            return;
                        case 7:
                            commandExecutionContext.moveCursorRightByWord();
                            return;
                        case 8:
                            commandExecutionContext.moveCursorPrevByParagraph();
                            return;
                        case 9:
                            commandExecutionContext.moveCursorNextByParagraph();
                            return;
                        case 10:
                            commandExecutionContext.moveCursorUpByLine();
                            return;
                        case 11:
                            commandExecutionContext.moveCursorDownByLine();
                            return;
                        case 12:
                            commandExecutionContext.moveCursorUpByPage();
                            return;
                        case 13:
                            commandExecutionContext.moveCursorDownByPage();
                            return;
                        case 14:
                            commandExecutionContext.moveCursorToLineStart();
                            return;
                        case 15:
                            commandExecutionContext.moveCursorToLineEnd();
                            return;
                        case 16:
                            commandExecutionContext.moveCursorToLineLeftSide();
                            return;
                        case 17:
                            commandExecutionContext.moveCursorToLineRightSide();
                            return;
                        case 18:
                            commandExecutionContext.moveCursorToHome();
                            return;
                        case 19:
                            commandExecutionContext.moveCursorToEnd();
                            return;
                        case 20:
                            List<EditCommand> deleteIfSelectedOr = commandExecutionContext.deleteIfSelectedOr(new Function1<TextFieldPreparedSelection, EditCommand>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.3
                                @Override // kotlin.jvm.functions.Function1
                                @Nullable
                                public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr2) {
                                    Intrinsics.checkNotNullParameter(deleteIfSelectedOr2, "$this$deleteIfSelectedOr");
                                    return new DeleteSurroundingTextCommand(TextRange.m3692getEndimpl(deleteIfSelectedOr2.m807getSelectiond9O1mEE()) - deleteIfSelectedOr2.getPrecedingCharacterIndex(), 0);
                                }
                            });
                            if (deleteIfSelectedOr != null) {
                                this.apply(deleteIfSelectedOr);
                                return;
                            }
                            return;
                        case 21:
                            List<EditCommand> deleteIfSelectedOr2 = commandExecutionContext.deleteIfSelectedOr(new Function1<TextFieldPreparedSelection, EditCommand>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.4
                                @Override // kotlin.jvm.functions.Function1
                                @Nullable
                                public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr3) {
                                    Intrinsics.checkNotNullParameter(deleteIfSelectedOr3, "$this$deleteIfSelectedOr");
                                    int nextCharacterIndex = deleteIfSelectedOr3.getNextCharacterIndex();
                                    if (nextCharacterIndex != -1) {
                                        return new DeleteSurroundingTextCommand(0, nextCharacterIndex - TextRange.m3692getEndimpl(deleteIfSelectedOr3.m807getSelectiond9O1mEE()));
                                    }
                                    return null;
                                }
                            });
                            if (deleteIfSelectedOr2 != null) {
                                this.apply(deleteIfSelectedOr2);
                                return;
                            }
                            return;
                        case 22:
                            List<EditCommand> deleteIfSelectedOr3 = commandExecutionContext.deleteIfSelectedOr(new Function1<TextFieldPreparedSelection, EditCommand>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.5
                                @Override // kotlin.jvm.functions.Function1
                                @Nullable
                                public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr4) {
                                    Intrinsics.checkNotNullParameter(deleteIfSelectedOr4, "$this$deleteIfSelectedOr");
                                    Integer previousWordOffset = deleteIfSelectedOr4.getPreviousWordOffset();
                                    if (previousWordOffset != null) {
                                        return new DeleteSurroundingTextCommand(TextRange.m3692getEndimpl(deleteIfSelectedOr4.m807getSelectiond9O1mEE()) - previousWordOffset.intValue(), 0);
                                    }
                                    return null;
                                }
                            });
                            if (deleteIfSelectedOr3 != null) {
                                this.apply(deleteIfSelectedOr3);
                                return;
                            }
                            return;
                        case 23:
                            List<EditCommand> deleteIfSelectedOr4 = commandExecutionContext.deleteIfSelectedOr(new Function1<TextFieldPreparedSelection, EditCommand>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.6
                                @Override // kotlin.jvm.functions.Function1
                                @Nullable
                                public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr5) {
                                    Intrinsics.checkNotNullParameter(deleteIfSelectedOr5, "$this$deleteIfSelectedOr");
                                    Integer nextWordOffset = deleteIfSelectedOr5.getNextWordOffset();
                                    if (nextWordOffset != null) {
                                        return new DeleteSurroundingTextCommand(0, nextWordOffset.intValue() - TextRange.m3692getEndimpl(deleteIfSelectedOr5.m807getSelectiond9O1mEE()));
                                    }
                                    return null;
                                }
                            });
                            if (deleteIfSelectedOr4 != null) {
                                this.apply(deleteIfSelectedOr4);
                                return;
                            }
                            return;
                        case 24:
                            List<EditCommand> deleteIfSelectedOr5 = commandExecutionContext.deleteIfSelectedOr(new Function1<TextFieldPreparedSelection, EditCommand>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.7
                                @Override // kotlin.jvm.functions.Function1
                                @Nullable
                                public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr6) {
                                    Intrinsics.checkNotNullParameter(deleteIfSelectedOr6, "$this$deleteIfSelectedOr");
                                    Integer lineStartByOffset = deleteIfSelectedOr6.getLineStartByOffset();
                                    if (lineStartByOffset != null) {
                                        return new DeleteSurroundingTextCommand(TextRange.m3692getEndimpl(deleteIfSelectedOr6.m807getSelectiond9O1mEE()) - lineStartByOffset.intValue(), 0);
                                    }
                                    return null;
                                }
                            });
                            if (deleteIfSelectedOr5 != null) {
                                this.apply(deleteIfSelectedOr5);
                                return;
                            }
                            return;
                        case 25:
                            List<EditCommand> deleteIfSelectedOr6 = commandExecutionContext.deleteIfSelectedOr(new Function1<TextFieldPreparedSelection, EditCommand>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput$process$2.8
                                @Override // kotlin.jvm.functions.Function1
                                @Nullable
                                public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr7) {
                                    Intrinsics.checkNotNullParameter(deleteIfSelectedOr7, "$this$deleteIfSelectedOr");
                                    Integer lineEndByOffset = deleteIfSelectedOr7.getLineEndByOffset();
                                    if (lineEndByOffset != null) {
                                        return new DeleteSurroundingTextCommand(0, lineEndByOffset.intValue() - TextRange.m3692getEndimpl(deleteIfSelectedOr7.m807getSelectiond9O1mEE()));
                                    }
                                    return null;
                                }
                            });
                            if (deleteIfSelectedOr6 != null) {
                                this.apply(deleteIfSelectedOr6);
                                return;
                            }
                            return;
                        case 26:
                            if (!this.getSingleLine()) {
                                this.apply(new CommitTextCommand("\n", 1));
                                return;
                            } else {
                                booleanRef.element = false;
                                return;
                            }
                        case 27:
                            if (!this.getSingleLine()) {
                                this.apply(new CommitTextCommand("\t", 1));
                                return;
                            } else {
                                booleanRef.element = false;
                                return;
                            }
                        case 28:
                            commandExecutionContext.selectAll();
                            return;
                        case 29:
                            commandExecutionContext.moveCursorLeft().selectMovement();
                            return;
                        case 30:
                            commandExecutionContext.moveCursorRight().selectMovement();
                            return;
                        case 31:
                            commandExecutionContext.moveCursorLeftByWord().selectMovement();
                            return;
                        case 32:
                            commandExecutionContext.moveCursorRightByWord().selectMovement();
                            return;
                        case 33:
                            commandExecutionContext.moveCursorPrevByParagraph().selectMovement();
                            return;
                        case 34:
                            commandExecutionContext.moveCursorNextByParagraph().selectMovement();
                            return;
                        case 35:
                            commandExecutionContext.moveCursorToLineStart().selectMovement();
                            return;
                        case 36:
                            commandExecutionContext.moveCursorToLineEnd().selectMovement();
                            return;
                        case 37:
                            commandExecutionContext.moveCursorToLineLeftSide().selectMovement();
                            return;
                        case 38:
                            commandExecutionContext.moveCursorToLineRightSide().selectMovement();
                            return;
                        case 39:
                            commandExecutionContext.moveCursorUpByLine().selectMovement();
                            return;
                        case 40:
                            commandExecutionContext.moveCursorDownByLine().selectMovement();
                            return;
                        case 41:
                            commandExecutionContext.moveCursorUpByPage().selectMovement();
                            return;
                        case 42:
                            commandExecutionContext.moveCursorDownByPage().selectMovement();
                            return;
                        case 43:
                            commandExecutionContext.moveCursorToHome().selectMovement();
                            return;
                        case 44:
                            commandExecutionContext.moveCursorToEnd().selectMovement();
                            return;
                        case 45:
                            commandExecutionContext.deselect();
                            return;
                        case 46:
                            UndoManager undoManager = this.getUndoManager();
                            if (undoManager != null) {
                                undoManager.makeSnapshot(commandExecutionContext.getValue());
                            }
                            UndoManager undoManager2 = this.getUndoManager();
                            if (undoManager2 == null || (undo = undoManager2.undo()) == null) {
                                return;
                            }
                            function1 = this.onValueChange;
                            function1.invoke(undo);
                            return;
                        case 47:
                            UndoManager undoManager3 = this.getUndoManager();
                            if (undoManager3 == null || (redo = undoManager3.redo()) == null) {
                                return;
                            }
                            function12 = this.onValueChange;
                            function12.invoke(redo);
                            return;
                        case 48:
                            KeyEventHelpers_androidKt.showCharacterPalette();
                            return;
                        default:
                            return;
                    }
                }
            });
            UndoManager undoManager = this.undoManager;
            if (undoManager != null) {
                undoManager.forceNextSnapshot();
            }
            return booleanRef.element;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void apply(EditCommand editCommand) {
        apply(CollectionsKt.e(editCommand));
    }

    public /* synthetic */ TextFieldKeyInput(TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z10, boolean z11, TextPreparedSelectionState textPreparedSelectionState, OffsetMapping offsetMapping, UndoManager undoManager, KeyMapping keyMapping, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(textFieldState, textFieldSelectionManager, (i10 & 4) != 0 ? new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null) : textFieldValue, (i10 & 8) != 0 ? true : z10, (i10 & 16) != 0 ? false : z11, textPreparedSelectionState, (i10 & 64) != 0 ? OffsetMapping.Companion.getIdentity() : offsetMapping, (i10 & 128) != 0 ? null : undoManager, (i10 & 256) != 0 ? KeyMapping_androidKt.getPlatformDefaultKeyMapping() : keyMapping, (i10 & 512) != 0 ? new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.foundation.text.TextFieldKeyInput.1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TextFieldValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextFieldValue textFieldValue2) {
                invoke2(textFieldValue2);
                return Unit.f60915a;
            }
        } : function1);
    }
}
