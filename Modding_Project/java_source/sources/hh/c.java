package hh;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f52871f = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private List<ShortsEpisode> f52872a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Integer f52873b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Integer f52874c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final i<ConcurrentHashMap<Integer, BaseEpisode>> f52875d = kotlin.c.b(new Function0() { // from class: hh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap l10;
            l10 = c.l();
            return l10;
        }
    });
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i<ConcurrentHashMap<Integer, BaseEpisode>> f52876e = kotlin.c.b(new Function0() { // from class: hh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap m10;
            m10 = c.m();
            return m10;
        }
    });

    /* compiled from: ShortsLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final BaseEpisode j(int i10, boolean z10, ConcurrentHashMap<Integer, BaseEpisode> concurrentHashMap) {
        if (z10) {
            return concurrentHashMap.remove(Integer.valueOf(i10));
        }
        return concurrentHashMap.get(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap l() {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap m() {
        return new ConcurrentHashMap();
    }

    private final void o(int i10, ConcurrentHashMap<Integer, BaseEpisode> concurrentHashMap) {
        for (Map.Entry<Integer, BaseEpisode> entry : concurrentHashMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            if (entry.getValue().getId() == i10) {
                concurrentHashMap.remove(Integer.valueOf(intValue));
            }
        }
    }

    public final void c(int i10, @NotNull BaseEpisode nextEpisode) {
        Intrinsics.checkNotNullParameter(nextEpisode, "nextEpisode");
        Logger logger = Logger.f41511a;
        logger.h("ShortsLocalDS", "addNextEpisodeForImmersion -> curEpisodeId(" + i10 + ") nextEpisodeId(" + nextEpisode.getId() + ')');
        if (nextEpisode.getNeedDecrypt()) {
            this.f52876e.getValue().put(Integer.valueOf(i10), nextEpisode);
            return;
        }
        this.f52875d.getValue().put(Integer.valueOf(i10), nextEpisode);
    }

    @Nullable
    public final Integer d() {
        return this.f52874c;
    }

    @Nullable
    public final List<ShortsEpisode> e() {
        return this.f52872a;
    }

    @Nullable
    public final Integer f() {
        return this.f52873b;
    }

    @Nullable
    public final BaseEpisode g(int i10, boolean z10) {
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            if (!this.f52876e.isInitialized()) {
                return null;
            }
            return j(i10, z10, this.f52876e.getValue());
        } else if (!this.f52875d.isInitialized()) {
            return null;
        } else {
            return j(i10, z10, this.f52875d.getValue());
        }
    }

    @Nullable
    public final ConcurrentHashMap<Integer, BaseEpisode> h() {
        if (this.f52875d.isInitialized()) {
            return this.f52875d.getValue();
        }
        return null;
    }

    @Nullable
    public final ConcurrentHashMap<Integer, BaseEpisode> i() {
        if (this.f52876e.isInitialized()) {
            return this.f52876e.getValue();
        }
        return null;
    }

    public final int k() {
        try {
            return Integer.parseInt((String) StringsKt.split$default(ud.b.f68412a.F1(), new String[]{"_"}, false, 0, 6, null).get(0));
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ShortsLocalDS", "getPageNumber exception -> " + e10.getMessage());
            p();
            return 1;
        }
    }

    public final void n(int i10) {
        if (this.f52875d.isInitialized()) {
            o(i10, this.f52875d.getValue());
        }
        if (this.f52876e.isInitialized()) {
            o(i10, this.f52876e.getValue());
        }
    }

    public final void p() {
        Logger.f41511a.h("Feed_Check_New_Test", "resetPageNumber()");
        q(1, -1);
    }

    public final void q(int i10, int i11) {
        Logger logger = Logger.f41511a;
        logger.h("Feed_Check_New_Test", "resetPageNumber pageNumber -> " + i10);
        ud.b bVar = ud.b.f68412a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        sb2.append('_');
        sb2.append(i11);
        bVar.S4(sb2.toString());
    }

    public final void r(@Nullable Integer num) {
        this.f52874c = num;
    }

    public final void s(@Nullable List<ShortsEpisode> list) {
        this.f52872a = list;
    }

    public final void t(@Nullable Integer num) {
        this.f52873b = num;
    }
}
