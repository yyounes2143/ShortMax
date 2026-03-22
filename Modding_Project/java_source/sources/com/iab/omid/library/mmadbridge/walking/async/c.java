package com.iab.omid.library.mmadbridge.walking.async;

import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f23097a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f23098b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f23099c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f23100d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f23097a = linkedBlockingQueue;
        this.f23098b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f23099c.poll();
        this.f23100d = poll;
        if (poll != null) {
            poll.a(this.f23098b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f23099c.add(bVar);
        if (this.f23100d == null) {
            a();
        }
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b.a
    public void a(b bVar) {
        this.f23100d = null;
        a();
    }
}
