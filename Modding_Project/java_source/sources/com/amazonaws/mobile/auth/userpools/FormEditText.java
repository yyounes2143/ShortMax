package com.amazonaws.mobile.auth.userpools;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.view.GravityCompat;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;
import java.util.Locale;
/* loaded from: classes2.dex */
public class FormEditText extends LinearLayout {

    /* renamed from: f  reason: collision with root package name */
    private static final int f5155f = DisplayUtils.a(5);

    /* renamed from: g  reason: collision with root package name */
    private static final int f5156g = DisplayUtils.a(5);

    /* renamed from: h  reason: collision with root package name */
    private static final int f5157h = DisplayUtils.a(5);

    /* renamed from: i  reason: collision with root package name */
    private static final int f5158i = DisplayUtils.a(-5);

    /* renamed from: a  reason: collision with root package name */
    private TextView f5159a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f5160b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f5161c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f5162d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f5163e;

    public FormEditText(Context context, int i10, String str) {
        super(context);
        this.f5162d = null;
        this.f5163e = false;
        setOrientation(1);
        setGravity(16);
        TextView textView = new TextView(context);
        this.f5159a = textView;
        textView.setText(str.toUpperCase(Locale.getDefault()));
        this.f5159a.setId(h(3841));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, f5155f, 0, 0);
        addView(this.f5159a, layoutParams);
        this.f5159a.setVisibility(4);
        EditText editText = new EditText(context);
        this.f5160b = editText;
        editText.setSingleLine();
        this.f5160b.setInputType(i10);
        this.f5160b.setBackgroundColor(0);
        this.f5160b.setPadding(0, DisplayUtils.a(2), 0, DisplayUtils.a(2) + f5156g);
        this.f5160b.setId(h(3842));
        this.f5160b.setHint(str);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, 0);
        if ((i10 & 128) > 0) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.f5161c = linearLayout;
            linearLayout.setOrientation(0);
            layoutParams2.gravity = GravityCompat.START;
            layoutParams2.weight = 1.0f;
            this.f5161c.addView(this.f5160b, layoutParams2);
            this.f5162d = new TextView(context);
            f();
            addView(this.f5161c);
        } else {
            addView(this.f5160b, layoutParams2);
        }
        g();
    }

    private void f() {
        final String string = getResources().getString(R$string.f5223o);
        final String string2 = getResources().getString(R$string.f5220l);
        this.f5162d.setText(string);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i10 = f5157h;
        layoutParams.setMargins(i10, f5158i, i10, 0);
        layoutParams.gravity = 8388629;
        this.f5161c.addView(this.f5162d, layoutParams);
        this.f5162d.setVisibility(8);
        this.f5162d.setOnClickListener(new View.OnClickListener() { // from class: com.amazonaws.mobile.auth.userpools.FormEditText.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str;
                CharSequence text = FormEditText.this.f5162d.getText();
                if (text.equals(string)) {
                    str = string2;
                } else {
                    str = string;
                }
                FormEditText.this.f5162d.setText(str);
                int selectionStart = FormEditText.this.f5160b.getSelectionStart();
                int selectionEnd = FormEditText.this.f5160b.getSelectionEnd();
                if (text.equals(string)) {
                    FormEditText.this.f5160b.setInputType(FormEditText.this.f5160b.getInputType() | 16);
                } else {
                    FormEditText.this.f5160b.setInputType(FormEditText.this.f5160b.getInputType() & (-17));
                }
                FormEditText.this.f5160b.setSelection(selectionStart, selectionEnd);
            }
        });
    }

    private void g() {
        this.f5160b.addTextChangedListener(new TextWatcher() { // from class: com.amazonaws.mobile.auth.userpools.FormEditText.2
            private void a() {
                if (FormEditText.this.f5160b.getText().length() == 0) {
                    if (FormEditText.this.f5163e) {
                        FormEditText.this.f5159a.setVisibility(8);
                    }
                    FormEditText.this.f5160b.setPadding(0, DisplayUtils.a(2), 0, DisplayUtils.a(2) + FormEditText.f5156g);
                    if (FormEditText.this.f5162d != null) {
                        FormEditText.this.f5162d.setVisibility(8);
                        return;
                    }
                    return;
                }
                FormEditText.this.f5159a.setVisibility(0);
                FormEditText.this.f5160b.setPadding(0, DisplayUtils.a(1), 0, DisplayUtils.a(3) + FormEditText.f5156g);
                if (FormEditText.this.f5162d != null) {
                    FormEditText.this.f5162d.setVisibility(0);
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                a();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        });
    }

    public EditText getEditTextView() {
        return this.f5160b;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.f5163e) {
            setMinimumHeight(this.f5159a.getMeasuredHeight() + f5155f + this.f5160b.getMeasuredHeight());
            this.f5159a.setVisibility(8);
            this.f5163e = true;
        }
    }

    @IdRes
    private int h(int i10) {
        return i10;
    }
}
