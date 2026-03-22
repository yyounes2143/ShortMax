package com.bytedance.adsdk.oJ.ZYk.Pfn;
/* loaded from: classes3.dex */
public class oJ {
    public static boolean ZYk(char c10) {
        if (c10 < 'A' || c10 > 'Z') {
            if (c10 >= 'a' && c10 <= 'z') {
                return true;
            }
            return false;
        }
        return true;
    }

    public static boolean ex(char c10) {
        if ('+' != c10 && '-' != c10 && '*' != c10 && '/' != c10 && '%' != c10 && '=' != c10 && '>' != c10 && '<' != c10 && '!' != c10 && '&' != c10 && '|' != c10 && '?' != c10 && ':' != c10) {
            return false;
        }
        return true;
    }

    public static boolean oJ(char c10) {
        if (c10 == ' ') {
            return true;
        }
        return false;
    }

    public static boolean tB(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return true;
        }
        return false;
    }
}
