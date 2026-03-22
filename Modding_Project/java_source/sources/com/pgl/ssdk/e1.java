package com.pgl.ssdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class e1 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    protected WeakReference<a> f36752a;

    /* loaded from: classes6.dex */
    public interface a {
        void a(Message message);
    }

    public e1(Looper looper, a aVar) {
        super(looper);
        if (aVar != null) {
            this.f36752a = new WeakReference<>(aVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar;
        WeakReference<a> weakReference = this.f36752a;
        if (weakReference != null && (aVar = weakReference.get()) != null && message != null) {
            aVar.a(message);
        }
    }
}
