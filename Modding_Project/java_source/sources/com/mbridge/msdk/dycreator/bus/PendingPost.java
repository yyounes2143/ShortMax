package com.mbridge.msdk.dycreator.bus;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
final class PendingPost {

    /* renamed from: d  reason: collision with root package name */
    private static final List<PendingPost> f26492d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    Object f26493a;

    /* renamed from: b  reason: collision with root package name */
    Subscription f26494b;

    /* renamed from: c  reason: collision with root package name */
    PendingPost f26495c;

    private PendingPost(Object obj, Subscription subscription) {
        this.f26493a = obj;
        this.f26494b = subscription;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PendingPost a(Subscription subscription, Object obj) {
        List<PendingPost> list = f26492d;
        synchronized (list) {
            try {
                int size = list.size();
                if (size > 0) {
                    PendingPost remove = list.remove(size - 1);
                    remove.f26493a = obj;
                    remove.f26494b = subscription;
                    remove.f26495c = null;
                    return remove;
                }
                return new PendingPost(obj, subscription);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(PendingPost pendingPost) {
        pendingPost.f26493a = null;
        pendingPost.f26494b = null;
        pendingPost.f26495c = null;
        List<PendingPost> list = f26492d;
        synchronized (list) {
            try {
                if (list.size() < 10000) {
                    list.add(pendingPost);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
