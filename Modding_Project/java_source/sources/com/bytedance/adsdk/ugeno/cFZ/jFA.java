package com.bytedance.adsdk.ugeno.cFZ;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class jFA extends Handler {
    private final WeakReference<oJ> oJ;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(Message message);
    }

    public jFA(Looper looper, oJ oJVar) {
        super(looper);
        this.oJ = new WeakReference<>(oJVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        oJ oJVar = this.oJ.get();
        if (oJVar != null && message != null) {
            oJVar.oJ(message);
        }
    }
}
