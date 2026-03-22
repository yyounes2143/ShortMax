package com.google.android.exoplayer2.util;

import b7.s0;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes4.dex */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    private final Object f19123a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final PriorityQueue<Integer> f19124b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    private int f19125c = Integer.MIN_VALUE;

    /* loaded from: classes4.dex */
    public static class PriorityTooLowException extends IOException {
    }

    public void a(int i10) {
        synchronized (this.f19123a) {
            this.f19124b.add(Integer.valueOf(i10));
            this.f19125c = Math.max(this.f19125c, i10);
        }
    }

    public void b(int i10) {
        int intValue;
        synchronized (this.f19123a) {
            this.f19124b.remove(Integer.valueOf(i10));
            if (this.f19124b.isEmpty()) {
                intValue = Integer.MIN_VALUE;
            } else {
                intValue = ((Integer) s0.j(this.f19124b.peek())).intValue();
            }
            this.f19125c = intValue;
            this.f19123a.notifyAll();
        }
    }
}
