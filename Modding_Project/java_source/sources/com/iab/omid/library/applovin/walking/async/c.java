package com.iab.omid.library.applovin.walking.async;

import com.iab.omid.library.applovin.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f22561a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f22562b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f22563c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f22564d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f22561a = linkedBlockingQueue;
        this.f22562b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f22563c.poll();
        this.f22564d = poll;
        if (poll != null) {
            poll.a(this.f22562b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f22563c.add(bVar);
        if (this.f22564d == null) {
            a();
        }
    }

    @Override // com.iab.omid.library.applovin.walking.async.b.a
    public void a(b bVar) {
        this.f22564d = null;
        a();
    }
}
