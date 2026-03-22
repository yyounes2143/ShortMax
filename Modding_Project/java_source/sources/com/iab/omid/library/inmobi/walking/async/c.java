package com.iab.omid.library.inmobi.walking.async;

import com.iab.omid.library.inmobi.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f22962a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f22963b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f22964c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f22965d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f22962a = linkedBlockingQueue;
        this.f22963b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f22964c.poll();
        this.f22965d = poll;
        if (poll != null) {
            poll.a(this.f22963b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f22964c.add(bVar);
        if (this.f22965d == null) {
            a();
        }
    }

    @Override // com.iab.omid.library.inmobi.walking.async.b.a
    public void a(b bVar) {
        this.f22965d = null;
        a();
    }
}
