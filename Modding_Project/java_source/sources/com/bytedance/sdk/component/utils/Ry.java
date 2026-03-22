package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
/* loaded from: classes3.dex */
public class Ry {
    public static boolean Pfn(Context context) {
        if (tB(context) == 5) {
            return true;
        }
        return false;
    }

    public static int ZYk(Context context) {
        int tB = tB(context);
        if (tB != 1) {
            if (tB == 4) {
                return 1;
            }
            if (tB == 5) {
                return 4;
            }
            if (tB == 6) {
                return 6;
            }
            return tB;
        }
        return 0;
    }

    public static boolean ba(Context context) {
        if (tB(context) == 6) {
            return true;
        }
        return false;
    }

    public static String cFZ(Context context) {
        int tB = tB(context);
        if (tB != 2) {
            if (tB != 3) {
                if (tB != 4) {
                    if (tB != 5) {
                        if (tB != 6) {
                            return "mobile";
                        }
                        return "5g";
                    }
                    return "4g";
                }
                return "wifi";
            }
            return "3g";
        }
        return "2g";
    }

    public static boolean ex(Context context) {
        if (tB(context) == 4) {
            return true;
        }
        return false;
    }

    public static boolean oJ(Context context) {
        return tB(context) != 0;
    }

    public static boolean so(Context context) {
        if (context == null) {
            return false;
        }
        int tB = tB(context);
        if (tB != 2 && tB != 3 && tB != 4 && tB != 5 && tB != 6) {
            return false;
        }
        return true;
    }

    public static int tB(Context context) {
        return HL.oJ(context, (long) ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public static boolean oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }
}
