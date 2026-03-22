package com.startshorts.androidplayer.manager.shorts.core;

import android.os.Bundle;
import bf.e;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.adapter.shorts.ShortsAdapter;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import fk.w;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsEpisodeManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsEpisodeManager {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f42942k = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ShortsViewPagerManager f42943a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private ShortsAdapter f42944b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b f42945c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private String f42946d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ShortsEpisode f42947e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ShortsEpisode f42948f;

    /* renamed from: g  reason: collision with root package name */
    private int f42949g;

    /* renamed from: h  reason: collision with root package name */
    private int f42950h;

    /* renamed from: i  reason: collision with root package name */
    private int f42951i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private PlaySpeed f42952j;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ShortsEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class PlayFailedReason {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ PlayFailedReason[] $VALUES;
        public static final PlayFailedReason REASON_INVALID_URL = new PlayFailedReason("REASON_INVALID_URL", 0);
        public static final PlayFailedReason REASON_URL_EXPIRED = new PlayFailedReason("REASON_URL_EXPIRED", 1);

        private static final /* synthetic */ PlayFailedReason[] $values() {
            return new PlayFailedReason[]{REASON_INVALID_URL, REASON_URL_EXPIRED};
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

    /* compiled from: ShortsEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ShortsEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(int i10, @NotNull ShortsEpisode shortsEpisode);

        void b(@Nullable ShortsEpisode shortsEpisode, @NotNull ShortsEpisode shortsEpisode2);

        void c(@NotNull ShortsEpisode shortsEpisode, @NotNull PlayFailedReason playFailedReason, boolean z10, boolean z11);

        void d(int i10, @NotNull ShortsEpisode shortsEpisode);
    }

    public ShortsEpisodeManager(@NotNull ShortsViewPagerManager viewPagerManager, @NotNull ShortsAdapter adapter, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(viewPagerManager, "viewPagerManager");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f42943a = viewPagerManager;
        this.f42944b = adapter;
        this.f42945c = listener;
        this.f42946d = "shorts";
        this.f42952j = PlaySpeed.Companion.getPLAY_SPEED_1();
    }

    private final void a(ShortsEpisode shortsEpisode) {
        this.f42945c.d(this.f42943a.m(), shortsEpisode);
        this.f42949g = 0;
        this.f42950h = 0;
        this.f42951i = 0;
    }

    private final ShortsEpisode b() {
        return this.f42944b.getItem(this.f42943a.l());
    }

    private final int d(ShortsEpisode shortsEpisode) {
        int t02;
        if (shortsEpisode.fromRecommendPool()) {
            t02 = ud.a.f68411a.j(shortsEpisode.getId());
        } else {
            t02 = ud.b.f68412a.t0(shortsEpisode.getId());
        }
        if (shortsEpisode.getVideoDuration() > 0) {
            long j10 = t02;
            long j11 = 1000;
            if (j10 >= shortsEpisode.getVideoDuration() * j11) {
                Logger.f41511a.e("ShortsEpisodeManager", "playPosition(" + t02 + ") > episode.videoDuration(" + (shortsEpisode.getVideoDuration() * j11) + "), reset playPosition to 0");
            } else if (Math.abs((shortsEpisode.getVideoDuration() * j11) - j10) <= 2000) {
                Logger.f41511a.e("ShortsEpisodeManager", "gap <=2000, reset playPosition to 0");
            } else {
                return t02;
            }
            ud.b.f68412a.E3(shortsEpisode.getId(), 0);
            ud.a.f68411a.k0(shortsEpisode.getId(), 0);
            return 0;
        }
        return t02;
    }

    private final void f(ShortsEpisode shortsEpisode) {
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "shorts_second_position_show", EventManager.x(eventManager, shortsEpisode.getExtraAdInfo(), false, 2, null), 0L, 4, null);
    }

    private final void g(ShortsEpisode shortsEpisode) {
        if (shortsEpisode.isAd()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(shortsEpisode);
        C.putString("status", "success");
        C.putString("scene", "shorts");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_request", C, 0L, 4, null);
    }

    private final void h(ShortsEpisode shortsEpisode) {
        if (shortsEpisode.isAd()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(shortsEpisode);
        C.putString("scene", "shorts");
        C.putString("from", this.f42946d);
        C.putString("is_free", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        C.putFloat("speed_level", this.f42952j.getValue());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_play", C, 0L, 4, null);
    }

    private final void i(ShortsEpisode shortsEpisode) {
        int i10;
        int i11;
        int i12;
        if (shortsEpisode.isAd()) {
            return;
        }
        TurboLinkRepo turboLinkRepo = TurboLinkRepo.f43851a;
        HashMap hashMap = new HashMap();
        int i13 = this.f42951i;
        int i14 = 1;
        if (i13 < 1000) {
            i10 = 1;
        } else {
            i10 = i13 / 1000;
        }
        hashMap.put("duration", String.valueOf(i10));
        Unit unit = Unit.f60915a;
        turboLinkRepo.b("tbo_play_time", hashMap);
        if (this.f42949g > 0 && this.f42950h / i11 > 0.9d) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("episode", "1");
            turboLinkRepo.b("tbo_play_series", hashMap2);
            if (shortsEpisode.isLastEpisode()) {
                HashMap hashMap3 = new HashMap();
                hashMap3.put("watch_count", "1");
                turboLinkRepo.b("tbo_reel_play", hashMap3);
            }
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(shortsEpisode);
        int i15 = this.f42951i;
        if (i15 < 1000) {
            i12 = 1;
        } else {
            i12 = i15 / 1000;
        }
        C.putInt("seconds", i12);
        C.putString("scene", "shorts");
        EventManager.s0(eventManager, "play_time_real", C, 0L, 4, null);
        Bundle C2 = eventManager.C(shortsEpisode);
        int i16 = this.f42950h;
        if (i16 >= 1000) {
            i14 = i16 / 1000;
        }
        C2.putInt("seconds", i14);
        C2.putString("scene", "shorts");
        EventManager.s0(eventManager, "play_time_schedule", C2, 0L, 4, null);
        Bundle C3 = eventManager.C(shortsEpisode);
        int i17 = this.f42949g;
        if (i17 != 0) {
            C3.putFloat("watch_progress_percent", w.f51779a.b(((this.f42950h * 1.0f) / i17) * 100, 2));
        } else {
            C3.putFloat("watch_progress_percent", 0.0f);
        }
        C3.putString("scene", "shorts");
        C3.putString("from", this.f42946d);
        C3.putFloat("speed_level", this.f42952j.getValue());
        C3.putString("is_free", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        EventManager.s0(eventManager, "playback_progress_track", C3, 0L, 4, null);
    }

    private final void j(ShortsEpisode shortsEpisode) {
        int i10;
        if (shortsEpisode.isAd()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(shortsEpisode);
        C.putString("scene", "shorts");
        int i11 = this.f42950h;
        if (i11 < 1000) {
            i10 = 1;
        } else {
            i10 = i11 / 1000;
        }
        C.putInt("seconds", i10);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_cut", C, 0L, 4, null);
    }

    private final void q(ShortsEpisode shortsEpisode) {
        if (!shortsEpisode.isAd() && !shortsEpisode.fromRecommendPool()) {
            int i10 = this.f42950h;
            if (i10 >= 5000) {
                EpisodeRepo.f44056a.x(shortsEpisode, i10 / 1000);
            }
        }
    }

    private final void t(ShortsEpisode shortsEpisode, boolean z10, boolean z11) {
        if (shortsEpisode.isAd()) {
            if (shortsEpisode.isBrandAd()) {
                f(shortsEpisode);
            }
            if (shortsEpisode.isBrandVideoAd()) {
                String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(shortsEpisode, 0, 1, null);
                if (parseVideoUrl$default != null && parseVideoUrl$default.length() != 0) {
                    this.f42945c.a(0, shortsEpisode);
                    return;
                } else {
                    this.f42945c.c(shortsEpisode, PlayFailedReason.REASON_INVALID_URL, z10, z11);
                    return;
                }
            }
            this.f42945c.a(-1, shortsEpisode);
            return;
        }
        g(shortsEpisode);
        String parseVideoUrl$default2 = BaseEpisode.parseVideoUrl$default(shortsEpisode, 0, 1, null);
        if (parseVideoUrl$default2 != null && parseVideoUrl$default2.length() != 0) {
            if (shortsEpisode.isVideoExpired()) {
                this.f42945c.c(shortsEpisode, PlayFailedReason.REASON_URL_EXPIRED, z10, z11);
                return;
            }
            h(shortsEpisode);
            this.f42945c.a(d(shortsEpisode), shortsEpisode);
            return;
        }
        this.f42945c.c(shortsEpisode, PlayFailedReason.REASON_INVALID_URL, z10, z11);
    }

    @Nullable
    public final ShortsEpisode c() {
        return this.f42948f;
    }

    public final int e() {
        return this.f42951i;
    }

    public final void k(boolean z10, boolean z11) {
        Integer num;
        Integer num2;
        Integer num3;
        ShortsEpisode b10 = b();
        Integer num4 = null;
        if (b10 != null) {
            num = Integer.valueOf(b10.getId());
        } else {
            num = null;
        }
        ShortsEpisode shortsEpisode = this.f42948f;
        if (shortsEpisode != null) {
            num2 = Integer.valueOf(shortsEpisode.getId());
        } else {
            num2 = null;
        }
        if (Intrinsics.areEqual(num, num2)) {
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("notifyEpisodeChanged failed -> currentEpisodeId(");
            if (b10 != null) {
                num3 = Integer.valueOf(b10.getId());
            } else {
                num3 = null;
            }
            sb2.append(num3);
            sb2.append(") mCurrentEpisode(");
            ShortsEpisode shortsEpisode2 = this.f42948f;
            if (shortsEpisode2 != null) {
                num4 = Integer.valueOf(shortsEpisode2.getId());
            }
            sb2.append(num4);
            sb2.append(')');
            logger.e("ShortsEpisodeManager", sb2.toString());
            return;
        }
        ShortsEpisode shortsEpisode3 = this.f42948f;
        this.f42947e = shortsEpisode3;
        if (shortsEpisode3 != null) {
            q(shortsEpisode3);
            j(shortsEpisode3);
            i(shortsEpisode3);
            a(shortsEpisode3);
        }
        if (b10 == null) {
            return;
        }
        this.f42948f = b10;
        this.f42945c.b(this.f42947e, b10);
        ag.a.f646a.e("shorts", d(b10), b10.getShortPlayCode(), b10.getVideoType(), b10.getUpack(), EventManager.f42463a.C(b10));
        t(b10, z10, z11);
    }

    public final void l() {
        ShortsEpisode shortsEpisode = this.f42948f;
        if (shortsEpisode != null) {
            q(shortsEpisode);
            j(shortsEpisode);
            i(shortsEpisode);
        }
    }

    public final void m(@NotNull PlaySpeed playSpeed) {
        Intrinsics.checkNotNullParameter(playSpeed, "playSpeed");
        this.f42952j = playSpeed;
    }

    public final void n(int i10, int i11) {
        ShortsEpisode shortsEpisode;
        this.f42949g = i11;
        this.f42950h = i10;
        this.f42951i += 200;
        ShortsEpisode shortsEpisode2 = this.f42948f;
        if (shortsEpisode2 != null && !shortsEpisode2.isAd()) {
            if (shortsEpisode2.fromRecommendPool()) {
                ud.a.f68411a.k0(shortsEpisode2.getId(), i10);
            } else {
                ud.b bVar = ud.b.f68412a;
                int id2 = shortsEpisode2.getId();
                if (i10 == i11) {
                    i10 = 0;
                }
                bVar.E3(id2, i10);
            }
            e.f2616a.h().i();
            if (vi.e.f68955a.d() && (shortsEpisode = this.f42948f) != null && !shortsEpisode.isFreeEpisode()) {
                ud.b bVar2 = ud.b.f68412a;
                bVar2.k5(bVar2.X1() + 200);
            }
        }
    }

    public final void o() {
        Logger.f41511a.h("ShortsEpisodeManager", "release");
        ShortsEpisode shortsEpisode = this.f42948f;
        if (shortsEpisode != null) {
            q(shortsEpisode);
            i(shortsEpisode);
        }
    }

    public final void p() {
        ShortsEpisode shortsEpisode = this.f42948f;
        if (shortsEpisode != null) {
            t(shortsEpisode, false, false);
        }
    }

    public final void r(@NotNull ShortsAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.f42944b = adapter;
        this.f42948f = null;
        this.f42947e = null;
    }

    public final void s(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f42946d = str;
    }
}
