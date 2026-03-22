package com.bytedance.sdk.openadsdk.component.so;

import android.content.Context;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
/* loaded from: classes3.dex */
public class tB implements oJ.InterfaceC0202oJ {
    private boolean Pfn = false;
    private FrameLayout ZYk;
    private ZYk ex;
    private Context oJ;
    private cY tB;

    public tB(Context context) {
        this.oJ = context.getApplicationContext();
    }

    public void BTZ() {
        ZYk zYk = this.ex;
        if (zYk == null) {
            return;
        }
        this.oJ = null;
        zYk.ex();
        this.ex = null;
    }

    public boolean Pfn() {
        ZYk zYk = this.ex;
        if (zYk != null && zYk.dLZ() != null && this.ex.dLZ().ba()) {
            return true;
        }
        return false;
    }

    public long PiB() {
        ZYk zYk = this.ex;
        if (zYk != null) {
            return zYk.ba();
        }
        return 0L;
    }

    public long WcQ() {
        ZYk zYk = this.ex;
        if (zYk != null) {
            return zYk.cFZ();
        }
        return 0L;
    }

    public ZYk ZYk() {
        return this.ex;
    }

    public long awB() {
        ZYk zYk = this.ex;
        if (zYk != null) {
            return zYk.jFA() + this.ex.cFZ();
        }
        return 0L;
    }

    public boolean ba() {
        ZYk zYk = this.ex;
        if (zYk != null && zYk.dLZ() != null && this.ex.dLZ().cFZ()) {
            return true;
        }
        return false;
    }

    public boolean cFZ() {
        ZYk zYk = this.ex;
        if (zYk != null && zYk.WcQ()) {
            return true;
        }
        return false;
    }

    public void dLZ() {
        ZYk zYk = this.ex;
        if (zYk != null) {
            zYk.tB();
        }
    }

    public boolean ex() {
        ZYk zYk = this.ex;
        if (zYk != null && zYk.dLZ() != null && this.ex.dLZ().ZYk()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ.InterfaceC0202oJ
    public long getVideoProgress() {
        return PiB();
    }

    public void jFA() {
        try {
            if (ba()) {
                dLZ();
            }
        } catch (Throwable th2) {
            QSm.tB("TTAppOpenVideoManager", "onContinue throw Exception :" + th2.getMessage());
        }
    }

    public void kkU() {
        ZYk zYk = this.ex;
        if (zYk == null) {
            return;
        }
        zYk.ex();
        this.ex = null;
    }

    public void oJ(FrameLayout frameLayout, cY cYVar) {
        this.ZYk = frameLayout;
        this.tB = cYVar;
        this.ex = new ZYk(this.oJ, frameLayout, cYVar);
    }

    public void so() {
        try {
            if (Pfn()) {
                this.ex.ZYk();
            }
        } catch (Throwable th2) {
            QSm.tB("TTAppOpenVideoManager", "open_ad", "AppOpenVideoManager onPause throw Exception :" + th2.getMessage());
        }
    }

    public boolean tB() {
        return this.Pfn;
    }

    public boolean oJ() {
        com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ = cY.oJ(CacheDirFactory.getICacheDir(0).ZYk(), this.tB);
        oJ.ZYk(this.tB.edj());
        oJ.ZYk(this.ZYk.getWidth());
        oJ.tB(this.ZYk.getHeight());
        oJ.tB(this.tB.pe());
        oJ.oJ(0L);
        oJ.oJ(true);
        return this.ex.oJ(oJ);
    }

    public void oJ(boolean z10) {
        this.Pfn = z10;
    }

    public void oJ(tB.oJ oJVar) {
        ZYk zYk = this.ex;
        if (zYk != null) {
            zYk.oJ(oJVar);
        }
    }

    public boolean oJ(FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.oJ oJVar, cY cYVar) {
        oJ(frameLayout, cYVar);
        oJ(oJVar);
        try {
            return oJ();
        } catch (Throwable th2) {
            QSm.tB("TTAppOpenVideoManager", "open_ad", "ttAppOpenAd playVideo error: " + th2.getMessage());
            return false;
        }
    }

    public boolean oJ(float f10) {
        try {
            ZYk zYk = this.ex;
            if (zYk != null) {
                return zYk.oJ(f10);
            }
            return false;
        } catch (Throwable th2) {
            QSm.tB("TTAppOpenVideoManager", "open_ad", "setPlaybackSpeed error: " + th2.getMessage());
            return false;
        }
    }

    public void oJ(int i10) {
        if (this.ex != null) {
            awB.oJ oJVar = new awB.oJ();
            oJVar.ZYk(PiB());
            oJVar.ex(awB());
            oJVar.tB(WcQ());
            oJVar.tB(i10);
            oJVar.ex(this.ex.so());
            oJVar.oJ(this.ex.si());
            this.ex.oJ(oJVar);
        }
    }
}
