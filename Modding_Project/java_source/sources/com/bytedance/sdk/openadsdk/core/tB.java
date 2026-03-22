package com.bytedance.sdk.openadsdk.core;
/* loaded from: classes3.dex */
public class tB {
    private static volatile tB oJ;

    private tB() {
    }

    public static tB oJ() {
        if (oJ == null) {
            synchronized (tB.class) {
                try {
                    if (oJ == null) {
                        oJ = new tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public String ZYk(String str, String str2) {
        return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("ttopenadsdk", str, str2);
    }

    public int ZYk(String str, int i10) {
        return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("ttopenadsdk", str, i10);
    }

    public Long ZYk(String str, long j10) {
        return Long.valueOf(com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("ttopenadsdk", str, j10));
    }

    public void oJ(String str, String str2) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("ttopenadsdk", str, str2);
    }

    public void oJ(String str, int i10) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("ttopenadsdk", str, Integer.valueOf(i10));
    }

    public void oJ(String str, long j10) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("ttopenadsdk", str, Long.valueOf(j10));
    }
}
