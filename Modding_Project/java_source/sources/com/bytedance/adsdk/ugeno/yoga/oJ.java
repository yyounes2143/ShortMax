package com.bytedance.adsdk.ugeno.yoga;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public enum oJ {
    AUTO(0),
    FLEX_START(1),
    CENTER(2),
    FLEX_END(3),
    STRETCH(4),
    BASELINE(5),
    SPACE_BETWEEN(6),
    SPACE_AROUND(7),
    SPACE_EVENLY(8);
    
    private final int kkU;

    oJ(int i10) {
        this.kkU = i10;
    }

    public int oJ() {
        return this.kkU;
    }

    public static oJ oJ(int i10) {
        switch (i10) {
            case 0:
                return AUTO;
            case 1:
                return FLEX_START;
            case 2:
                return CENTER;
            case 3:
                return FLEX_END;
            case 4:
                return STRETCH;
            case 5:
                return BASELINE;
            case 6:
                return SPACE_BETWEEN;
            case 7:
                return SPACE_AROUND;
            case 8:
                return SPACE_EVENLY;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i10)));
        }
    }

    public static oJ oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1881872635:
                if (str.equals("stretch")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1720785339:
                if (str.equals("baseline")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 2;
                    break;
                }
                break;
            case -932331738:
                if (str.equals("space_around")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3005871:
                if (str.equals("auto")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1384876188:
                if (str.equals("flex_start")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1682480591:
                if (str.equals("space_between")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return STRETCH;
            case 1:
                return BASELINE;
            case 2:
                return CENTER;
            case 3:
                return SPACE_AROUND;
            case 4:
                return AUTO;
            case 5:
                return FLEX_START;
            case 6:
                return SPACE_BETWEEN;
            case 7:
                return FLEX_END;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }
}
