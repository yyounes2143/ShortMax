package com.bytedance.sdk.component.adexpress.dynamic.ex;

import java.util.Arrays;
/* loaded from: classes3.dex */
public class jFA {
    public float ZYk;
    public float oJ;

    public jFA(float f10, float f11) {
        this.oJ = f10;
        this.ZYk = f11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            jFA jfa = (jFA) obj;
            if (Float.compare(jfa.oJ, this.oJ) == 0 && Float.compare(jfa.ZYk, this.ZYk) == 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.oJ), Float.valueOf(this.ZYk)});
    }
}
