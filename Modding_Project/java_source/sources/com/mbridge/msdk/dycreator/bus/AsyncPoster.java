package com.mbridge.msdk.dycreator.bus;
/* loaded from: classes5.dex */
class AsyncPoster implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final PendingPostQueue f26463a = new PendingPostQueue();

    /* renamed from: b  reason: collision with root package name */
    private final EventBus f26464b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsyncPoster(EventBus eventBus) {
        this.f26464b = eventBus;
    }

    public void enqueue(Subscription subscription, Object obj) {
        this.f26463a.a(PendingPost.a(subscription, obj));
        EventBus.f26468n.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        PendingPost a10 = this.f26463a.a();
        if (a10 != null) {
            this.f26464b.a(a10);
            return;
        }
        throw new IllegalStateException("No pending post available");
    }
}
