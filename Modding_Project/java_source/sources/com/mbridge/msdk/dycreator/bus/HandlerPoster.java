package com.mbridge.msdk.dycreator.bus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
/* loaded from: classes5.dex */
final class HandlerPoster extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final PendingPostQueue f26488a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26489b;

    /* renamed from: c  reason: collision with root package name */
    private final EventBus f26490c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f26491d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerPoster(EventBus eventBus, Looper looper, int i10) {
        super(looper);
        this.f26490c = eventBus;
        this.f26489b = i10;
        this.f26488a = new PendingPostQueue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Subscription subscription, Object obj) {
        PendingPost a10 = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f26488a.a(a10);
                if (!this.f26491d) {
                    this.f26491d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new EventBusException("Could not send handler message");
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                PendingPost a10 = this.f26488a.a();
                if (a10 == null) {
                    synchronized (this) {
                        a10 = this.f26488a.a();
                        if (a10 == null) {
                            this.f26491d = false;
                            return;
                        }
                    }
                }
                this.f26490c.a(a10);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f26489b);
            if (sendMessage(obtainMessage())) {
                this.f26491d = true;
                return;
            }
            throw new EventBusException("Could not send handler message");
        } catch (Throwable th2) {
            this.f26491d = false;
            throw th2;
        }
    }
}
