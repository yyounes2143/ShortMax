package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class si extends ba {
    private TextView Id;
    private TextView QSm;
    private TextView ZYk;
    private LinearLayout cY;
    private TextView oJ;

    /* renamed from: oq  reason: collision with root package name */
    private TextView f12683oq;

    public si(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.oJ = new TextView(this.dLZ);
        this.ZYk = new TextView(this.dLZ);
        this.QSm = new TextView(this.dLZ);
        this.cY = new LinearLayout(this.dLZ);
        this.f12683oq = new TextView(this.dLZ);
        this.Id = new TextView(this.dLZ);
        this.oJ.setTag(9);
        this.ZYk.setTag(10);
        this.QSm.setTag(12);
        this.cY.addView(this.QSm);
        this.cY.addView(this.Id);
        this.cY.addView(this.ZYk);
        this.cY.addView(this.f12683oq);
        this.cY.addView(this.oJ);
        addView(this.cY, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    protected boolean ex() {
        this.oJ.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.oJ.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.ZYk.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.ZYk.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        this.QSm.setOnTouchListener((View.OnTouchListener) getDynamicClickListener());
        this.QSm.setOnClickListener((View.OnClickListener) getDynamicClickListener());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        this.QSm.setText("Function");
        this.ZYk.setText("Permission list");
        this.f12683oq.setText(" | ");
        this.Id.setText(" | ");
        this.oJ.setText("Privacy policy");
        com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz = this.BTZ;
        if (cfz != null) {
            this.QSm.setTextColor(cfz.cFZ());
            this.QSm.setTextSize(this.BTZ.Pfn());
            this.ZYk.setTextColor(this.BTZ.cFZ());
            this.ZYk.setTextSize(this.BTZ.Pfn());
            this.f12683oq.setTextColor(this.BTZ.cFZ());
            this.Id.setTextColor(this.BTZ.cFZ());
            this.oJ.setTextColor(this.BTZ.cFZ());
            this.oJ.setTextSize(this.BTZ.Pfn());
            return false;
        }
        this.QSm.setTextColor(-1);
        this.QSm.setTextSize(12.0f);
        this.ZYk.setTextColor(-1);
        this.ZYk.setTextSize(12.0f);
        this.f12683oq.setTextColor(-1);
        this.Id.setTextColor(-1);
        this.oJ.setTextColor(-1);
        this.oJ.setTextSize(12.0f);
        return false;
    }
}
