package com.bytedance.sdk.openadsdk.common;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class si extends Dialog {
    private static final String[] ZYk = {"SDK version", "App", "App version", "OS", "Device", "Creative info"};
    private Button Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private ImageView f12968ba;
    private TextView ex;
    private final Handler oJ;
    private String tB;

    public si(@NonNull Context context) {
        super(context, cY.ba(context, "tt_privacy_dialog_theme_ad_report"));
        this.oJ = new Handler(Looper.getMainLooper());
        this.tB = "";
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(oJ(getContext()), new ViewGroup.LayoutParams(cdg.tB(getContext()), (int) (cdg.Pfn(getContext()) * 0.9d)));
        ZYk();
        if (getWindow() != null) {
            getWindow().setGravity(80);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.oJ.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.si.3
                @Override // java.lang.Runnable
                public void run() {
                    si.this.ex.setText(si.this.tB);
                }
            }, 1000L);
        } catch (Exception e10) {
            ApmHelper.reportCustomError("showPrivacyAdReportDialogError", "showPrivacyAdReportDialogError", e10);
        }
    }

    private void ZYk() {
        final String ba2 = HyG.ba();
        final String so2 = HyG.so();
        final String str = "Android " + Build.VERSION.RELEASE;
        final String str2 = Build.BRAND + " " + Build.MODEL;
        this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.si.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ClipboardManager clipboardManager = (ClipboardManager) si.this.getContext().getSystemService("clipboard");
                if (clipboardManager != null) {
                    StringBuilder sb2 = new StringBuilder();
                    String[] strArr = {BuildConfig.VERSION_NAME, ba2, so2, str, str2, si.this.tB};
                    for (int i10 = 0; i10 < si.ZYk.length; i10++) {
                        sb2.append(si.ZYk[i10]);
                        sb2.append(": ");
                        sb2.append(strArr[i10]);
                        sb2.append("\n");
                    }
                    try {
                        clipboardManager.setPrimaryClip(ClipData.newPlainText("pangle sdk build info", sb2));
                    } catch (Throwable unused) {
                    }
                }
            }
        });
        this.f12968ba.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.si.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                si.this.ex.setText("loading ...");
                si.this.cancel();
            }
        });
    }

    public void oJ(String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        JSONObject Efd;
        try {
            if (!TextUtils.isEmpty(str)) {
                Efd = new JSONObject(str);
            } else {
                Efd = cYVar.Efd();
            }
            this.tB = com.bytedance.sdk.component.utils.oJ.oJ(Efd).toString();
        } catch (JSONException e10) {
            QSm.tB("TTPrivacyAdReportDialog", e10.getMessage());
        }
    }

    private View oJ(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        pfn.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_ad_report_info_bg"));
        pfn.setOrientation(1);
        pfn.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setLayoutParams(new ViewGroup.LayoutParams(-1, oJ(44.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(oJ(191.0f), oJ(24.0f));
        layoutParams2.addRule(13);
        soVar.setGravity(17);
        soVar.setText("Ad Report");
        soVar.setTextColor(Color.parseColor("#161823"));
        soVar.setTextSize(1, 17.0f);
        soVar.setLayoutParams(layoutParams2);
        this.f12968ba = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(oJ(40.0f), oJ(44.0f));
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams3.rightMargin = oJ(8.0f);
        this.f12968ba.setPadding(oJ(12.0f), oJ(14.0f), oJ(12.0f), oJ(14.0f));
        this.f12968ba.setImageResource(cY.ex(context, "tt_ad_xmark"));
        this.f12968ba.setLayoutParams(layoutParams3);
        View view = new View(context);
        ViewGroup.LayoutParams layoutParams4 = new ViewGroup.LayoutParams(-1, oJ(0.5f));
        view.setBackgroundColor(Color.parseColor("#1F161823"));
        view.setLayoutParams(layoutParams4);
        ScrollView scrollView = new ScrollView(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams5.leftMargin = oJ(16.0f);
        layoutParams5.rightMargin = oJ(16.0f);
        layoutParams5.weight = 1.0f;
        layoutParams5.setMarginStart(oJ(16.0f));
        layoutParams5.setMarginEnd(oJ(16.0f));
        scrollView.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        ViewGroup.LayoutParams layoutParams6 = new ViewGroup.LayoutParams(-1, -1);
        pfn2.setOrientation(1);
        pfn2.setLayoutParams(layoutParams6);
        String ba2 = HyG.ba();
        String so2 = HyG.so();
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ = oJ(context, "SDK version", BuildConfig.VERSION_NAME);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ2 = oJ(context, "App", ba2);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ3 = oJ(context, "App version", so2);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ4 = oJ(context, "OS", "Android " + Build.VERSION.RELEASE);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ5 = oJ(context, "Device", Build.BRAND + " " + Build.MODEL);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ6 = oJ(context, "Creative info", "loading ...");
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, oJ(76.0f));
        pfn3.setBackgroundColor(-1);
        pfn3.setLayoutParams(layoutParams7);
        this.Pfn = new Button(context);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -1);
        int oJ7 = oJ(16.0f);
        layoutParams8.setMargins(oJ7, oJ7, oJ7, oJ7);
        this.Pfn.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_ad_report_info_button_bg"));
        this.Pfn.setText("copy all");
        this.Pfn.setTextColor(Color.parseColor("#333333"));
        this.Pfn.setTextSize(14.0f);
        this.Pfn.setLayoutParams(layoutParams8);
        pfn.addView(cfz);
        cfz.addView(soVar);
        cfz.addView(this.f12968ba);
        pfn.addView(view);
        pfn.addView(scrollView);
        scrollView.addView(pfn2);
        pfn2.addView(oJ);
        pfn2.addView(oJ2);
        pfn2.addView(oJ3);
        pfn2.addView(oJ4);
        pfn2.addView(oJ5);
        pfn2.addView(oJ6);
        pfn.addView(pfn3);
        pfn3.addView(this.Pfn);
        return pfn;
    }

    private com.bytedance.sdk.openadsdk.core.Pfn.Pfn oJ(Context context, String str, String str2) {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, str.equals("Creative info") ? -2 : oJ(74.0f));
        pfn.setOrientation(1);
        pfn.setPadding(0, oJ(16.0f), 0, oJ(16.0f));
        pfn.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.bottomMargin = oJ(7.0f);
        soVar.setIncludeFontPadding(false);
        soVar.setText(str);
        soVar.setTextColor(Color.parseColor("#333333"));
        soVar.setTextSize(16.0f);
        soVar.setTypeface(Typeface.defaultFromStyle(1));
        soVar.setLayoutParams(layoutParams2);
        pfn.addView(soVar);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        if (str.equals("Creative info")) {
            this.ex = soVar2;
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        soVar2.setIncludeFontPadding(false);
        soVar2.setTextColor(Color.parseColor("#666666"));
        soVar2.setText(str2);
        soVar2.setTextSize(14.0f);
        soVar2.setLayoutParams(layoutParams3);
        pfn.addView(soVar2);
        return pfn;
    }

    private int oJ(float f10) {
        return cdg.ZYk(getContext(), f10);
    }
}
