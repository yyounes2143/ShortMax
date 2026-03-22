package com.ss.ttvideoengine.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class WeakHandler extends Handler {
    private final WeakReference<IHandler> mRef;

    /* loaded from: classes6.dex */
    public interface IHandler {
        void handleMessage(Message message);
    }

    public WeakHandler(IHandler iHandler) {
        this.mRef = new WeakReference<>(iHandler);
    }

    @Override // android.os.Handler
    public void handleMessage(@NonNull Message message) {
        IHandler iHandler = this.mRef.get();
        if (iHandler != null) {
            iHandler.handleMessage(message);
        }
    }

    public WeakHandler(Looper looper, IHandler iHandler) {
        super(looper);
        this.mRef = new WeakReference<>(iHandler);
    }
}
