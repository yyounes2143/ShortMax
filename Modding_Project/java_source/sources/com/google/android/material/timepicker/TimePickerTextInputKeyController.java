package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes5.dex */
class TimePickerTextInputKeyController implements TextView.OnEditorActionListener, View.OnKeyListener {
    private final ChipTextInputComboView hourLayoutComboView;
    private boolean keyListenerRunning = false;
    private final ChipTextInputComboView minuteLayoutComboView;
    private final TimeModel time;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimePickerTextInputKeyController(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.hourLayoutComboView = chipTextInputComboView;
        this.minuteLayoutComboView = chipTextInputComboView2;
        this.time = timeModel;
    }

    private void clearPrefilledText(EditText editText) {
        if (editText.getSelectionStart() == 0 && editText.length() == 2) {
            editText.getText().clear();
        }
    }

    private void moveSelection(int i10) {
        boolean z10;
        ChipTextInputComboView chipTextInputComboView = this.minuteLayoutComboView;
        boolean z11 = false;
        if (i10 == 12) {
            z10 = true;
        } else {
            z10 = false;
        }
        chipTextInputComboView.setChecked(z10);
        ChipTextInputComboView chipTextInputComboView2 = this.hourLayoutComboView;
        if (i10 == 10) {
            z11 = true;
        }
        chipTextInputComboView2.setChecked(z11);
        this.time.selection = i10;
    }

    private boolean onHourKeyPress(int i10, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null) {
            return false;
        }
        if (i10 >= 7 && i10 <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
            moveSelection(12);
            return true;
        }
        clearPrefilledText(editText);
        return false;
    }

    private boolean onMinuteKeyPress(int i10, KeyEvent keyEvent, EditText editText) {
        if (i10 == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
            moveSelection(10);
            return true;
        }
        clearPrefilledText(editText);
        return false;
    }

    public void bind() {
        TextInputLayout textInput = this.hourLayoutComboView.getTextInput();
        TextInputLayout textInput2 = this.minuteLayoutComboView.getTextInput();
        EditText editText = textInput.getEditText();
        EditText editText2 = textInput2.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        boolean z10;
        if (i10 == 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            moveSelection(12);
        }
        return z10;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        boolean onHourKeyPress;
        if (this.keyListenerRunning) {
            return false;
        }
        this.keyListenerRunning = true;
        EditText editText = (EditText) view;
        if (this.time.selection == 12) {
            onHourKeyPress = onMinuteKeyPress(i10, keyEvent, editText);
        } else {
            onHourKeyPress = onHourKeyPress(i10, keyEvent, editText);
        }
        this.keyListenerRunning = false;
        return onHourKeyPress;
    }
}
