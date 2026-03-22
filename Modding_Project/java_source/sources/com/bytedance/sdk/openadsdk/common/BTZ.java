package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.oq;
import com.bytedance.sdk.openadsdk.utils.Ln;
/* loaded from: classes3.dex */
public class BTZ extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    private Runnable Pfn;
    protected boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private Runnable f12954ba;
    private boolean cFZ;
    private long ex;
    protected dLZ oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12955so;
    private int tB;

    public BTZ(@NonNull Context context) {
        super(context);
        this.ex = 10L;
        this.ZYk = true;
        this.cFZ = false;
        this.f12955so = 1;
        tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(int i10) {
        dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.oJ(i10);
        }
        if (i10 == 100 && this.ZYk) {
            ZYk();
        }
    }

    private void tB() {
        setBackgroundColor(Color.parseColor("#2E2E2E"));
        setVisibility(8);
    }

    public dLZ getLoadingStyle() {
        return this.oJ;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        tB(configuration.orientation);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.Pfn;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.Pfn = null;
        }
    }

    public void setOnlyLoading(boolean z10) {
        this.cFZ = z10;
    }

    private void tB(int i10) {
        if (this.f12955so != i10) {
            this.f12955so = i10;
        }
    }

    public void oJ(cY cYVar) {
        oq RZ;
        if (cYVar != null && (RZ = cYVar.RZ()) != null) {
            this.ex = RZ.oJ();
        }
        dLZ dlz = new dLZ(getContext());
        this.oJ = dlz;
        View oJ = dlz.oJ();
        if (oJ.getParent() instanceof ViewGroup) {
            ((ViewGroup) oJ.getParent()).removeView(oJ);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        oJ.setLayoutParams(layoutParams);
        if (cYVar != null) {
            boolean rg2 = cYVar.rg();
            com.bytedance.sdk.openadsdk.core.widget.si ZYk = this.oJ.ZYk();
            if (ZYk != null) {
                if (!this.cFZ && !rg2) {
                    com.bytedance.sdk.openadsdk.core.model.Ry Zjw = (cYVar.Zjw() == null || TextUtils.isEmpty(cYVar.Zjw().oJ())) ? null : cYVar.Zjw();
                    if (Zjw != null && !TextUtils.isEmpty(Zjw.oJ())) {
                        try {
                            com.bytedance.sdk.openadsdk.jFA.ex.oJ(Zjw).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, Zjw.oJ(), new Ln(ZYk)));
                        } catch (Throwable unused) {
                        }
                    }
                    ZYk.setVisibility(8);
                } else {
                    ZYk.setVisibility(8);
                }
            }
            com.bytedance.sdk.openadsdk.core.Pfn.so tB = this.oJ.tB();
            if (tB != null) {
                if (!this.cFZ && !rg2) {
                    if (!TextUtils.isEmpty(cYVar.UUI())) {
                        tB.setText(cYVar.UUI());
                    } else {
                        tB.setVisibility(8);
                    }
                } else {
                    tB.setText("Loading");
                }
            }
        }
        addView(oJ);
        tB(getResources().getConfiguration().orientation);
    }

    public void ZYk() {
        this.tB = 0;
        dLZ dlz = this.oJ;
        if (dlz != null) {
            removeView(dlz.oJ);
            this.oJ.ex();
        }
        setVisibility(8);
        this.oJ = null;
        Runnable runnable = this.Pfn;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f12954ba;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        this.f12954ba = null;
        this.Pfn = null;
    }

    public void oJ() {
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.BTZ.1
            @Override // java.lang.Runnable
            public void run() {
                BTZ btz = BTZ.this;
                if (btz.oJ != null) {
                    btz.setVisibility(0);
                }
            }
        });
        if (this.Pfn == null) {
            this.Pfn = new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.BTZ.2
                @Override // java.lang.Runnable
                public void run() {
                    BTZ.this.ZYk();
                }
            };
        }
        postDelayed(this.Pfn, this.ex * 1000);
    }

    public void oJ(int i10) {
        if (i10 == 100 || Math.abs(i10 - this.tB) >= 7) {
            this.tB = i10;
            if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
                ZYk(this.tB);
                return;
            }
            if (this.f12954ba == null) {
                this.f12954ba = new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.BTZ.3
                    @Override // java.lang.Runnable
                    public void run() {
                        BTZ btz = BTZ.this;
                        btz.ZYk(btz.tB);
                    }
                };
            }
            post(this.f12954ba);
        }
    }
}
