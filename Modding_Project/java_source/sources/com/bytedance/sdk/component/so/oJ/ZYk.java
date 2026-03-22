package com.bytedance.sdk.component.so.oJ;

import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.IUZ;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class ZYk extends IUZ implements tB {
    private final HandlerThread ZYk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZYk(HandlerThread handlerThread, IUZ.oJ oJVar) {
        super(handlerThread.getLooper(), oJVar);
        this.ZYk = handlerThread;
    }

    public void ZYk() {
        HandlerThread handlerThread = this.ZYk;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    @Override // com.bytedance.sdk.component.so.oJ.tB
    public void oJ() {
        removeCallbacksAndMessages(null);
        WeakReference<IUZ.oJ> weakReference = this.oJ;
        if (weakReference != null) {
            weakReference.clear();
            this.oJ = null;
        }
    }

    public void oJ(IUZ.oJ oJVar) {
        this.oJ = new WeakReference<>(oJVar);
    }
}
