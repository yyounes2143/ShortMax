package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.oJ;
import com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.openadsdk.core.si;
import java.io.File;
/* loaded from: classes3.dex */
public class CacheDirFactory {
    public static volatile ZYk MEDIA_CACHE_DIR = null;
    public static String ROOT_DIR = null;
    public static final int SPLASH_USE_INTERNAL_STORAGE = 1;
    private static String oJ;

    public static int getCacheType() {
        return 1;
    }

    public static String getDiskCacheDirPath(String str) {
        return getRootDir() + File.separator + str;
    }

    public static ZYk getICacheDir(int i10) {
        return oJ();
    }

    public static String getImageCacheDir(String str) {
        if (oJ == null) {
            oJ = getDiskCacheDirPath(str);
        }
        return oJ;
    }

    public static String getRootDir() {
        if (!TextUtils.isEmpty(ROOT_DIR)) {
            return ROOT_DIR;
        }
        File oJ2 = cFZ.oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB(), "tt_ad");
        if (oJ2.isFile()) {
            oJ2.delete();
        }
        if (!oJ2.exists()) {
            oJ2.mkdirs();
        }
        String absolutePath = oJ2.getAbsolutePath();
        ROOT_DIR = absolutePath;
        return absolutePath;
    }

    private static ZYk oJ() {
        if (MEDIA_CACHE_DIR == null) {
            synchronized (CacheDirFactory.class) {
                try {
                    if (MEDIA_CACHE_DIR == null) {
                        oJ oJVar = new oJ();
                        MEDIA_CACHE_DIR = oJVar;
                        oJVar.oJ(getRootDir());
                        MEDIA_CACHE_DIR.ex();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return MEDIA_CACHE_DIR;
    }
}
