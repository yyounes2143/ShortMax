package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ZYk extends Dialog {
    private String BTZ;
    private com.bytedance.sdk.openadsdk.core.Pfn.oJ Pfn;
    private int PiB;
    private OnBackInvokedCallback WcQ;
    private com.bytedance.sdk.openadsdk.core.Pfn.ex ZYk;
    private boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.Pfn.oJ f13301ba;
    private View cFZ;
    private String dLZ;
    private com.bytedance.sdk.openadsdk.core.Pfn.so ex;
    private String jFA;
    private String kkU;
    public InterfaceC0229ZYk oJ;

    /* renamed from: so  reason: collision with root package name */
    private final Context f13302so;
    private com.bytedance.sdk.openadsdk.core.Pfn.so tB;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0229ZYk {
        void ZYk();

        void oJ();
    }

    /* loaded from: classes3.dex */
    private static class oJ implements OnBackInvokedCallback {
        private final WeakReference<ZYk> oJ;

        oJ(ZYk zYk) {
            this.oJ = new WeakReference<>(zYk);
        }

        public void onBackInvoked() {
            ZYk zYk = this.oJ.get();
            if (zYk != null) {
                QSm.oJ("CustomCommonDialog", "onBackInvoked");
                zYk.onBackPressed();
            }
        }
    }

    public ZYk(Context context) {
        super(context, cY.ba(context, "tt_custom_dialog"));
        this.PiB = -1;
        this.awB = false;
        this.f13302so = context;
    }

    private void ZYk() {
        if (!TextUtils.isEmpty(this.kkU)) {
            this.tB.setText(this.kkU);
            this.tB.setVisibility(0);
        } else {
            this.tB.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.jFA)) {
            this.ex.setText(this.jFA);
        }
        if (!TextUtils.isEmpty(this.dLZ)) {
            this.f13301ba.setText(this.dLZ);
        } else {
            this.f13301ba.setText(cY.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_postive_txt"));
        }
        if (!TextUtils.isEmpty(this.BTZ)) {
            this.Pfn.setText(this.BTZ);
        } else {
            this.Pfn.setText(cY.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_negtive_txt"));
        }
        int i10 = this.PiB;
        if (i10 != -1) {
            this.ZYk.setImageResource(i10);
            this.ZYk.setVisibility(0);
        } else {
            this.ZYk.setVisibility(8);
        }
        if (this.awB) {
            this.cFZ.setVisibility(8);
            this.Pfn.setVisibility(8);
            return;
        }
        this.Pfn.setVisibility(0);
        this.cFZ.setVisibility(0);
    }

    private void oJ() {
        this.f13301ba.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ZYk.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InterfaceC0229ZYk interfaceC0229ZYk = ZYk.this.oJ;
                if (interfaceC0229ZYk != null) {
                    interfaceC0229ZYk.oJ();
                }
            }
        });
        this.Pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.ZYk.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InterfaceC0229ZYk interfaceC0229ZYk = ZYk.this.oJ;
                if (interfaceC0229ZYk != null) {
                    interfaceC0229ZYk.ZYk();
                }
            }
        });
    }

    private void tB() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (this.WcQ == null || !com.bytedance.sdk.openadsdk.utils.cY.oJ()) {
            return;
        }
        QSm.oJ("CustomCommonDialog", "isAtLeastT unregisterOnBackInvokedCallback");
        onBackInvokedDispatcher = getOnBackInvokedDispatcher();
        onBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.WcQ);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        tB();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        QSm.oJ("CustomCommonDialog", "onBackPressed");
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        setContentView(oJ(this.f13302so));
        if (com.bytedance.sdk.openadsdk.utils.cY.oJ()) {
            QSm.oJ("CustomCommonDialog", "isAtLeastT registerOnBackInvokedCallback");
            this.WcQ = new oJ(this);
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.WcQ);
        }
        setCanceledOnTouchOutside(false);
        ZYk();
        oJ();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        ZYk();
    }

    private View oJ(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        pfn.setMinimumWidth(oJ(260.0f));
        pfn.setPadding(0, oJ(32.0f), 0, 0);
        pfn.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_custom_dialog_bg"));
        pfn.setOrientation(1);
        pfn.setLayoutParams(layoutParams);
        this.tB = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.leftMargin = oJ(16.0f);
        layoutParams2.rightMargin = oJ(16.0f);
        layoutParams2.bottomMargin = oJ(16.0f);
        this.tB.setGravity(17);
        this.tB.setVisibility(0);
        this.tB.setTextColor(Color.parseColor("#333333"));
        this.tB.setTextSize(18.0f);
        this.tB.setLayoutParams(layoutParams2);
        this.ZYk = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        layoutParams3.leftMargin = oJ(16.0f);
        layoutParams3.rightMargin = oJ(16.0f);
        layoutParams3.bottomMargin = oJ(10.0f);
        this.ZYk.setMaxHeight(oJ(150.0f));
        this.ZYk.setMaxWidth(oJ(150.0f));
        this.ZYk.setVisibility(0);
        this.ZYk.setLayoutParams(layoutParams3);
        this.ex = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.leftMargin = oJ(20.0f);
        layoutParams4.rightMargin = oJ(20.0f);
        this.ex.setGravity(17);
        this.ex.setLineSpacing(oJ(3.0f), 1.2f);
        this.ex.setTextSize(18.0f);
        this.ex.setTextColor(Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR));
        this.ex.setLayoutParams(layoutParams4);
        View view = new View(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 1);
        layoutParams5.topMargin = oJ(32.0f);
        view.setBackgroundColor(Color.parseColor("#E4E4E4"));
        view.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        pfn2.setOrientation(0);
        pfn2.setLayoutParams(layoutParams6);
        com.bytedance.sdk.openadsdk.core.Pfn.oJ oJVar = new com.bytedance.sdk.openadsdk.core.Pfn.oJ(context);
        this.Pfn = oJVar;
        oJVar.setId(520093718);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -2);
        layoutParams7.leftMargin = oJ(10.0f);
        layoutParams7.weight = 1.0f;
        this.Pfn.setPadding(0, oJ(16.0f), 0, oJ(16.0f));
        this.Pfn.setBackground(null);
        this.Pfn.setGravity(17);
        this.Pfn.setSingleLine(true);
        this.Pfn.setTextColor(Color.parseColor("#999999"));
        this.Pfn.setTextSize(16.0f);
        this.Pfn.setLayoutParams(layoutParams7);
        this.cFZ = new View(context);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(1, -1);
        this.cFZ.setBackgroundColor(Color.parseColor("#E4E4E4"));
        this.cFZ.setLayoutParams(layoutParams8);
        this.f13301ba = new com.bytedance.sdk.openadsdk.core.Pfn.oJ(context);
        this.Pfn.setId(520093719);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, -2);
        layoutParams9.rightMargin = oJ(10.0f);
        layoutParams9.weight = 1.0f;
        this.f13301ba.setPadding(0, oJ(16.0f), 0, oJ(16.0f));
        this.f13301ba.setBackground(null);
        this.f13301ba.setGravity(17);
        this.f13301ba.setSingleLine(true);
        this.f13301ba.setTextColor(Color.parseColor("#38ADFF"));
        this.f13301ba.setTextSize(16.0f);
        this.f13301ba.setLayoutParams(layoutParams9);
        cfz.addView(pfn);
        pfn.addView(this.tB);
        pfn.addView(this.ZYk);
        pfn.addView(this.ex);
        pfn.addView(view);
        pfn.addView(pfn2);
        pfn2.addView(this.Pfn);
        pfn2.addView(this.cFZ);
        pfn2.addView(this.f13301ba);
        return cfz;
    }

    public ZYk tB(String str) {
        this.BTZ = str;
        return this;
    }

    public ZYk ZYk(String str) {
        this.dLZ = str;
        return this;
    }

    private int oJ(float f10) {
        return cdg.ZYk(getContext(), f10);
    }

    public ZYk oJ(InterfaceC0229ZYk interfaceC0229ZYk) {
        this.oJ = interfaceC0229ZYk;
        return this;
    }

    public ZYk oJ(String str) {
        this.jFA = str;
        return this;
    }
}
