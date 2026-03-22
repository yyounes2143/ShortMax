package com.bytedance.adsdk.ugeno.yoga;
/* loaded from: classes3.dex */
public enum PiB {
    STATIC(0),
    RELATIVE(1),
    ABSOLUTE(2);
    
    private final int ex;

    PiB(int i10) {
        this.ex = i10;
    }

    public int oJ() {
        return this.ex;
    }

    public static PiB oJ(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return ABSOLUTE;
                }
                throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
            }
            return RELATIVE;
        }
        return STATIC;
    }

    public static PiB oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -892481938:
                if (str.equals("static")) {
                    c10 = 0;
                    break;
                }
                break;
            case -554435892:
                if (str.equals("relative")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1728122231:
                if (str.equals("absolute")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return STATIC;
            case 1:
                return RELATIVE;
            case 2:
                return ABSOLUTE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
