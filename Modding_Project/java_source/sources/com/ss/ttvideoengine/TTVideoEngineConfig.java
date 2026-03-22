package com.ss.ttvideoengine;

import com.ss.ttm.player.IPluginLoader;
import com.ss.ttm.player.TTPlayerPluginLoader;
import com.ss.ttvideoengine.net.TTVNetClient;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class TTVideoEngineConfig {
    public static final int PLUGIN_TYPE_INTERTRUST_DRM = 100;
    public static final int PLUGIN_TYPE_PLAYER_2_0_COM_SS_TTM = 200;
    public static final int PLUGIN_TYPE_PLAYER_2_0_COM_SS_TTMPLUGIN = 201;
    public static final int PLUGIN_TYPE_PLAYER_3_0_CN_ORG_MEDIAKIT = 300;
    private static HashMap<Integer, ClassLoader> gClassLoaderMap = null;
    public static TTVNetClient gNetClient = null;
    private static IEnginePluginLoader gPluginLoader = null;
    public static boolean openPerformanceUtils = false;
    private static PlayerCreateErrorListener sPlayerCreateErrorListener = null;
    public static int setEGLBitDepth = 8;
    public static long setSurfaceTimeoutForCreated = Long.MIN_VALUE;
    public static long setSurfaceTimeoutForDestroy = Long.MIN_VALUE;

    public static ClassLoader getClassLoader(int i10) {
        ClassLoader classLoader;
        HashMap<Integer, ClassLoader> hashMap = gClassLoaderMap;
        if (hashMap != null && (classLoader = hashMap.get(Integer.valueOf(i10))) != null) {
            return classLoader;
        }
        IEnginePluginLoader iEnginePluginLoader = gPluginLoader;
        if (iEnginePluginLoader != null) {
            return iEnginePluginLoader.loadPlugin(i10);
        }
        return null;
    }

    public static PlayerCreateErrorListener getPlayerCreateErrorListener() {
        return sPlayerCreateErrorListener;
    }

    public static void setClassLoader(int i10, ClassLoader classLoader) {
        if (gClassLoaderMap == null) {
            gClassLoaderMap = new HashMap<>();
            TTPlayerPluginLoader.setPluginLoader(new IPluginLoader() { // from class: com.ss.ttvideoengine.TTVideoEngineConfig.2
                @Override // com.ss.ttm.player.IPluginLoader
                public ClassLoader loadPlugin(int i11) {
                    return TTVideoEngineConfig.getClassLoader(i11);
                }
            });
        }
        gClassLoaderMap.put(Integer.valueOf(i10), classLoader);
    }

    public static void setClassLoderCallback(IEnginePluginLoader iEnginePluginLoader) {
        if (iEnginePluginLoader == null) {
            return;
        }
        TTPlayerPluginLoader.setPluginLoader(new IPluginLoader() { // from class: com.ss.ttvideoengine.TTVideoEngineConfig.1
            @Override // com.ss.ttm.player.IPluginLoader
            public ClassLoader loadPlugin(int i10) {
                return TTVideoEngineConfig.getClassLoader(i10);
            }
        });
        gPluginLoader = iEnginePluginLoader;
    }

    public static void setPlayerCreateErrorListener(PlayerCreateErrorListener playerCreateErrorListener) {
        sPlayerCreateErrorListener = playerCreateErrorListener;
    }
}
