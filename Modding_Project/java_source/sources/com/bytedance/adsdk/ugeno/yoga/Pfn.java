package com.bytedance.adsdk.ugeno.yoga;
/* loaded from: classes3.dex */
public enum Pfn {
    COLUMN(0),
    COLUMN_REVERSE(1),
    ROW(2),
    ROW_REVERSE(3);
    
    private final int Pfn;

    Pfn(int i10) {
        this.Pfn = i10;
    }

    public int oJ() {
        return this.Pfn;
    }

    public static Pfn oJ(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return ROW_REVERSE;
                    }
                    throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
                }
                return ROW;
            }
            return COLUMN_REVERSE;
        }
        return COLUMN;
    }

    public static Pfn oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1781065991:
                if (str.equals("column_reverse")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1354837162:
                if (str.equals("column")) {
                    c10 = 1;
                    break;
                }
                break;
            case -207799939:
                if (str.equals("row_reverse")) {
                    c10 = 2;
                    break;
                }
                break;
            case 113114:
                if (str.equals("row")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return COLUMN_REVERSE;
            case 1:
                return COLUMN;
            case 2:
                return ROW_REVERSE;
            case 3:
                return ROW;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
