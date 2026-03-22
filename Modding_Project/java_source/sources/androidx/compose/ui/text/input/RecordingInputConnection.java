package androidx.compose.ui.text.input;

import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import androidx.compose.ui.text.TextRange;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecordingInputConnection.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class RecordingInputConnection implements InputConnection {
    private final boolean autoCorrect;
    private int batchDepth;
    private int currentExtractedTextRequestToken;
    @NotNull
    private final List<EditCommand> editCommands;
    @NotNull
    private final InputEventCallback2 eventCallback;
    private boolean extractedTextMonitorMode;
    private boolean isActive;
    @NotNull
    private TextFieldValue mTextFieldValue;

    public RecordingInputConnection(@NotNull TextFieldValue initState, @NotNull InputEventCallback2 eventCallback, boolean z10) {
        Intrinsics.checkNotNullParameter(initState, "initState");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.eventCallback = eventCallback;
        this.autoCorrect = z10;
        this.mTextFieldValue = initState;
        this.editCommands = new ArrayList();
        this.isActive = true;
    }

    private final void addEditCommandWithBatch(EditCommand editCommand) {
        beginBatchEditInternal();
        try {
            this.editCommands.add(editCommand);
        } finally {
            endBatchEditInternal();
        }
    }

    private final boolean beginBatchEditInternal() {
        this.batchDepth++;
        return true;
    }

    private final boolean endBatchEditInternal() {
        int i10 = this.batchDepth - 1;
        this.batchDepth = i10;
        if (i10 == 0 && !this.editCommands.isEmpty()) {
            this.eventCallback.onEditCommands(CollectionsKt.g1(this.editCommands));
            this.editCommands.clear();
        }
        if (this.batchDepth > 0) {
            return true;
        }
        return false;
    }

    private final boolean ensureActive(Function0<Unit> function0) {
        boolean z10 = this.isActive;
        if (z10) {
            function0.invoke();
        }
        return z10;
    }

    private final void sendSynthesizedKeyEvent(int i10) {
        sendKeyEvent(new KeyEvent(0, i10));
        sendKeyEvent(new KeyEvent(1, i10));
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        boolean z10 = this.isActive;
        if (z10) {
            return beginBatchEditInternal();
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i10) {
        boolean z10 = this.isActive;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
        this.editCommands.clear();
        this.batchDepth = 0;
        this.isActive = false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(@Nullable CompletionInfo completionInfo) {
        boolean z10 = this.isActive;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(@NotNull InputContentInfo inputContentInfo, int i10, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inputContentInfo, "inputContentInfo");
        boolean z10 = this.isActive;
        if (z10) {
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(@Nullable CorrectionInfo correctionInfo) {
        boolean z10 = this.isActive;
        if (z10) {
            return this.autoCorrect;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(@Nullable CharSequence charSequence, int i10) {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new CommitTextCommand(String.valueOf(charSequence), i10));
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i10, int i11) {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new DeleteSurroundingTextCommand(i10, i11));
            return true;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new DeleteSurroundingTextInCodePointsCommand(i10, i11));
            return true;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        return endBatchEditInternal();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new FinishComposingTextCommand());
            return true;
        }
        return z10;
    }

    public final boolean getAutoCorrect() {
        return this.autoCorrect;
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i10) {
        return TextUtils.getCapsMode(this.mTextFieldValue.getText(), TextRange.m3695getMinimpl(this.mTextFieldValue.m3874getSelectiond9O1mEE()), i10);
    }

    @NotNull
    public final InputEventCallback2 getEventCallback() {
        return this.eventCallback;
    }

    @Override // android.view.inputmethod.InputConnection
    @NotNull
    public ExtractedText getExtractedText(@Nullable ExtractedTextRequest extractedTextRequest, int i10) {
        boolean z10 = true;
        int i11 = 0;
        if ((i10 & 1) == 0) {
            z10 = false;
        }
        this.extractedTextMonitorMode = z10;
        if (z10) {
            if (extractedTextRequest != null) {
                i11 = extractedTextRequest.token;
            }
            this.currentExtractedTextRequestToken = i11;
        }
        return InputState_androidKt.toExtractedText(this.mTextFieldValue);
    }

    @Override // android.view.inputmethod.InputConnection
    @Nullable
    public Handler getHandler() {
        return null;
    }

    @NotNull
    public final TextFieldValue getMTextFieldValue$ui_release() {
        return this.mTextFieldValue;
    }

    @Override // android.view.inputmethod.InputConnection
    @Nullable
    public CharSequence getSelectedText(int i10) {
        if (TextRange.m3691getCollapsedimpl(this.mTextFieldValue.m3874getSelectiond9O1mEE())) {
            return null;
        }
        return TextFieldValueKt.getSelectedText(this.mTextFieldValue).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    @NotNull
    public CharSequence getTextAfterCursor(int i10, int i11) {
        return TextFieldValueKt.getTextAfterSelection(this.mTextFieldValue, i10).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    @NotNull
    public CharSequence getTextBeforeCursor(int i10, int i11) {
        return TextFieldValueKt.getTextBeforeSelection(this.mTextFieldValue, i10).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i10) {
        boolean z10 = this.isActive;
        if (z10) {
            z10 = false;
            switch (i10) {
                case 16908319:
                    addEditCommandWithBatch(new SetSelectionCommand(0, this.mTextFieldValue.getText().length()));
                    break;
                case 16908320:
                    sendSynthesizedKeyEvent(MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE);
                    break;
                case 16908321:
                    sendSynthesizedKeyEvent(MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC);
                    break;
                case 16908322:
                    sendSynthesizedKeyEvent(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS);
                    break;
            }
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i10) {
        int m3827getDefaulteUduSuo;
        boolean z10 = this.isActive;
        if (z10) {
            if (i10 != 0) {
                switch (i10) {
                    case 2:
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3829getGoeUduSuo();
                        break;
                    case 3:
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3833getSearcheUduSuo();
                        break;
                    case 4:
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3834getSendeUduSuo();
                        break;
                    case 5:
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3830getNexteUduSuo();
                        break;
                    case 6:
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3828getDoneeUduSuo();
                        break;
                    case 7:
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3832getPreviouseUduSuo();
                        break;
                    default:
                        Log.w(RecordingInputConnection_androidKt.TAG, "IME sends unsupported Editor Action: " + i10);
                        m3827getDefaulteUduSuo = ImeAction.Companion.m3827getDefaulteUduSuo();
                        break;
                }
            } else {
                m3827getDefaulteUduSuo = ImeAction.Companion.m3827getDefaulteUduSuo();
            }
            this.eventCallback.mo3841onImeActionKlQnJC8(m3827getDefaulteUduSuo);
            return true;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(@Nullable String str, @Nullable Bundle bundle) {
        boolean z10 = this.isActive;
        if (z10) {
            return true;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z10) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i10) {
        boolean z10 = this.isActive;
        if (z10) {
            Log.w(RecordingInputConnection_androidKt.TAG, "requestCursorUpdates is not supported");
            return false;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(@NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        boolean z10 = this.isActive;
        if (z10) {
            this.eventCallback.onKeyEvent(event);
            return true;
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i10, int i11) {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new SetComposingRegionCommand(i10, i11));
        }
        return z10;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(@Nullable CharSequence charSequence, int i10) {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new SetComposingTextCommand(String.valueOf(charSequence), i10));
        }
        return z10;
    }

    public final void setMTextFieldValue$ui_release(@NotNull TextFieldValue value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.mTextFieldValue = value;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i10, int i11) {
        boolean z10 = this.isActive;
        if (z10) {
            addEditCommandWithBatch(new SetSelectionCommand(i10, i11));
            return true;
        }
        return z10;
    }

    public final void updateInputState(@NotNull TextFieldValue state, @NotNull InputMethodManager inputMethodManager, @NotNull View view) {
        int i10;
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(inputMethodManager, "inputMethodManager");
        Intrinsics.checkNotNullParameter(view, "view");
        if (!this.isActive) {
            return;
        }
        setMTextFieldValue$ui_release(state);
        if (this.extractedTextMonitorMode) {
            inputMethodManager.updateExtractedText(view, this.currentExtractedTextRequestToken, InputState_androidKt.toExtractedText(state));
        }
        TextRange m3873getCompositionMzsxiRA = state.m3873getCompositionMzsxiRA();
        int i11 = -1;
        if (m3873getCompositionMzsxiRA != null) {
            i10 = TextRange.m3695getMinimpl(m3873getCompositionMzsxiRA.m3701unboximpl());
        } else {
            i10 = -1;
        }
        TextRange m3873getCompositionMzsxiRA2 = state.m3873getCompositionMzsxiRA();
        if (m3873getCompositionMzsxiRA2 != null) {
            i11 = TextRange.m3694getMaximpl(m3873getCompositionMzsxiRA2.m3701unboximpl());
        }
        inputMethodManager.updateSelection(view, TextRange.m3695getMinimpl(state.m3874getSelectiond9O1mEE()), TextRange.m3694getMaximpl(state.m3874getSelectiond9O1mEE()), i10, i11);
    }

    private final void logDebug(String str) {
    }
}
