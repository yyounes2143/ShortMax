package com.bytedance.sdk.openadsdk.tB;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.Locale;
/* loaded from: classes3.dex */
public class BTZ extends Dialog {
    private com.bytedance.sdk.openadsdk.core.Pfn.so Pfn;
    private oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.Pfn.ex f13387ba;
    private final kkU cFZ;
    private com.bytedance.sdk.openadsdk.core.Pfn.so ex;
    private com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ;
    private com.bytedance.sdk.openadsdk.core.Pfn.ZYk tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void ZYk();

        void oJ();

        void oJ(int i10, FilterWord filterWord, String str);

        void tB();
    }

    public BTZ(@NonNull Context context, kkU kku) {
        super(context, cY.ba(context, "tt_quick_option_dialog"));
        setCanceledOnTouchOutside(false);
        this.cFZ = kku;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ZYk();
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ2 = oJ(si.oJ());
        this.oJ = oJ2;
        setContentView(oJ2);
        oJ(this.oJ);
        tB();
        oJ();
        ex();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        oJ oJVar = this.ZYk;
        if (oJVar != null) {
            oJVar.oJ();
        }
    }

    private void ex() {
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.tB.BTZ.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (BTZ.this.ZYk != null) {
                    BTZ.this.ZYk.tB();
                }
            }
        });
    }

    private void oJ(View view) {
        oJ((EditText) this.tB);
        kkU kku = this.cFZ;
        if (kku != null) {
            String cFZ = kku.cFZ();
            if (!TextUtils.isEmpty(cFZ)) {
                this.tB.setText(cFZ);
                this.ex.setText(String.format(Locale.getDefault(), "%d%s", Integer.valueOf(cFZ.length()), "/200"));
            }
            this.Pfn.setEnabled(!TextUtils.isEmpty(cFZ));
        }
        this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.BTZ.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String obj = BTZ.this.tB.getText().toString();
                if (BTZ.this.ZYk != null) {
                    BTZ.this.ZYk.oJ(4, kkU.oJ, obj);
                }
                BTZ.this.dismiss();
            }
        });
        this.f13387ba.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.tB.BTZ.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (BTZ.this.ZYk != null) {
                    BTZ.this.ZYk.ZYk();
                }
                BTZ.this.dismiss();
            }
        });
        this.tB.addTextChangedListener(new TextWatcher() { // from class: com.bytedance.sdk.openadsdk.tB.BTZ.3
            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                com.bytedance.sdk.openadsdk.core.Pfn.so soVar;
                int round = Math.round(charSequence.length());
                BTZ.this.ex.setText(round + "/200");
                boolean z10 = true;
                if (round <= 0) {
                    soVar = BTZ.this.Pfn;
                    if (BTZ.this.cFZ == null || TextUtils.isEmpty(BTZ.this.cFZ.cFZ())) {
                        z10 = false;
                    }
                } else if (!BTZ.this.Pfn.isEnabled()) {
                    soVar = BTZ.this.Pfn;
                } else {
                    return;
                }
                soVar.setEnabled(z10);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        });
    }

    private void tB() {
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        Window window = getWindow();
        if (window != null) {
            if (window.getDecorView() != null) {
                window.getDecorView().setPadding(0, 0, 0, 0);
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
            window.setGravity(80);
        }
    }

    public void ZYk() {
        InputMethodManager inputMethodManager;
        com.bytedance.sdk.openadsdk.core.Pfn.ZYk zYk = this.tB;
        if (zYk == null || (inputMethodManager = (InputMethodManager) zYk.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.oJ.getWindowToken(), 0);
    }

    public static void oJ(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.bytedance.sdk.openadsdk.tB.BTZ.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
                while (i10 < i11) {
                    int type = Character.getType(charSequence.charAt(i10));
                    if (type != 19 && type != 28) {
                        i10++;
                    } else {
                        return "";
                    }
                }
                return null;
            }
        }, new InputFilter.LengthFilter(200)});
    }

    public void oJ(oJ oJVar) {
        this.ZYk = oJVar;
    }

    public void oJ() {
        com.bytedance.sdk.openadsdk.core.Pfn.ZYk zYk = this.tB;
        if (zYk == null) {
            return;
        }
        zYk.requestFocus();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }

    public void oJ(String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        kkU kku = this.cFZ;
        if (kku != null) {
            kku.oJ(str, cYVar);
        }
    }

    private com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        pfn.setOrientation(1);
        pfn.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_dislike_dialog_bg"));
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setLayoutParams(new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 48.0f)));
        this.f13387ba = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        int ZYk = cdg.ZYk(context, 24.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ZYk, ZYk);
        layoutParams.addRule(16);
        layoutParams.addRule(11);
        int ZYk2 = cdg.ZYk(context, 10.0f);
        layoutParams.topMargin = ZYk2;
        layoutParams.rightMargin = ZYk2;
        this.f13387ba.setLayoutParams(layoutParams);
        this.f13387ba.setClickable(true);
        this.f13387ba.setFocusable(true);
        this.f13387ba.setImageDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_titlebar_close_seletor"));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(16);
        layoutParams2.topMargin = cdg.ZYk(context, 12.0f);
        soVar.setLayoutParams(layoutParams2);
        soVar.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        soVar.setGravity(17);
        soVar.setSingleLine(true);
        soVar.setText(cY.oJ(context, "tt_other_reason"));
        soVar.setTextColor(Color.parseColor("#161823"));
        soVar.setTextSize(15.0f);
        soVar.setTypeface(Typeface.defaultFromStyle(0));
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 0.5f)));
        view.setBackgroundColor(Color.argb(51, 22, 24, 35));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pfn2.setOrientation(1);
        com.bytedance.sdk.openadsdk.core.Pfn.ZYk zYk = new com.bytedance.sdk.openadsdk.core.Pfn.ZYk(context);
        this.tB = zYk;
        zYk.setFilters(new InputFilter[]{new InputFilter.LengthFilter(200), new InputFilter.AllCaps()});
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = cdg.ZYk(context, 16.0f);
        layoutParams3.rightMargin = cdg.ZYk(context, 16.0f);
        layoutParams3.topMargin = cdg.ZYk(context, 11.5f);
        this.tB.setLayoutParams(layoutParams3);
        this.tB.setLines(4);
        this.tB.setGravity(48);
        this.tB.setTextSize(15.0f);
        this.tB.setTextColor(Color.rgb(22, 24, 35));
        this.tB.setHintTextColor(Color.parseColor("#57161823"));
        this.tB.setBackground(null);
        this.tB.setImeOptions(268435456);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        int ZYk3 = cdg.ZYk(context, 16.0f);
        int ZYk4 = cdg.ZYk(context, 17.0f);
        pfn3.setPadding(ZYk3, ZYk4, ZYk3, ZYk4);
        pfn3.setLayoutParams(layoutParams4);
        pfn3.setOrientation(0);
        this.ex = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        layoutParams5.gravity = GravityCompat.START;
        this.ex.setLayoutParams(layoutParams5);
        this.ex.setText(String.format("0%s", "/200"));
        this.ex.setGravity(GravityCompat.START);
        this.ex.setTextColor(Color.parseColor("#57161823"));
        this.ex.setTextSize(15.0f);
        this.Pfn = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = GravityCompat.END;
        this.Pfn.setLayoutParams(layoutParams6);
        this.Pfn.setTextSize(14.0f);
        this.Pfn.setTextColor(-1);
        this.Pfn.setVisibility(0);
        this.Pfn.setSingleLine(true);
        int ZYk5 = cdg.ZYk(context, 27.0f);
        int ZYk6 = cdg.ZYk(context, 5.0f);
        this.Pfn.setPadding(ZYk5, ZYk6, ZYk5, ZYk6);
        int ZYk7 = cdg.ZYk(context, 6.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        float f10 = ZYk7;
        gradientDrawable.setCornerRadius(f10);
        int rgb = Color.rgb(254, 44, 85);
        gradientDrawable.setColor(rgb);
        gradientDrawable.setAlpha(102);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(f10);
        gradientDrawable2.setColor(rgb);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842910}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        this.Pfn.setBackground(stateListDrawable);
        this.Pfn.setText(cY.oJ(context, "tt_done"));
        this.Pfn.setEnabled(false);
        pfn.addView(cfz);
        pfn.addView(view);
        pfn.addView(pfn2);
        cfz.addView(this.f13387ba);
        cfz.addView(soVar);
        pfn2.addView(this.tB);
        pfn2.addView(pfn3);
        pfn3.addView(this.ex);
        pfn3.addView(this.Pfn);
        return pfn;
    }
}
