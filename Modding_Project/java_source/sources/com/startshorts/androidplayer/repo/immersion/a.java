package com.startshorts.androidplayer.repo.immersion;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final C0628a f44168g = new C0628a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private List<BaseEpisode> f44172d;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ImmersionBackConfig f44174f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i<ConcurrentHashMap<Long, ShortsDetail>> f44169a = c.b(new Function0() { // from class: xg.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap i10;
            i10 = com.startshorts.androidplayer.repo.immersion.a.i();
            return i10;
        }
    });
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object f44170b = new Object();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b f44171c = new b();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private String f44173e = "";

    /* compiled from: ImmersionLocalDS.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.repo.immersion.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0628a {
        public /* synthetic */ C0628a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0628a() {
        }
    }

    /* compiled from: ImmersionLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private long f44175a;

        public b() {
        }

        public final boolean a() {
            if (ud.b.f68412a.Y1() < 180000) {
                return false;
            }
            long L = DeviceUtil.f48146a.L();
            if (L - this.f44175a <= ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
                return false;
            }
            this.f44175a = L;
            return true;
        }

        public final boolean b() {
            return ud.b.f68412a.G0();
        }

        public final void c() {
            this.f44175a = DeviceUtil.f48146a.L();
            Logger logger = Logger.f41511a;
            logger.h("ImmersionLocalDS", "onReportStart -> lastReportTime=" + this.f44175a);
        }

        public final void d() {
            Logger.f41511a.e("ImmersionLocalDS", "onReportedFailed");
        }

        public final void e() {
            Logger.f41511a.h("ImmersionLocalDS", "onReportedSucceed");
            ud.b.f68412a.S3(true);
        }

        public final void f() {
            ud.b bVar = ud.b.f68412a;
            bVar.l5(bVar.Y1() + 200);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConcurrentHashMap i() {
        return new ConcurrentHashMap();
    }

    private final void j(int i10) {
        synchronized (this.f44170b) {
            try {
                for (Map.Entry<Long, ShortsDetail> entry : this.f44169a.getValue().entrySet()) {
                    long longValue = entry.getKey().longValue();
                    if (entry.getValue().getId() == i10) {
                        Logger logger = Logger.f41511a;
                        logger.h("ImmersionLocalDS", "removeShortsDetailCache -> shortsId(" + i10 + ')');
                        this.f44169a.getValue().remove(Long.valueOf(longValue));
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b(@NotNull ShortsDetail detail) {
        Intrinsics.checkNotNullParameter(detail, "detail");
        j(detail.getId());
        Logger logger = Logger.f41511a;
        logger.h("ImmersionLocalDS", "addShortsDetailCache -> shortsId(" + detail.getId() + ')');
        synchronized (this.f44170b) {
            this.f44169a.getValue().put(Long.valueOf(DeviceUtil.f48146a.L() + TTAdConstant.AD_MAX_EVENT_TIME), detail);
            Unit unit = Unit.f60915a;
        }
    }

    public final void c() {
        synchronized (this.f44170b) {
            try {
                if (this.f44169a.isInitialized()) {
                    this.f44169a.getValue().clear();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final ImmersionBackConfig d() {
        return this.f44174f;
    }

    @Nullable
    public final List<BaseEpisode> e() {
        return this.f44172d;
    }

    @NotNull
    public final String f() {
        return this.f44173e;
    }

    @NotNull
    public final b g() {
        return this.f44171c;
    }

    @Nullable
    public final ShortsDetail h(int i10) {
        synchronized (this.f44170b) {
            ShortsDetail shortsDetail = null;
            if (!this.f44169a.isInitialized()) {
                return null;
            }
            long L = DeviceUtil.f48146a.L();
            Iterator<Map.Entry<Long, ShortsDetail>> it = this.f44169a.getValue().entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Long, ShortsDetail> next = it.next();
                long longValue = next.getKey().longValue();
                ShortsDetail value = next.getValue();
                if (value.getId() == i10) {
                    if (L < longValue) {
                        shortsDetail = value;
                        break;
                    }
                    this.f44169a.getValue().remove(Long.valueOf(longValue));
                }
            }
            return shortsDetail;
        }
    }

    public final void k(@Nullable ImmersionBackConfig immersionBackConfig) {
        this.f44174f = immersionBackConfig;
    }

    public final void l(@Nullable List<BaseEpisode> list) {
        this.f44172d = list;
    }

    public final void m(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f44173e = str;
    }
}
