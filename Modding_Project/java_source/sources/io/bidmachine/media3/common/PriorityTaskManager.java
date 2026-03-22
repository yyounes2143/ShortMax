package io.bidmachine.media3.common;

import cn.m0;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes8.dex */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    private final Object f55125a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final PriorityQueue<Integer> f55126b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    private int f55127c = Integer.MIN_VALUE;

    /* loaded from: classes8.dex */
    public static class PriorityTooLowException extends IOException {
    }

    public void a(int i10) {
        synchronized (this.f55125a) {
            this.f55126b.add(Integer.valueOf(i10));
            this.f55127c = Math.max(this.f55127c, i10);
        }
    }

    public void b(int i10) {
        int intValue;
        synchronized (this.f55125a) {
            this.f55126b.remove(Integer.valueOf(i10));
            if (this.f55126b.isEmpty()) {
                intValue = Integer.MIN_VALUE;
            } else {
                intValue = ((Integer) m0.i(this.f55126b.peek())).intValue();
            }
            this.f55127c = intValue;
            this.f55125a.notifyAll();
        }
    }
}
