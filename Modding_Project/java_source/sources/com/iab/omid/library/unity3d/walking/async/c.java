package com.iab.omid.library.unity3d.walking.async;

import com.iab.omid.library.unity3d.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f23225a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f23226b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f23227c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f23228d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f23225a = linkedBlockingQueue;
        this.f23226b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f23227c.poll();
        this.f23228d = poll;
        if (poll != null) {
            poll.a(this.f23226b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f23227c.add(bVar);
        if (this.f23228d == null) {
            a();
        }
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b.a
    public void a(b bVar) {
        this.f23228d = null;
        a();
    }
}
