package xg;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class f {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f70455f = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ms.i<ConcurrentHashMap<Long, BaseEpisode>> f70456a = kotlin.c.b(new Function0() { // from class: xg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap n10;
            n10 = f.n();
            return n10;
        }
    });
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ms.i<ConcurrentHashMap<Long, BaseEpisode>> f70457b = kotlin.c.b(new Function0() { // from class: xg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap o10;
            o10 = f.o();
            return o10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Object f70458c = new Object();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ms.i<ConcurrentHashMap<String, Integer>> f70459d = kotlin.c.b(new Function0() { // from class: xg.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap p10;
            p10 = f.p();
            return p10;
        }
    });
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ms.i<ConcurrentHashMap<Integer, Integer>> f70460e = kotlin.c.b(new Function0() { // from class: xg.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap q10;
            q10 = f.q();
            return q10;
        }
    });

    /* compiled from: EpisodeLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void f(BaseEpisode baseEpisode) {
        Logger logger = Logger.f41511a;
        logger.h("EpisodeLocalDS", "addEpisodeCacheInternal -> shortsId(" + baseEpisode.getShortPlayId() + ") episodeNum(" + baseEpisode.getEpisodeNum() + ')');
        synchronized (this.f70458c) {
            try {
                long L = DeviceUtil.f48146a.L() + 1800000;
                if (baseEpisode.getNeedDecrypt()) {
                    this.f70457b.getValue().put(Long.valueOf(L), baseEpisode);
                } else {
                    this.f70456a.getValue().put(Long.valueOf(L), baseEpisode);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final BaseEpisode i(int i10, ConcurrentHashMap<Long, BaseEpisode> concurrentHashMap) {
        BaseEpisode baseEpisode;
        synchronized (this.f70458c) {
            long L = DeviceUtil.f48146a.L();
            Iterator<Map.Entry<Long, BaseEpisode>> it = concurrentHashMap.entrySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    Map.Entry<Long, BaseEpisode> next = it.next();
                    long longValue = next.getKey().longValue();
                    baseEpisode = next.getValue();
                    if (baseEpisode.getId() == i10) {
                        if (L < longValue) {
                            break;
                        }
                        concurrentHashMap.remove(Long.valueOf(longValue));
                    }
                } else {
                    baseEpisode = null;
                    break;
                }
            }
        }
        return baseEpisode;
    }

    private final List<BaseEpisode> k(int i10, ConcurrentHashMap<Long, BaseEpisode> concurrentHashMap) {
        ArrayList arrayList;
        synchronized (this.f70458c) {
            try {
                arrayList = new ArrayList();
                long L = DeviceUtil.f48146a.L();
                for (Map.Entry<Long, BaseEpisode> entry : concurrentHashMap.entrySet()) {
                    long longValue = entry.getKey().longValue();
                    BaseEpisode value = entry.getValue();
                    if (value.getShortPlayId() == i10) {
                        if (L < longValue) {
                            arrayList.add(value);
                        } else {
                            concurrentHashMap.remove(Long.valueOf(longValue));
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap n() {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap o() {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap p() {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap q() {
        return new ConcurrentHashMap();
    }

    private final void s(BaseEpisode baseEpisode, ConcurrentHashMap<Long, BaseEpisode> concurrentHashMap) {
        for (Map.Entry<Long, BaseEpisode> entry : concurrentHashMap.entrySet()) {
            long longValue = entry.getKey().longValue();
            BaseEpisode value = entry.getValue();
            if (value.getId() == baseEpisode.getId()) {
                Logger logger = Logger.f41511a;
                logger.h("EpisodeLocalDS", "removeEpisodeCacheInternal -> encrypted(" + value.getNeedDecrypt() + ") episodeId(" + baseEpisode.getId() + ')');
                concurrentHashMap.remove(Long.valueOf(longValue));
            }
        }
    }

    private final void w(int i10, String str, ConcurrentHashMap<Long, BaseEpisode> concurrentHashMap) {
        for (BaseEpisode baseEpisode : concurrentHashMap.values()) {
            Intrinsics.checkNotNullExpressionValue(baseEpisode, "next(...)");
            BaseEpisode baseEpisode2 = baseEpisode;
            if (baseEpisode2.getShortPlayId() == i10) {
                Logger logger = Logger.f41511a;
                logger.h("EpisodeLocalDS", "updateShortsNameInternal -> encrypted(" + baseEpisode2.getNeedDecrypt() + ") shortsId(" + i10 + ") episodeId(" + baseEpisode2.getId() + ") shortsName(" + str + ')');
                baseEpisode2.setShortPlayName(str);
            }
        }
    }

    public final void e(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        r(episode);
        f(episode);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(episode.getShortPlayId());
        sb2.append('_');
        sb2.append(episode.getEpisodeNum());
        t(sb2.toString(), episode.getId());
    }

    public final void g() {
        synchronized (this.f70458c) {
            try {
                if (this.f70456a.isInitialized()) {
                    this.f70456a.getValue().clear();
                }
                if (this.f70457b.isInitialized()) {
                    this.f70457b.getValue().clear();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final BaseEpisode h(int i10) {
        synchronized (this.f70458c) {
            if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
                if (!this.f70457b.isInitialized()) {
                    return null;
                }
                return i(i10, this.f70457b.getValue());
            } else if (!this.f70456a.isInitialized()) {
                return null;
            } else {
                return i(i10, this.f70456a.getValue());
            }
        }
    }

    @Nullable
    public final List<BaseEpisode> j(int i10) {
        synchronized (this.f70458c) {
            if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
                if (!this.f70457b.isInitialized()) {
                    return null;
                }
                return k(i10, this.f70457b.getValue());
            } else if (!this.f70456a.isInitialized()) {
                return null;
            } else {
                return k(i10, this.f70456a.getValue());
            }
        }
    }

    public final int l(@NotNull String key) {
        Integer num;
        Intrinsics.checkNotNullParameter(key, "key");
        if (!this.f70459d.isInitialized() || (num = this.f70459d.getValue().get(key)) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final int m(int i10) {
        Integer num;
        if (!this.f70460e.isInitialized() || (num = this.f70460e.getValue().get(Integer.valueOf(i10))) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final void r(@NotNull BaseEpisode baseEpisode) {
        Intrinsics.checkNotNullParameter(baseEpisode, "new");
        synchronized (this.f70458c) {
            try {
                if (this.f70456a.isInitialized()) {
                    s(baseEpisode, this.f70456a.getValue());
                }
                if (this.f70457b.isInitialized()) {
                    s(baseEpisode, this.f70457b.getValue());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void t(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Logger logger = Logger.f41511a;
        logger.h("EpisodeLocalDS", "setEpisodeIdCache -> key(" + key + ") episodeId(" + i10 + ')');
        this.f70459d.getValue().put(key, Integer.valueOf(i10));
    }

    public final void u(int i10, int i11) {
        Logger logger = Logger.f41511a;
        logger.h("EpisodeLocalDS", "setNextEpisodeIdCache -> currentEpisodeId(" + i10 + ") nextEpisodeId(" + i11 + ')');
        this.f70460e.getValue().put(Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public final void v(int i10, @NotNull String shortsName) {
        Intrinsics.checkNotNullParameter(shortsName, "shortsName");
        synchronized (this.f70458c) {
            try {
                if (this.f70456a.isInitialized()) {
                    w(i10, shortsName, this.f70456a.getValue());
                }
                if (this.f70457b.isInitialized()) {
                    w(i10, shortsName, this.f70457b.getValue());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
