package com.mbridge.msdk.dycreator.bus;
/* loaded from: classes5.dex */
final class PendingPostQueue {

    /* renamed from: a  reason: collision with root package name */
    private PendingPost f26496a;

    /* renamed from: b  reason: collision with root package name */
    private PendingPost f26497b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(PendingPost pendingPost) {
        try {
            if (pendingPost != null) {
                PendingPost pendingPost2 = this.f26497b;
                if (pendingPost2 != null) {
                    pendingPost2.f26495c = pendingPost;
                    this.f26497b = pendingPost;
                } else if (this.f26496a == null) {
                    this.f26497b = pendingPost;
                    this.f26496a = pendingPost;
                } else {
                    throw new IllegalStateException("Head present, but no tail");
                }
                notifyAll();
            } else {
                throw new NullPointerException("null cannot be enqueued");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized PendingPost a() {
        PendingPost pendingPost;
        pendingPost = this.f26496a;
        if (pendingPost != null) {
            PendingPost pendingPost2 = pendingPost.f26495c;
            this.f26496a = pendingPost2;
            if (pendingPost2 == null) {
                this.f26497b = null;
            }
        }
        return pendingPost;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized PendingPost a(int i10) throws InterruptedException {
        try {
            if (this.f26496a == null) {
                wait(i10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return a();
    }
}
