package com.bytedance.adsdk.ugeno.yoga;
/* loaded from: classes3.dex */
public enum WcQ {
    NO_WRAP(0),
    WRAP(1),
    WRAP_REVERSE(2);
    
    private final int ex;

    WcQ(int i10) {
        this.ex = i10;
    }

    public int oJ() {
        return this.ex;
    }

    public static WcQ oJ(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return WRAP_REVERSE;
                }
                throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
            }
            return WRAP;
        }
        return NO_WRAP;
    }

    public static WcQ oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1039592053:
                if (str.equals("nowrap")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3657802:
                if (str.equals("wrap")) {
                    c10 = 1;
                    break;
                }
                break;
            case 491642861:
                if (str.equals("wrap_reverse")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return NO_WRAP;
            case 1:
                return WRAP;
            case 2:
                return WRAP_REVERSE;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
