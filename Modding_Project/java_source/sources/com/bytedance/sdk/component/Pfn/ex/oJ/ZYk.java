package com.bytedance.sdk.component.Pfn.ex.oJ;

import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ZYk {
    private static final TimeUnit oJ = TimeUnit.SECONDS;

    public static ExecutorService oJ() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 2, 30L, oJ, new LinkedBlockingQueue(), new oJ(DataLoaderHelper.PRELOAD_DEFAULT_SCENE));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
