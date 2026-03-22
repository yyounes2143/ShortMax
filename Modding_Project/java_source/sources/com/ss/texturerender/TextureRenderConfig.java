package com.ss.texturerender;
/* loaded from: classes6.dex */
public class TextureRenderConfig {
    private static final String TAG = "TR_TextureRenderConfig";
    private static ITextureRenderPluginLoader gPluginLoader;

    public static ClassLoader getClassLoader(int i10) {
        ITextureRenderPluginLoader iTextureRenderPluginLoader = gPluginLoader;
        if (iTextureRenderPluginLoader != null) {
            return iTextureRenderPluginLoader.loadPlugin(i10);
        }
        return null;
    }

    public static String getValue(int i10) {
        if (i10 != 24) {
            return "";
        }
        return BuildConfig.VERSION_NAME;
    }

    public static void setClassLoaderCallback(ITextureRenderPluginLoader iTextureRenderPluginLoader) {
        TextureRenderLog.i(-1, TAG, "setClassLoaderCallback");
        gPluginLoader = iTextureRenderPluginLoader;
    }
}
