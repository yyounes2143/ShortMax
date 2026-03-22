package com.startshorts.androidplayer.manager.miniwindow;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import fk.w;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MiniWindowEpisodeManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MiniWindowEpisodeManager {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f42672k = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final jf.b f42673a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final b f42674b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseEpisode f42675c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseEpisode f42676d;

    /* renamed from: e  reason: collision with root package name */
    private int f42677e;

    /* renamed from: f  reason: collision with root package name */
    private int f42678f;

    /* renamed from: g  reason: collision with root package name */
    private int f42679g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private PlaySpeed f42680h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f42681i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private List<BaseEpisode> f42682j;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: MiniWindowEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class PlayFailedReason {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ PlayFailedReason[] $VALUES;
        public static final PlayFailedReason REASON_LOCKED = new PlayFailedReason("REASON_LOCKED", 0);
        public static final PlayFailedReason REASON_INVALID_URL = new PlayFailedReason("REASON_INVALID_URL", 1);
        public static final PlayFailedReason REASON_URL_EXPIRED = new PlayFailedReason("REASON_URL_EXPIRED", 2);

        private static final /* synthetic */ PlayFailedReason[] $values() {
            return new PlayFailedReason[]{REASON_LOCKED, REASON_INVALID_URL, REASON_URL_EXPIRED};
        }

        static {
            PlayFailedReason[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private PlayFailedReason(String str, int i10) {
        }

        @NotNull
        public static ss.a<PlayFailedReason> getEntries() {
            return $ENTRIES;
        }

        public static PlayFailedReason valueOf(String str) {
            return (PlayFailedReason) Enum.valueOf(PlayFailedReason.class, str);
        }

        public static PlayFailedReason[] values() {
            return (PlayFailedReason[]) $VALUES.clone();
        }
    }

    /* compiled from: MiniWindowEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MiniWindowEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(int i10, @NotNull BaseEpisode baseEpisode);

        void b(@Nullable BaseEpisode baseEpisode, @NotNull BaseEpisode baseEpisode2, boolean z10);

        void c(boolean z10, @Nullable BaseEpisode baseEpisode, @NotNull BaseEpisode baseEpisode2);

        void d(@NotNull BaseEpisode baseEpisode, @NotNull PlayFailedReason playFailedReason);

        void e(int i10, @NotNull BaseEpisode baseEpisode);
    }

    public MiniWindowEpisodeManager(@NotNull jf.b positionManager, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(positionManager, "positionManager");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f42673a = positionManager;
        this.f42674b = listener;
        this.f42680h = PlaySpeed.Companion.getPLAY_SPEED_1();
        this.f42681i = true;
        this.f42682j = new ArrayList();
    }

    private final void b(BaseEpisode baseEpisode) {
        this.f42674b.a(this.f42673a.d(), baseEpisode);
        this.f42677e = 0;
        this.f42678f = 0;
        this.f42679g = 0;
    }

    private final BaseEpisode c() {
        return (BaseEpisode) CollectionsKt.t0(this.f42682j, this.f42673a.c());
    }

    private final int e(BaseEpisode baseEpisode) {
        ud.b bVar = ud.b.f68412a;
        int t02 = bVar.t0(baseEpisode.getId());
        if (t02 == 0) {
            t02 = ud.a.f68411a.j(baseEpisode.getId());
        }
        if (baseEpisode.getVideoDuration() > 0) {
            long j10 = t02;
            long j11 = 1000;
            if (j10 >= baseEpisode.getVideoDuration() * j11) {
                Logger.f41511a.e("MiniWindowEpisodeManager", "playPosition(" + t02 + ") > episode.videoDuration(" + (baseEpisode.getVideoDuration() * j11) + "), reset playPosition to 0");
            } else if (Math.abs((baseEpisode.getVideoDuration() * j11) - j10) <= 2000) {
                Logger.f41511a.e("MiniWindowEpisodeManager", "gap <=2000, reset playPosition to 0");
            } else {
                return t02;
            }
            bVar.E3(baseEpisode.getId(), 0);
            return 0;
        }
        return t02;
    }

    private final void f(BaseEpisode baseEpisode) {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("status", "success");
        C.putString("scene", "pip_window");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_request", C, 0L, 4, null);
    }

    private final void g(BaseEpisode baseEpisode) {
        String str;
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("scene", "pip_window");
        if (baseEpisode.getPrice() > 0) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        C.putString("is_free", str);
        C.putFloat("speed_level", this.f42680h.getValue());
        C.putString("unlock_type", baseEpisode.m4705getUnlockType());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_play", C, 0L, 4, null);
    }

    private final void h(BaseEpisode baseEpisode) {
        int i10;
        String str;
        if (baseEpisode.isLocked()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        int i11 = this.f42679g;
        int i12 = 1;
        if (i11 < 1000) {
            i10 = 1;
        } else {
            i10 = i11 / 1000;
        }
        C.putInt("seconds", i10);
        C.putString("scene", "pip_window");
        C.putString("unlock_type", baseEpisode.m4705getUnlockType());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "play_time_real", C, 0L, 4, null);
        Bundle C2 = eventManager.C(baseEpisode);
        int i13 = this.f42678f;
        if (i13 >= 1000) {
            i12 = i13 / 1000;
        }
        C2.putInt("seconds", i12);
        C2.putString("scene", "pip_window");
        C2.putString("unlock_type", baseEpisode.m4705getUnlockType());
        EventManager.s0(eventManager, "play_time_schedule", C2, 0L, 4, null);
        Bundle C3 = eventManager.C(baseEpisode);
        int i14 = this.f42677e;
        if (i14 != 0) {
            C3.putFloat("watch_progress_percent", w.f51779a.b(((this.f42678f * 1.0f) / i14) * 100, 2));
        } else {
            C3.putFloat("watch_progress_percent", 0.0f);
        }
        C3.putString("scene", "pip_window");
        if (baseEpisode.getPrice() > 0) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        C3.putString("is_free", str);
        C3.putFloat("speed_level", this.f42680h.getValue());
        C3.putString("unlock_type", baseEpisode.m4705getUnlockType());
        EventManager.s0(eventManager, "playback_progress_track", C3, 0L, 4, null);
    }

    private final void i(BaseEpisode baseEpisode) {
        int i10;
        if (baseEpisode.isLocked()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("scene", "pip_window");
        int i11 = this.f42678f;
        if (i11 < 1000) {
            i10 = 1;
        } else {
            i10 = i11 / 1000;
        }
        C.putInt("seconds", i10);
        C.putString("unlock_type", baseEpisode.m4705getUnlockType());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_cut", C, 0L, 4, null);
    }

    private final void m() {
        this.f42673a.m(this.f42682j.size());
    }

    private final void p(BaseEpisode baseEpisode) {
        if (baseEpisode.isTrailer() || baseEpisode.isLocked()) {
            return;
        }
        int i10 = this.f42678f;
        if (i10 >= 5000) {
            EpisodeRepo.f44056a.x(baseEpisode, i10 / 1000);
        }
    }

    private final void r(BaseEpisode baseEpisode) {
        if (baseEpisode.isLocked()) {
            this.f42674b.d(baseEpisode, PlayFailedReason.REASON_LOCKED);
            return;
        }
        f(baseEpisode);
        String videoUrl = baseEpisode.getVideoUrl();
        if (videoUrl != null && videoUrl.length() != 0) {
            if (baseEpisode.isVideoExpired()) {
                this.f42674b.d(baseEpisode, PlayFailedReason.REASON_URL_EXPIRED);
                return;
            }
            g(baseEpisode);
            this.f42674b.e(e(baseEpisode), baseEpisode);
            return;
        }
        this.f42674b.d(baseEpisode, PlayFailedReason.REASON_INVALID_URL);
    }

    public final void a(@NotNull List<BaseEpisode> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f42682j.addAll(list);
        m();
    }

    @NotNull
    public final List<BaseEpisode> d() {
        return this.f42682j;
    }

    public final void j() {
        Integer num;
        Integer num2;
        BaseEpisode baseEpisode;
        Integer num3;
        BaseEpisode c10 = c();
        Integer num4 = null;
        if (c10 != null) {
            num = Integer.valueOf(c10.getId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f42676d;
        if (baseEpisode2 != null) {
            num2 = Integer.valueOf(baseEpisode2.getId());
        } else {
            num2 = null;
        }
        if (Intrinsics.areEqual(num, num2)) {
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("notifyEpisodeChanged failed -> currentEpisodeId(");
            if (c10 != null) {
                num3 = Integer.valueOf(c10.getId());
            } else {
                num3 = null;
            }
            sb2.append(num3);
            sb2.append(") mCurrentEpisode(");
            BaseEpisode baseEpisode3 = this.f42676d;
            if (baseEpisode3 != null) {
                num4 = Integer.valueOf(baseEpisode3.getId());
            }
            sb2.append(num4);
            sb2.append(')');
            logger.e("MiniWindowEpisodeManager", sb2.toString());
            return;
        }
        BaseEpisode baseEpisode4 = this.f42676d;
        this.f42675c = baseEpisode4;
        if (baseEpisode4 != null) {
            p(baseEpisode4);
            i(baseEpisode4);
            h(baseEpisode4);
            b(baseEpisode4);
        }
        if (c10 == null) {
            return;
        }
        this.f42676d = c10;
        BaseEpisode baseEpisode5 = this.f42675c;
        boolean z10 = true;
        if (baseEpisode5 != null && ((baseEpisode5 == null || !baseEpisode5.isTrailer()) && !c10.isTrailer() && (baseEpisode = this.f42675c) != null && baseEpisode.getShortPlayId() == c10.getShortPlayId())) {
            z10 = false;
        }
        if (z10) {
            this.f42674b.b(this.f42675c, c10, this.f42681i);
        }
        this.f42674b.c(z10, this.f42675c, c10);
        r(c10);
    }

    public final void k() {
        BaseEpisode baseEpisode;
        String videoUrl;
        BaseEpisode c10 = c();
        if (c10 != null && (baseEpisode = this.f42676d) != null && c10.getId() == baseEpisode.getId()) {
            this.f42676d = c10;
            if (c10.getUnlockJustNow() && (videoUrl = c10.getVideoUrl()) != null && videoUrl.length() != 0) {
                Logger logger = Logger.f41511a;
                logger.h("MiniWindowEpisodeManager", "notifyEpisodeUnlocked -> episodeNum(" + c10.getEpisodeNum() + ") episodeId(" + c10.getId() + ')');
                c10.setUnlockJustNow(false);
                g(c10);
                this.f42674b.e(e(c10), c10);
            }
        }
    }

    public final void l(int i10, int i11) {
        this.f42677e = i11;
        this.f42678f = i10;
        this.f42679g += 200;
        BaseEpisode baseEpisode = this.f42676d;
        if (baseEpisode != null) {
            ud.b bVar = ud.b.f68412a;
            int id2 = baseEpisode.getId();
            if (i10 == i11) {
                i10 = 0;
            }
            bVar.E3(id2, i10);
        }
    }

    public final void n() {
        Logger.f41511a.h("MiniWindowEpisodeManager", "release");
        BaseEpisode baseEpisode = this.f42676d;
        if (baseEpisode != null) {
            p(baseEpisode);
            h(baseEpisode);
        }
    }

    public final void o() {
        BaseEpisode baseEpisode = this.f42676d;
        if (baseEpisode != null) {
            r(baseEpisode);
        }
    }

    public final void q(@NotNull PlaySpeed playSpeed) {
        Intrinsics.checkNotNullParameter(playSpeed, "<set-?>");
        this.f42680h = playSpeed;
    }

    public final void s(@NotNull List<BaseEpisode> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f42682j = list;
        m();
    }
}
