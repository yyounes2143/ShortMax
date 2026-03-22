package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class si extends oJ {
    private QSm PiB;
    private FrameLayout WcQ;
    private FrameLayout oJ;

    public si(@NonNull Context context) {
        super(context);
        this.ZYk = context;
    }

    private void ZYk() {
        this.cFZ = cdg.ZYk(this.ZYk, this.PiB.getExpectExpressWidth());
        this.f13276so = cdg.ZYk(this.ZYk, this.PiB.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.cFZ, this.f13276so);
        }
        layoutParams.width = this.cFZ;
        layoutParams.height = this.f13276so;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        this.tB.EP();
        tB();
    }

    private void tB() {
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this.ZYk);
        this.oJ = tBVar;
        addView(tBVar, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this.ZYk);
        this.WcQ = tBVar2;
        this.oJ.addView(tBVar2, new FrameLayout.LayoutParams(-1, -1));
        this.WcQ.removeAllViews();
    }

    public View getBackupContainerBackgroundView() {
        return this.oJ;
    }

    public FrameLayout getVideoContainer() {
        return this.WcQ;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, QSm qSm, ViewGroup viewGroup) {
        if (cYVar == null) {
            return;
        }
        setBackgroundColor(-1);
        this.tB = cYVar;
        this.PiB = qSm;
        if (cYVar.qnr() == 7) {
            this.f13275ba = "rewarded_video";
        } else {
            this.f13275ba = "fullscreen_interstitial_ad";
        }
        ZYk();
        if (com.bytedance.sdk.openadsdk.core.model.QSm.tB(cYVar)) {
            this.PiB.addView(this, new ViewGroup.LayoutParams(-1, -1));
        } else {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            this.PiB.addView(this, layoutParams);
        }
        int i10 = com.bytedance.sdk.openadsdk.utils.eZI.OP;
        View findViewById = viewGroup.findViewById(i10);
        if (findViewById != null) {
            Object tag = findViewById.getTag(i10);
            if (tag instanceof String) {
                String str = (String) tag;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(str, findViewById);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    protected void oJ(View view, int i10, com.bytedance.sdk.openadsdk.core.model.eZI ezi) {
        QSm qSm = this.PiB;
        if (qSm != null) {
            qSm.oJ(view, i10, ezi);
        }
    }
}
