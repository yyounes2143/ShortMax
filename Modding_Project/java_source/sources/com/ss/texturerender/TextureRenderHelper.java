package com.ss.texturerender;

import android.text.TextUtils;
/* loaded from: classes6.dex */
public class TextureRenderHelper {
    public static Class<?> getClzUsingPluginLoader(int i10, String str) throws Exception {
        if (i10 >= 0 && !TextUtils.isEmpty(str)) {
            ClassLoader classLoader = TextureRenderConfig.getClassLoader(i10);
            if (classLoader == null) {
                return Class.forName(str);
            }
            return Class.forName(str, true, classLoader);
        }
        throw new Exception("pluginName or/and className is empty");
    }
}
