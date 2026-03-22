package com.bytedance.adsdk.ugeno.yoga;
/* loaded from: classes3.dex */
public enum so {
    UNDEFINED(0),
    EXACTLY(1),
    AT_MOST(2);
    
    private final int ex;

    so(int i10) {
        this.ex = i10;
    }

    public static so oJ(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return AT_MOST;
                }
                throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
            }
            return EXACTLY;
        }
        return UNDEFINED;
    }
}
