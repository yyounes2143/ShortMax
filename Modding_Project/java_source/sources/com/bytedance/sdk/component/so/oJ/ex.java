package com.bytedance.sdk.component.so.oJ;

import com.bytedance.sdk.component.so.oJ.tB;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes3.dex */
public class ex<T extends tB> {
    private BlockingQueue<T> ZYk = new LinkedBlockingQueue();
    private int oJ;

    private ex(int i10) {
        this.oJ = i10;
    }

    public static ex oJ(int i10) {
        return new ex(i10);
    }

    public T oJ() {
        return this.ZYk.poll();
    }

    public boolean oJ(T t10) {
        if (t10 == null) {
            return false;
        }
        t10.oJ();
        if (this.ZYk.size() >= this.oJ) {
            return false;
        }
        return this.ZYk.offer(t10);
    }
}
