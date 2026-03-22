package com.mbridge.msdk.dycreator.bus;

import android.util.Log;
/* loaded from: classes5.dex */
final class BackgroundPoster implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final PendingPostQueue f26465a = new PendingPostQueue();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f26466b;

    /* renamed from: c  reason: collision with root package name */
    private final EventBus f26467c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BackgroundPoster(EventBus eventBus) {
        this.f26467c = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        PendingPost a10 = PendingPost.a(subscription, obj);
        synchronized (this) {
            try {
                this.f26465a.a(a10);
                if (!this.f26466b) {
                    this.f26466b = true;
                    EventBus.f26468n.execute(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    PendingPost a10 = this.f26465a.a(1000);
                    if (a10 == null) {
                        synchronized (this) {
                            a10 = this.f26465a.a();
                            if (a10 == null) {
                                this.f26466b = false;
                                this.f26466b = false;
                                return;
                            }
                        }
                    }
                    this.f26467c.a(a10);
                } catch (InterruptedException e10) {
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e10);
                    this.f26466b = false;
                    return;
                }
            } catch (Throwable th2) {
                this.f26466b = false;
                throw th2;
            }
        }
    }
}
