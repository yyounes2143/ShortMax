package com.bytedance.adsdk.ugeno.yoga;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public enum ba {
    FLEX_START(0),
    CENTER(1),
    FLEX_END(2),
    SPACE_BETWEEN(3),
    SPACE_AROUND(4),
    SPACE_EVENLY(5);
    
    private final int cFZ;

    ba(int i10) {
        this.cFZ = i10;
    }

    public int oJ() {
        return this.cFZ;
    }

    public static ba oJ(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                return SPACE_EVENLY;
                            }
                            throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
                        }
                        return SPACE_AROUND;
                    }
                    return SPACE_BETWEEN;
                }
                return FLEX_END;
            }
            return CENTER;
        }
        return FLEX_START;
    }

    public static ba oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case -932331738:
                if (str.equals("space_around")) {
                    c10 = 1;
                    break;
                }
                break;
            case -814425728:
                if (str.equals("space_evenly")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1384876188:
                if (str.equals("flex_start")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1682480591:
                if (str.equals("space_between")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return CENTER;
            case 1:
                return SPACE_AROUND;
            case 2:
                return SPACE_EVENLY;
            case 3:
                return FLEX_START;
            case 4:
                return SPACE_BETWEEN;
            case 5:
                return FLEX_END;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
