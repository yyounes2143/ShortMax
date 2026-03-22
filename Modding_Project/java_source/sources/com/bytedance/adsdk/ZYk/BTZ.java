package com.bytedance.adsdk.ZYk;

import java.util.Arrays;
/* loaded from: classes3.dex */
public final class BTZ<V> {
    private final Throwable ZYk;
    private final V oJ;

    public BTZ(V v10) {
        this.oJ = v10;
        this.ZYk = null;
    }

    public Throwable ZYk() {
        return this.ZYk;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BTZ)) {
            return false;
        }
        BTZ btz = (BTZ) obj;
        if (oJ() != null && oJ().equals(btz.oJ())) {
            return true;
        }
        if (ZYk() == null || btz.ZYk() == null) {
            return false;
        }
        return ZYk().toString().equals(ZYk().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{oJ(), ZYk()});
    }

    public V oJ() {
        return this.oJ;
    }

    public BTZ(Throwable th2) {
        this.ZYk = th2;
        this.oJ = null;
    }
}
