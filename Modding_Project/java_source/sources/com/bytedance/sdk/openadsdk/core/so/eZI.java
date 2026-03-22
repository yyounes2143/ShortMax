package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class eZI extends com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba implements View.OnClickListener {

    /* renamed from: si  reason: collision with root package name */
    private boolean f13271si;

    public eZI(@NonNull Context context, @NonNull com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, com.bytedance.sdk.openadsdk.ex.cFZ cfz, boolean z10) {
        super(context, cYVar, false, str, false, false, cfz);
        this.f13271si = false;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
        setNeedSelfManagerVideo(!z10);
    }

    private void RZ() {
        cFZ();
        RelativeLayout relativeLayout = this.cFZ;
        if (relativeLayout != null) {
            if (relativeLayout.getVisibility() == 0) {
                return;
            }
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.oJ.ib().kkU(), this.oJ.ib().tB(), this.oJ.ib().ZYk(), this.f13073so, this.oJ);
        }
        Ry();
    }

    private void Ry() {
        cdg.oJ((View) this.cFZ, 0);
        cdg.oJ((View) this.f13073so, 0);
        cdg.oJ((View) this.kkU, 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Pfn() {
        cFZ();
        cdg.oJ((View) this.cFZ, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba
    public void ZYk() {
        if (!this.Pfn || !jr.ZYk(this.BTZ)) {
            this.ex = false;
        }
        super.ZYk();
    }

    public void ex() {
        ImageView imageView = this.kkU;
        if (imageView != null) {
            cdg.oJ((View) imageView, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba
    protected void oJ(boolean z10) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.jFA;
        if (imageView != null && imageView.getVisibility() == 0) {
            cdg.Pfn(this.cFZ);
        }
        tB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        ImageView imageView = this.jFA;
        if (imageView != null && imageView.getVisibility() == 0) {
            RZ();
        } else {
            super.onWindowFocusChanged(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba, android.view.View
    public void onWindowVisibilityChanged(int i10) {
        ImageView imageView = this.jFA;
        if (imageView != null && imageView.getVisibility() == 0) {
            RZ();
        } else {
            super.onWindowVisibilityChanged(i10);
        }
    }

    public void setCanInterruptVideoPlay(boolean z10) {
        this.f13271si = z10;
    }

    public void setShouldCheckNetChange(boolean z10) {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.Pfn(z10);
        }
    }

    public void setShowAdInteractionView(boolean z10) {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn BTZ;
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB tBVar = this.ZYk;
        if (tBVar != null && (BTZ = tBVar.BTZ()) != null) {
            BTZ.oJ(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba
    public void tB() {
        if (this.f13271si) {
            super.tB();
        }
    }

    public void oJ(int i10, int i11) {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB tBVar = this.ZYk;
        if (tBVar != null) {
            tBVar.ZYk(i10, i11);
        }
    }
}
