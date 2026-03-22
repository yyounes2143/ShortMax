package com.pgl.ssdk;

import android.os.HandlerThread;
import com.pgl.ssdk.e1;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class b1 extends e1 implements c1 {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f36701b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(HandlerThread handlerThread, e1.a aVar) {
        super(handlerThread.getLooper(), aVar);
        this.f36701b = handlerThread;
    }

    public void a(e1.a aVar) {
        this.f36752a = new WeakReference<>(aVar);
    }

    public void a(String str) {
        HandlerThread handlerThread = this.f36701b;
        if (handlerThread != null) {
            handlerThread.setName(str);
        }
    }
}
