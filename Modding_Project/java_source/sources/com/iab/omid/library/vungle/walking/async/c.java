package com.iab.omid.library.vungle.walking.async;

import com.iab.omid.library.vungle.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f23360a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f23361b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f23362c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f23363d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f23360a = linkedBlockingQueue;
        this.f23361b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f23362c.poll();
        this.f23363d = poll;
        if (poll != null) {
            poll.a(this.f23361b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f23362c.add(bVar);
        if (this.f23363d == null) {
            a();
        }
    }

    @Override // com.iab.omid.library.vungle.walking.async.b.a
    public void a(b bVar) {
        this.f23363d = null;
        a();
    }
}
