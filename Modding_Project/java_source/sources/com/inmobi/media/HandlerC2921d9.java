package com.inmobi.media;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.d9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class HandlerC2921d9 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f24601a;

    public HandlerC2921d9(C2938e9 controller) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.f24601a = new WeakReference(controller);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        C3050l9 c3050l9;
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what == 2) {
            C2938e9 c2938e9 = (C2938e9) this.f24601a.get();
            if (c2938e9 != null) {
                C3050l9 c3050l92 = c2938e9.f24651d;
                if (c3050l92 != null) {
                    int currentPosition = c3050l92.getCurrentPosition();
                    int duration = c3050l92.getDuration();
                    if (duration != 0) {
                        c2938e9.f24655h.setProgress((currentPosition * 100) / duration);
                    }
                }
                if (c2938e9.f24652e && (c3050l9 = c2938e9.f24651d) != null && c3050l9.isPlaying()) {
                    Message obtainMessage = obtainMessage(2);
                    Intrinsics.checkNotNullExpressionValue(obtainMessage, "obtainMessage(...)");
                    sendMessageDelayed(obtainMessage, 200L);
                    return;
                }
                return;
            }
            return;
        }
        super.handleMessage(msg);
    }
}
