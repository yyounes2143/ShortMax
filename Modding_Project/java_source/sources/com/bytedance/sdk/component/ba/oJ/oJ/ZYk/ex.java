package com.bytedance.sdk.component.ba.oJ.oJ.ZYk;

import com.bytedance.sdk.component.ba.oJ.ex.oJ;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes3.dex */
public abstract class ex<T extends com.bytedance.sdk.component.ba.oJ.ex.oJ> {
    private Queue<T> ZYk = new ConcurrentLinkedQueue();
    private String ex;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJ;
    private Queue<String> tB;

    public ex(com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar, Queue<String> queue, String str) {
        this.oJ = oJVar;
        this.tB = queue;
        this.ex = str;
    }

    public synchronized boolean ZYk(int i10, int i11) {
        int size = this.ZYk.size();
        int oJ = this.oJ.oJ();
        if (i10 != 2 && i10 != 1) {
            if (size < oJ) {
                return false;
            }
            return true;
        } else if (com.bytedance.sdk.component.ba.oJ.tB.oJ.tB()) {
            if (size <= 0) {
                return false;
            }
            return true;
        } else if (size < oJ) {
            return false;
        } else {
            return true;
        }
    }

    public void oJ(T t10) {
        Queue<T> queue = this.ZYk;
        if (queue == null || t10 == null) {
            return;
        }
        queue.offer(t10);
    }

    public synchronized List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(int i10, int i11) {
        if (ZYk(i10, i11)) {
            ArrayList arrayList = new ArrayList(this.oJ.oJ());
            do {
                T poll = this.ZYk.poll();
                if (poll == null) {
                    break;
                }
                arrayList.add(poll);
            } while (arrayList.size() != this.oJ.ZYk());
            return arrayList;
        }
        return null;
    }

    public synchronized void oJ(int i10, List<T> list) {
        if (i10 != -1 && i10 != 200 && i10 != 509) {
            this.ZYk.addAll(list);
        } else {
            this.ZYk.size();
        }
    }
}
