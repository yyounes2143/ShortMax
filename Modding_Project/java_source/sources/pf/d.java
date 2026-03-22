package pf;

import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.IPreLoaderItemCallBackListener;
import com.ss.ttvideoengine.PreLoaderItemCallBackInfo;
import com.ss.ttvideoengine.PreloaderURLItem;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.startshorts.androidplayer.log.Logger;
import fk.p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PreloadUtil.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f64861a = new d();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f64862b = kotlin.c.b(new Function0() { // from class: pf.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashMap i10;
            i10 = d.i();
            return i10;
        }
    });

    private d() {
    }

    private final PreloaderURLItem e(final DirectUrlSource directUrlSource, long j10) {
        final p d10 = new p().d();
        PreloaderURLItem preloaderURLItem = new PreloaderURLItem(directUrlSource, j10);
        preloaderURLItem.setCallBackListener(new IPreLoaderItemCallBackListener() { // from class: pf.c
            @Override // com.ss.ttvideoengine.IPreLoaderItemCallBackListener
            public final void preloadItemInfo(PreLoaderItemCallBackInfo preLoaderItemCallBackInfo) {
                d.f(p.this, directUrlSource, preLoaderItemCallBackInfo);
            }
        });
        return preloaderURLItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(p pVar, DirectUrlSource directUrlSource, PreLoaderItemCallBackInfo preLoaderItemCallBackInfo) {
        if (preLoaderItemCallBackInfo == null) {
            return;
        }
        int key = preLoaderItemCallBackInfo.getKey();
        if (key != 2) {
            if (key != 3) {
                if (key == 5) {
                    Logger logger = Logger.f41511a;
                    logger.h("PreloadUtil", "preload canceled -> cacheKey(" + directUrlSource.vid() + ')');
                    return;
                }
                return;
            }
            Logger logger2 = Logger.f41511a;
            logger2.e("PreloadUtil", "preload failed -> cacheKey(" + directUrlSource.vid() + ") errMsg(" + preLoaderItemCallBackInfo.preloadError + ')');
            return;
        }
        DataLoaderHelper.DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo = preLoaderItemCallBackInfo.preloadDataInfo;
        if (dataLoaderTaskProgressInfo == null) {
            return;
        }
        Logger logger3 = Logger.f41511a;
        logger3.h("PreloadUtil", "preload success -> cacheKey(" + dataLoaderTaskProgressInfo.mKey + ") cacheSize(" + dataLoaderTaskProgressInfo.mCacheSizeFromZero + ") costTime(" + pVar.b() + "ms)");
        ud.b bVar = ud.b.f68412a;
        String mKey = dataLoaderTaskProgressInfo.mKey;
        Intrinsics.checkNotNullExpressionValue(mKey, "mKey");
        bVar.p5(mKey, true);
    }

    private final HashMap<String, Boolean> h() {
        return (HashMap) f64862b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap i() {
        return new HashMap();
    }

    public final void c(@NotNull String url, long j10) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            DirectUrlSource b10 = l.f64869a.b(url);
            TTVideoEngine.addTask(e(b10, j10));
            Logger logger = Logger.f41511a;
            logger.h("PreloadUtil", "add preload task -> cacheKey(" + b10.vid() + ')');
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("PreloadUtil", "add preload task exception -> " + e10.getMessage());
        }
    }

    public final void d(@NotNull String scene) {
        boolean z10;
        Intrinsics.checkNotNullParameter(scene, "scene");
        Iterator<Map.Entry<String, Boolean>> it = h().entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<String, Boolean> next = it.next();
                String key = next.getKey();
                boolean booleanValue = next.getValue().booleanValue();
                if (!Intrinsics.areEqual(key, scene) && booleanValue) {
                    Logger logger = Logger.f41511a;
                    logger.h("PreloadUtil", "clearPreloadStrategy(" + scene + ") failed -> scene(" + key + ") enable(true)");
                    z10 = false;
                    break;
                }
            } else {
                z10 = true;
                break;
            }
        }
        h().put(scene, Boolean.FALSE);
        if (z10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("PreloadUtil", "TTVideoEngine.clearAllStrategy(" + scene + ')');
            TTVideoEngine.clearAllStrategy();
        }
    }

    public final void g(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Boolean bool = h().get(scene);
        Boolean bool2 = Boolean.TRUE;
        if (!Intrinsics.areEqual(bool, bool2)) {
            Logger logger = Logger.f41511a;
            logger.h("PreloadUtil", "TTVideoEngine.enableEngineStrategy(" + scene + ')');
            h().put(scene, bool2);
            TTVideoEngine.enableEngineStrategy(1, 0);
        }
    }
}
