package com.bytedance.adsdk.ZYk.tB;

import android.util.Pair;
/* loaded from: classes3.dex */
public class cFZ<T> {
    T ZYk;
    T oJ;

    private static boolean ZYk(Object obj, Object obj2) {
        if (obj != obj2) {
            if (obj == null || !obj.equals(obj2)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        if (!ZYk(pair.first, this.oJ) || !ZYk(pair.second, this.ZYk)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        T t10 = this.oJ;
        int i10 = 0;
        if (t10 == null) {
            hashCode = 0;
        } else {
            hashCode = t10.hashCode();
        }
        T t11 = this.ZYk;
        if (t11 != null) {
            i10 = t11.hashCode();
        }
        return hashCode ^ i10;
    }

    public void oJ(T t10, T t11) {
        this.oJ = t10;
        this.ZYk = t11;
    }

    public String toString() {
        return "Pair{" + this.oJ + " " + this.ZYk + "}";
    }
}
