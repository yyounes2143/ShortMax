package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class HL extends LinearLayout {
    private LinearLayout Pfn;
    private com.bytedance.sdk.component.utils.jr ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.ba f12643ba;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.kkU cFZ;
    private oJ ex;
    private TextView oJ;
    private TextView tB;

    /* loaded from: classes3.dex */
    public interface oJ {
    }

    public HL(@NonNull Context context, View view, com.bytedance.sdk.component.adexpress.dynamic.ex.kkU kku) {
        super(context);
        this.cFZ = kku;
        oJ(context, view);
    }

    public TextView getTopTextView() {
        return this.oJ;
    }

    public LinearLayout getWriggleLayout() {
        return this.Pfn;
    }

    public View getWriggleProgressIv() {
        return this.f12643ba;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.ZYk == null) {
                this.ZYk = new com.bytedance.sdk.component.utils.jr(getContext().getApplicationContext(), 2);
            }
            new Object() { // from class: com.bytedance.sdk.component.adexpress.ba.HL.2
            };
            com.bytedance.sdk.component.adexpress.dynamic.ex.kkU kku = this.cFZ;
            if (kku != null) {
                kku.tB();
                this.cFZ.Pfn();
                this.cFZ.ba();
                this.cFZ.so();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            com.bytedance.adsdk.ZYk.ba baVar = this.f12643ba;
            if (baVar != null) {
                baVar.Pfn();
            }
        } catch (Exception unused) {
        }
    }

    public void setOnShakeViewListener(oJ oJVar) {
        this.ex = oJVar;
    }

    public void setShakeText(String str) {
        this.tB.setText(str);
    }

    private void oJ(Context context, View view) {
        setClipChildren(false);
        addView(view);
        this.Pfn = (LinearLayout) findViewById(2097610722);
        this.oJ = (TextView) findViewById(2097610719);
        this.tB = (TextView) findViewById(2097610718);
        com.bytedance.adsdk.ZYk.ba baVar = (com.bytedance.adsdk.ZYk.ba) findViewById(2097610706);
        this.f12643ba = baVar;
        baVar.setAnimation("lottie_json/twist_multi_angle.json");
        this.f12643ba.setImageAssetsFolder("images/");
        this.f12643ba.oJ(true);
    }

    public void oJ() {
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.HL.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HL.this.f12643ba.oJ();
                } catch (Throwable unused) {
                }
            }
        }, 500L);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
    }
}
