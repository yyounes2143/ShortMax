package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class IUZ extends Handler {
    protected WeakReference<oJ> oJ;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(Message message);
    }

    public IUZ(oJ oJVar) {
        if (oJVar != null) {
            this.oJ = new WeakReference<>(oJVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        oJ oJVar;
        WeakReference<oJ> weakReference = this.oJ;
        if (weakReference != null && (oJVar = weakReference.get()) != null && message != null) {
            oJVar.oJ(message);
        }
    }

    public IUZ(Looper looper, oJ oJVar) {
        super(looper);
        if (oJVar != null) {
            this.oJ = new WeakReference<>(oJVar);
        }
    }
}
