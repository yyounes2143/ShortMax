package com.pgl.ssdk;

import com.pgl.ssdk.c1;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes6.dex */
public class d1<T extends c1> {

    /* renamed from: a  reason: collision with root package name */
    private int f36740a;

    /* renamed from: b  reason: collision with root package name */
    private BlockingQueue<T> f36741b = new LinkedBlockingQueue();

    private d1(int i10) {
        this.f36740a = i10;
    }

    public static d1 a(int i10) {
        return new d1(i10);
    }

    public T a() {
        return this.f36741b.poll();
    }
}
