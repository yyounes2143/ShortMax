package com.mbridge.msdk.dycreator.bus;
/* loaded from: classes5.dex */
final class Subscription {

    /* renamed from: a  reason: collision with root package name */
    final Object f26504a;

    /* renamed from: b  reason: collision with root package name */
    final SubscriberMethod f26505b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Subscription(Object obj, SubscriberMethod subscriberMethod) {
        this.f26504a = obj;
        this.f26505b = subscriberMethod;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Subscription)) {
            return false;
        }
        Subscription subscription = (Subscription) obj;
        if (this.f26504a != subscription.f26504a || !this.f26505b.equals(subscription.f26505b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f26504a.hashCode() + this.f26505b.f26501d.hashCode();
    }
}
