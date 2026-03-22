package com.ss.ttm.player;
/* loaded from: classes6.dex */
public class TTPlayerPluginLoader {
    public static final int PLUGIN_INTERTRUST_DRM = 100;
    private static IPluginLoader mPluginLoader;

    public static ClassLoader loadPlugin(int i10) {
        IPluginLoader iPluginLoader = mPluginLoader;
        if (iPluginLoader != null) {
            return iPluginLoader.loadPlugin(i10);
        }
        return null;
    }

    public static void setPluginLoader(IPluginLoader iPluginLoader) {
        mPluginLoader = iPluginLoader;
    }
}
