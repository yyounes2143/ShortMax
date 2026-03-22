package com.ss.ttm.player;
@Keep
/* loaded from: classes6.dex */
public class AVDrmCreater {
    public static final int DrmTypeIntertrust = 1;
    public static final int DrmTypeNone = 0;

    @CalledByNative
    public static synchronized long createDrm(int i10) {
        synchronized (AVDrmCreater.class) {
            if (i10 == 1) {
                return createDrm(100, "com.ss.ttm.drm.intertrust.IntertrustDrm");
            }
            return 0L;
        }
    }

    private static long createDrm(int i10, String str) {
        try {
            ClassLoader loadPlugin = TTPlayerPluginLoader.loadPlugin(i10);
            return Long.parseLong(String.valueOf((loadPlugin != null ? Class.forName(str, true, loadPlugin) : Class.forName(str)).getMethod("createDrm", new Class[0]).invoke(null, new Object[0])));
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }
}
