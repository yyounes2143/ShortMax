package com.bytedance.sdk.component.utils;
/* loaded from: classes3.dex */
public class awB {
    private static int ZYk = 4;
    private static boolean oJ = false;
    private static String tB = "";

    public static void ZYk() {
        oJ = true;
        oJ(3);
    }

    public static boolean ex() {
        return oJ;
    }

    public static void oJ(String str) {
        tB = str;
    }

    public static void tB() {
        oJ = false;
        oJ(7);
    }

    public static void oJ(int i10) {
        ZYk = i10;
    }

    public static boolean oJ() {
        return ZYk <= 3;
    }
}
