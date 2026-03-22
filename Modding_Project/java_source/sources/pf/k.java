package pf;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.EpisodeVideo;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.ResourceHandler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResolutionUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResolutionUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResolutionUtil.kt\ncom/startshorts/androidplayer/manager/player/util/ResolutionUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1971#2,14:182\n1755#2,3:196\n1062#2:199\n360#2,7:200\n*S KotlinDebug\n*F\n+ 1 ResolutionUtil.kt\ncom/startshorts/androidplayer/manager/player/util/ResolutionUtil\n*L\n73#1:182,14\n141#1:196,3\n154#1:199\n156#1:200,7\n*E\n"})
/* loaded from: classes6.dex */
public final class k {
    @NotNull

    /* renamed from: a */
    public static final k f64864a = new k();
    @NotNull

    /* renamed from: b */
    private static final ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> f64865b = kotlin.c.b(new Function0() { // from class: pf.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap w10;
            w10 = k.w();
            return w10;
        }
    });
    @NotNull

    /* renamed from: c */
    private static final ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> f64866c = kotlin.c.b(new Function0() { // from class: pf.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap u10;
            u10 = k.u();
            return u10;
        }
    });
    @NotNull

    /* renamed from: d */
    private static final ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> f64867d = kotlin.c.b(new Function0() { // from class: pf.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap x10;
            x10 = k.x();
            return x10;
        }
    });
    @NotNull

    /* renamed from: e */
    private static final ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> f64868e = kotlin.c.b(new Function0() { // from class: pf.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap v10;
            v10 = k.v();
            return v10;
        }
    });

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 ResolutionUtil.kt\ncom/startshorts/androidplayer/manager/player/util/ResolutionUtil\n*L\n1#1,121:1\n154#2:122\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((PlayResolution) t11).getResolutionValue()), Integer.valueOf(((PlayResolution) t10).getResolutionValue()));
        }
    }

    private k() {
    }

    public static /* synthetic */ List m(k kVar, BaseEpisode baseEpisode, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return kVar.l(baseEpisode, z10);
    }

    public static final boolean n(PlayResolution it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.getResolutionValue() == 1080) {
            return true;
        }
        return false;
    }

    public static final boolean o(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    public static /* synthetic */ PlayResolution q(k kVar, BaseEpisode baseEpisode, PlayResolution playResolution, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return kVar.p(baseEpisode, playResolution, z10);
    }

    private final boolean t() {
        return AccountRepo.f43052a.k0();
    }

    public static final ConcurrentHashMap u() {
        return new ConcurrentHashMap();
    }

    public static final ConcurrentHashMap v() {
        return new ConcurrentHashMap();
    }

    public static final ConcurrentHashMap w() {
        return new ConcurrentHashMap();
    }

    public static final ConcurrentHashMap x() {
        return new ConcurrentHashMap();
    }

    public final void g() {
        ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> iVar = f64865b;
        if (iVar.isInitialized()) {
            iVar.getValue().clear();
        }
        ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> iVar2 = f64866c;
        if (iVar2.isInitialized()) {
            iVar2.getValue().clear();
        }
        ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> iVar3 = f64867d;
        if (iVar3.isInitialized()) {
            iVar3.getValue().clear();
        }
        ms.i<ConcurrentHashMap<Integer, List<PlayResolution>>> iVar4 = f64868e;
        if (iVar4.isInitialized()) {
            iVar4.getValue().clear();
        }
    }

    @NotNull
    public final List<PlayResolution> h(@Nullable BaseEpisode baseEpisode) {
        ArrayList arrayList = new ArrayList();
        List<PlayResolution> r10 = r(baseEpisode);
        arrayList.addAll(r10);
        if (r10.size() > 1) {
            arrayList.add(0, PlayResolution.Companion.getPLAY_RESOLUTION_AUTO());
        }
        return arrayList;
    }

    @Nullable
    public final PlayResolution i(@Nullable BaseEpisode baseEpisode) {
        return j(m(this, baseEpisode, false, 2, null));
    }

    @Nullable
    public final PlayResolution j(@NotNull List<PlayResolution> resolutions) {
        Object obj;
        Intrinsics.checkNotNullParameter(resolutions, "resolutions");
        Iterator<T> it = resolutions.iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            Object next = it.next();
            if (!it.hasNext()) {
                obj = next;
            } else {
                int resolutionValue = ((PlayResolution) next).getResolutionValue();
                do {
                    Object next2 = it.next();
                    int resolutionValue2 = ((PlayResolution) next2).getResolutionValue();
                    if (resolutionValue < resolutionValue2) {
                        next = next2;
                        resolutionValue = resolutionValue2;
                    }
                } while (it.hasNext());
                obj = next;
            }
        }
        return (PlayResolution) obj;
    }

    @Nullable
    public final PlayResolution k(@NotNull BaseEpisode episode, int i10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        int i11 = 0;
        List U0 = CollectionsKt.U0(m(this, episode, false, 2, null), new a());
        try {
            Iterator it = U0.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((PlayResolution) it.next()).getResolutionValue() == i10) {
                        break;
                    }
                    i11++;
                } else {
                    i11 = -1;
                    break;
                }
            }
            PlayResolution playResolution = (PlayResolution) CollectionsKt.t0(U0, (i11 + 1) % U0.size());
            Logger logger = Logger.f41511a;
            logger.h("ResolutionUtil", "getNextResolution succeed -> currentResolutionValue(" + i10 + ") nextResolution(" + playResolution + ')');
            return playResolution;
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("ResolutionUtil", "getNextResolution failed -> " + e10.getMessage());
            return null;
        }
    }

    @NotNull
    public final List<PlayResolution> l(@Nullable BaseEpisode baseEpisode, boolean z10) {
        List<PlayResolution> list;
        if (baseEpisode == null) {
            return new ArrayList();
        }
        if (baseEpisode.isDownloadFinished()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(PlayResolution.Companion.create(baseEpisode.getDownloadResolution()));
            return arrayList;
        }
        List<PlayResolution> r10 = r(baseEpisode);
        if (!s()) {
            if (z10) {
                Logger.f41511a.h("ResolutionUtil", "getPlayableResolutions -> remove 1080P");
            }
            if (baseEpisode.getNeedDecrypt()) {
                list = f64868e.getValue().get(Integer.valueOf(baseEpisode.getId()));
            } else {
                list = f64866c.getValue().get(Integer.valueOf(baseEpisode.getId()));
            }
            List<PlayResolution> list2 = list;
            if (list2 == null || list2.isEmpty()) {
                list = CollectionsKt.g1(r10);
                final Function1 function1 = new Function1() { // from class: pf.i
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean n10;
                        n10 = k.n((PlayResolution) obj);
                        return Boolean.valueOf(n10);
                    }
                };
                list.removeIf(new Predicate() { // from class: pf.j
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean o10;
                        o10 = k.o(Function1.this, obj);
                        return o10;
                    }
                });
                if (baseEpisode.getNeedDecrypt()) {
                    f64868e.getValue().put(Integer.valueOf(baseEpisode.getId()), list);
                } else {
                    f64866c.getValue().put(Integer.valueOf(baseEpisode.getId()), list);
                }
            }
            return list;
        }
        return r10;
    }

    @Nullable
    public final PlayResolution p(@Nullable BaseEpisode baseEpisode, @NotNull PlayResolution expectedResolution, boolean z10) {
        Intrinsics.checkNotNullParameter(expectedResolution, "expectedResolution");
        if (expectedResolution.isAuto()) {
            return null;
        }
        List<PlayResolution> r10 = r(baseEpisode);
        List<PlayResolution> list = r10;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (PlayResolution playResolution : list) {
                if (playResolution.getResolutionValue() == expectedResolution.getResolutionValue()) {
                    return expectedResolution;
                }
            }
        }
        if (z10) {
            Logger logger = Logger.f41511a;
            logger.e("ResolutionUtil", "getRealResolution no exist -> expectedResolution(" + expectedResolution + ") supportResolutions(" + r10 + ')');
        }
        return null;
    }

    @NotNull
    public final List<PlayResolution> r(@Nullable BaseEpisode baseEpisode) {
        List<PlayResolution> list;
        String video_1080;
        if (baseEpisode == null) {
            return new ArrayList();
        }
        if (baseEpisode.getNeedDecrypt()) {
            list = f64867d.getValue().get(Integer.valueOf(baseEpisode.getId()));
        } else {
            list = f64865b.getValue().get(Integer.valueOf(baseEpisode.getId()));
        }
        List<PlayResolution> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            if (list == null) {
                list = new ArrayList<>();
            }
            BaseEpisode.parseVideoUrl$default(baseEpisode, 0, 1, null);
            EpisodeVideo parsedVideo = baseEpisode.getParsedVideo();
            if (parsedVideo != null) {
                String video_480 = parsedVideo.getVideo_480();
                if (video_480 != null) {
                    list.add(PlayResolution.copy$default(PlayResolution.Companion.getPLAY_RESOLUTION_480P(), 0, null, ResourceHandler.f48167a.o(video_480), 3, null));
                }
                String video_720 = parsedVideo.getVideo_720();
                if (video_720 != null) {
                    list.add(PlayResolution.copy$default(PlayResolution.Companion.getPLAY_RESOLUTION_720P(), 0, null, ResourceHandler.f48167a.o(video_720), 3, null));
                }
                if (t() && (video_1080 = parsedVideo.getVideo_1080()) != null) {
                    list.add(PlayResolution.copy$default(PlayResolution.Companion.getPLAY_RESOLUTION_1080P(), 0, null, ResourceHandler.f48167a.o(video_1080), 3, null));
                }
            }
            if (baseEpisode.getNeedDecrypt()) {
                f64867d.getValue().put(Integer.valueOf(baseEpisode.getId()), list);
            } else {
                f64865b.getValue().put(Integer.valueOf(baseEpisode.getId()), list);
            }
            Logger logger = Logger.f41511a;
            logger.h("ResolutionUtil", "getSupportResolutions(episodeNum(" + baseEpisode.getEpisodeNum() + ") episodeId(" + baseEpisode.getId() + ")) -> " + list);
        }
        return list;
    }

    public final boolean s() {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.k0() && accountRepo.z0()) {
            return true;
        }
        return false;
    }
}
