package com.iab.omid.library.appodeal.walking.async;

import com.iab.omid.library.appodeal.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f22697a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f22698b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f22699c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f22700d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f22697a = linkedBlockingQueue;
        this.f22698b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f22699c.poll();
        this.f22700d = poll;
        if (poll != null) {
            poll.a(this.f22698b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f22699c.add(bVar);
        if (this.f22700d == null) {
            a();
        }
    }

    @Override // com.iab.omid.library.appodeal.walking.async.b.a
    public void a(b bVar) {
        this.f22700d = null;
        a();
    }
}
