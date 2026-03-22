package com.bytedance.sdk.component.Pfn.ex.tB.oJ;

import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class tB<K, V> {
    private int ZYk;
    private final LinkedHashMap<K, SoftReference<V>> oJ = new LinkedHashMap<>(0, 0.75f, true);

    public tB(int i10) {
        this.ZYk = i10;
    }

    public synchronized V oJ(K k10) {
        V v10 = null;
        if (k10 == null) {
            return null;
        }
        if (this.ZYk <= 0) {
            return null;
        }
        SoftReference<V> softReference = this.oJ.get(k10);
        if (softReference != null) {
            v10 = softReference.get();
            if (v10 != null) {
                return v10;
            }
            this.oJ.remove(k10);
        }
        return v10;
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxCount=%d,size=%d]", Integer.valueOf(this.ZYk), Integer.valueOf(this.oJ.size()));
    }

    public synchronized void oJ(K k10, V v10) {
        if (this.ZYk <= 0) {
            return;
        }
        if (k10 == null || v10 == null) {
            return;
        }
        this.oJ.put(k10, new SoftReference<>(v10));
        int size = this.oJ.size();
        int i10 = this.ZYk;
        if (size > i10) {
            oJ((int) (i10 * 0.7d));
        }
    }

    public synchronized void oJ(int i10) {
        int size = this.oJ.size() - i10;
        if (size > 0) {
            Iterator<Map.Entry<K, SoftReference<V>>> it = this.oJ.entrySet().iterator();
            for (int i11 = 0; i11 < size; i11++) {
                it.next();
                it.remove();
            }
        }
        if (i10 == 0) {
            return;
        }
        Iterator<Map.Entry<K, SoftReference<V>>> it2 = this.oJ.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getValue().get() == null) {
                it2.remove();
            }
        }
    }
}
