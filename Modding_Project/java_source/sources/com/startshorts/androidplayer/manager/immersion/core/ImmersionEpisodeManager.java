package com.startshorts.androidplayer.manager.immersion.core;

import android.os.Bundle;
import bf.e;
import com.adjust.sdk.Constants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.adapter.immersion.ImmersionAdapter;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.EpisodeVideo;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.w;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import rs.c;
/* compiled from: ImmersionEpisodeManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionEpisodeManager {
    @NotNull

    /* renamed from: q */
    public static final a f42533q = new a(null);
    @NotNull

    /* renamed from: a */
    private final ImmersionParams f42534a;
    @NotNull

    /* renamed from: b */
    private final ImmersionViewPagerManager f42535b;
    @NotNull

    /* renamed from: c */
    private ImmersionAdapter f42536c;
    @NotNull

    /* renamed from: d */
    private final b f42537d;
    @Nullable

    /* renamed from: e */
    private BaseEpisode f42538e;
    @Nullable

    /* renamed from: f */
    private BaseEpisode f42539f;
    @Nullable

    /* renamed from: g */
    private BaseEpisode f42540g;

    /* renamed from: h */
    private int f42541h;

    /* renamed from: i */
    private int f42542i;

    /* renamed from: j */
    private int f42543j;

    /* renamed from: k */
    private int f42544k;
    @NotNull

    /* renamed from: l */
    private PlaySpeed f42545l;

    /* renamed from: m */
    private boolean f42546m;

    /* renamed from: n */
    private int f42547n;
    @NotNull

    /* renamed from: o */
    private final qt.a f42548o;

    /* renamed from: p */
    private int f42549p;

    /* compiled from: ImmersionEpisodeManager.kt */
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
            super(str, i10);
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

    /* compiled from: ImmersionEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImmersionEpisodeManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {

        /* compiled from: ImmersionEpisodeManager.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a {
            public static /* synthetic */ void a(b bVar, int i10, BaseEpisode baseEpisode, PlayResolution playResolution, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 4) != 0) {
                        playResolution = null;
                    }
                    bVar.e(i10, baseEpisode, playResolution);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onEpisodeEnablePlay");
            }
        }

        void a(int i10, @NotNull BaseEpisode baseEpisode);

        void b(@Nullable BaseEpisode baseEpisode, @NotNull BaseEpisode baseEpisode2, boolean z10);

        void c(boolean z10, @Nullable BaseEpisode baseEpisode, @NotNull BaseEpisode baseEpisode2);

        void d(@NotNull BaseEpisode baseEpisode, @NotNull PlayFailedReason playFailedReason, boolean z10, boolean z11);

        void e(int i10, @NotNull BaseEpisode baseEpisode, @Nullable PlayResolution playResolution);
    }

    public ImmersionEpisodeManager(@NotNull ImmersionParams params, @NotNull ImmersionViewPagerManager viewPagerManager, @NotNull ImmersionAdapter adapter, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(viewPagerManager, "viewPagerManager");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f42534a = params;
        this.f42535b = viewPagerManager;
        this.f42536c = adapter;
        this.f42537d = listener;
        this.f42544k = -1;
        this.f42545l = PlaySpeed.Companion.getPLAY_SPEED_1();
        this.f42546m = true;
        this.f42547n = -1;
        this.f42548o = d.b(false, 1, null);
        this.f42549p = -1;
    }

    private final void d(BaseEpisode baseEpisode) {
        this.f42537d.a(this.f42535b.p(), baseEpisode);
        this.f42541h = 0;
        this.f42542i = 0;
        this.f42543j = 0;
        this.f42544k = -1;
    }

    private final BaseEpisode e() {
        return this.f42536c.getItem(this.f42535b.o());
    }

    private final ModuleInfo g(BaseEpisode baseEpisode) {
        ModuleInfo moduleInfo = this.f42534a.getModuleInfo();
        if (moduleInfo != null) {
            if (baseEpisode.isTrailer()) {
                if (Intrinsics.areEqual(moduleInfo.getShortPlayCode(), String.valueOf(baseEpisode.getShortPlayId()))) {
                    return moduleInfo;
                }
            } else if (Intrinsics.areEqual(moduleInfo.getShortPlayCode(), baseEpisode.getShortPlayCode())) {
                return moduleInfo;
            }
            return null;
        }
        return moduleInfo;
    }

    private final int h(BaseEpisode baseEpisode) {
        ud.b bVar = ud.b.f68412a;
        int t02 = bVar.t0(baseEpisode.getId());
        if (t02 == 0) {
            t02 = ud.a.f68411a.j(baseEpisode.getId());
        }
        if (baseEpisode.getVideoDuration() > 0) {
            long j10 = t02;
            long j11 = 1000;
            if (j10 >= baseEpisode.getVideoDuration() * j11) {
                Logger.f41511a.e("ImmersionEpisodeManager", "playPosition(" + t02 + ") > episode.videoDuration(" + (baseEpisode.getVideoDuration() * j11) + "), reset playPosition to 0");
            } else if (Math.abs((baseEpisode.getVideoDuration() * j11) - j10) <= 2000) {
                Logger.f41511a.e("ImmersionEpisodeManager", "gap <=2000, reset playPosition to 0");
            } else {
                return t02;
            }
            bVar.E3(baseEpisode.getId(), 0);
            return 0;
        }
        return t02;
    }

    private final void j(BaseEpisode baseEpisode) {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("from", this.f42534a.getFrom());
        C.putString("status", "success");
        C.putString("scene", "immersion");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_request", C, 0L, 4, null);
    }

    public final Object k(BaseEpisode baseEpisode, int i10, c<? super Unit> cVar) {
        String targetUrl$default;
        Bundle bundle = new Bundle();
        bundle.putString("video_title", baseEpisode.getShortPlayName());
        bundle.putInt("video_percent", i10);
        bundle.putString("video_tags", baseEpisode.getGgVideoTags());
        bundle.putString("video_drama_genre", baseEpisode.getGgVideoDramaGenre());
        bundle.putString("is_vip", "99");
        EpisodeVideo parsedVideo = baseEpisode.getParsedVideo();
        if (parsedVideo != null && (targetUrl$default = EpisodeVideo.targetUrl$default(parsedVideo, 0, 1, null)) != null) {
            bundle.putString(CampaignEx.JSON_KEY_VIDEO_URL, StringsKt.I1(StringsKt.p1(targetUrl$default, "?", null, 2, null), 100));
        }
        EventManager.f42463a.q0("video_watch", bundle, -1L);
        return Unit.f60915a;
    }

    private final void l(BaseEpisode baseEpisode) {
        String str;
        EventManager eventManager = EventManager.f42463a;
        Bundle a10 = jk.b.a(jk.b.a(eventManager.C(baseEpisode), eventManager.w(this.f42534a.getActResource(), false)), eventManager.H(g(baseEpisode)));
        a10.putString("scene", "immersion");
        a10.putString("from", this.f42534a.getFrom());
        if (baseEpisode.getPrice() > 0) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        a10.putString("is_free", str);
        a10.putFloat("speed_level", this.f42545l.getValue());
        String str2 = "merge";
        if (this.f42547n != baseEpisode.getShortPlayId() && !Intrinsics.areEqual(String.valueOf(this.f42547n), baseEpisode.getShortPlayCode())) {
            if (baseEpisode.isTrailer() && baseEpisode.getBindShortPlayId() == this.f42547n) {
                a10.putString("logic", "nature");
            } else {
                if (!baseEpisode.isMergeShortPlay()) {
                    str2 = "random";
                }
                a10.putString("logic", str2);
            }
        } else {
            if (!baseEpisode.isMergeShortPlay()) {
                str2 = "nature";
            }
            a10.putString("logic", str2);
        }
        a10.putString("unlock_type", baseEpisode.m4705getUnlockType());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_play", a10, 0L, 4, null);
    }

    private final void m(BaseEpisode baseEpisode) {
        int i10;
        int i11;
        int i12;
        if (baseEpisode.isLocked()) {
            return;
        }
        TurboLinkRepo turboLinkRepo = TurboLinkRepo.f43851a;
        HashMap hashMap = new HashMap();
        int i13 = this.f42543j;
        if (i13 < 1000) {
            i10 = 1;
        } else {
            i10 = i13 / 1000;
        }
        hashMap.put("duration", String.valueOf(i10));
        Unit unit = Unit.f60915a;
        turboLinkRepo.b("tbo_play_time", hashMap);
        int i14 = this.f42541h;
        String str = "1";
        if (i14 > 0 && this.f42542i / i14 > 0.9d) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("episode", "1");
            turboLinkRepo.b("tbo_play_series", hashMap2);
            if (baseEpisode.isLastEpisode()) {
                HashMap hashMap3 = new HashMap();
                hashMap3.put("watch_count", "1");
                turboLinkRepo.b("tbo_reel_play", hashMap3);
            }
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        int i15 = this.f42543j;
        if (i15 < 1000) {
            i11 = 1;
        } else {
            i11 = i15 / 1000;
        }
        C.putInt("seconds", i11);
        C.putString("scene", "immersion");
        C.putString("unlock_type", baseEpisode.m4705getUnlockType());
        EventManager.s0(eventManager, "play_time_real", C, 0L, 4, null);
        Bundle C2 = eventManager.C(baseEpisode);
        int i16 = this.f42542i;
        if (i16 < 1000) {
            i12 = 1;
        } else {
            i12 = i16 / 1000;
        }
        C2.putInt("seconds", i12);
        C2.putString("scene", "immersion");
        C2.putString("unlock_type", baseEpisode.m4705getUnlockType());
        EventManager.s0(eventManager, "play_time_schedule", C2, 0L, 4, null);
        Bundle a10 = jk.b.a(jk.b.a(eventManager.C(baseEpisode), eventManager.H(g(baseEpisode))), eventManager.w(this.f42534a.getActResource(), false));
        int i17 = this.f42541h;
        if (i17 != 0) {
            a10.putFloat("watch_progress_percent", w.f51779a.b(((this.f42542i * 1.0f) / i17) * 100, 2));
        } else {
            a10.putFloat("watch_progress_percent", 0.0f);
        }
        a10.putString("scene", "immersion");
        a10.putString("from", this.f42534a.getFrom());
        if (baseEpisode.getPrice() <= 0) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        a10.putString("is_free", str);
        a10.putFloat("speed_level", this.f42545l.getValue());
        String str2 = "merge";
        if (this.f42547n != baseEpisode.getShortPlayId() && !Intrinsics.areEqual(String.valueOf(this.f42547n), baseEpisode.getShortPlayCode())) {
            if (baseEpisode.isTrailer() && baseEpisode.getBindShortPlayId() == this.f42547n) {
                a10.putString("logic", "nature");
            } else {
                if (!baseEpisode.isMergeShortPlay()) {
                    str2 = "random";
                }
                a10.putString("logic", str2);
            }
        } else {
            if (!baseEpisode.isMergeShortPlay()) {
                str2 = "nature";
            }
            a10.putString("logic", str2);
        }
        a10.putString("unlock_type", baseEpisode.m4705getUnlockType());
        EventManager.s0(eventManager, "playback_progress_track", a10, 0L, 4, null);
    }

    public static /* synthetic */ void v(ImmersionEpisodeManager immersionEpisodeManager, PlayResolution playResolution, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            playResolution = null;
        }
        immersionEpisodeManager.u(playResolution);
    }

    private final void w(BaseEpisode baseEpisode) {
        if (baseEpisode.isTrailer() || baseEpisode.isLocked()) {
            return;
        }
        if (Intrinsics.areEqual(this.f42534a.getFrom(), Constants.DEEPLINK)) {
            if (!Intrinsics.areEqual(baseEpisode.getShortPlayCode(), ud.b.f68412a.b0()) && this.f42542i < 5000) {
                return;
            }
        } else if (this.f42542i < 5000) {
            return;
        }
        EpisodeRepo.f44056a.x(baseEpisode, this.f42542i / 1000);
        String pushId = this.f42534a.getPushId();
        if (pushId != null) {
            PushRepo.f44374a.D(2, pushId);
        }
        this.f42534a.setPushId(null);
    }

    private final void y(BaseEpisode baseEpisode, boolean z10, boolean z11, PlayResolution playResolution) {
        if (baseEpisode.isLocked()) {
            l(baseEpisode);
            this.f42537d.d(baseEpisode, PlayFailedReason.REASON_LOCKED, z10, z11);
            return;
        }
        j(baseEpisode);
        String videoUrl = baseEpisode.getVideoUrl();
        if (videoUrl != null && videoUrl.length() != 0) {
            l(baseEpisode);
            if (baseEpisode.isVideoExpired()) {
                this.f42537d.d(baseEpisode, PlayFailedReason.REASON_URL_EXPIRED, z10, z11);
                return;
            } else {
                this.f42537d.e(h(baseEpisode), baseEpisode, playResolution);
                return;
            }
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("from", this.f42534a.getFrom());
        C.putString("status", "url null or empty");
        C.putString("scene", "immersion");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_play_error", C, 0L, 4, null);
        this.f42537d.d(baseEpisode, PlayFailedReason.REASON_INVALID_URL, z10, z11);
    }

    static /* synthetic */ void z(ImmersionEpisodeManager immersionEpisodeManager, BaseEpisode baseEpisode, boolean z10, boolean z11, PlayResolution playResolution, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            playResolution = null;
        }
        immersionEpisodeManager.y(baseEpisode, z10, z11, playResolution);
    }

    public final void c(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        String shortPlayCode = episode.getShortPlayCode();
        if (shortPlayCode != null && shortPlayCode.length() != 0) {
            int totalEpisodes = episode.getTotalEpisodes();
            int episodeNum = episode.getEpisodeNum();
            if (totalEpisodes > 0 && episodeNum >= 0) {
                CoroutineUtil.l(CoroutineUtil.f48072a, "checkFirebaseWatchVideo", false, new ImmersionEpisodeManager$checkFirebaseWatchVideo$1(this, shortPlayCode, totalEpisodes, episodeNum, episode, null), 2, null);
            }
        }
    }

    @Nullable
    public final BaseEpisode f() {
        return this.f42540g;
    }

    public final int i() {
        return this.f42543j;
    }

    public final void n(@NotNull BaseEpisode episode) {
        int i10;
        int i11;
        boolean z10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        if (episode.isLocked()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        boolean z11 = false;
        Bundle a10 = jk.b.a(jk.b.a(eventManager.C(episode), eventManager.H(g(episode))), eventManager.w(this.f42534a.getActResource(), false));
        a10.putString("scene", "immersion");
        a10.putString("from", this.f42534a.getFrom());
        int i12 = this.f42542i;
        int i13 = 1;
        if (i12 < 1000) {
            i10 = 1;
        } else {
            i10 = i12 / 1000;
        }
        a10.putInt("seconds", i10);
        a10.putString("unlock_type", episode.m4705getUnlockType());
        int i14 = this.f42543j;
        if (i14 >= 1000) {
            i13 = i14 / 1000;
        }
        a10.putInt("real_seconds", i13);
        BaseEpisode baseEpisode = this.f42539f;
        int i15 = -1;
        if (baseEpisode != null) {
            i11 = baseEpisode.getShortPlayId();
        } else {
            i11 = -1;
        }
        BaseEpisode baseEpisode2 = this.f42539f;
        String str = (baseEpisode2 == null || (str = baseEpisode2.getShortPlayCode()) == null) ? "" : "";
        BaseEpisode baseEpisode3 = this.f42539f;
        if (baseEpisode3 != null) {
            z10 = baseEpisode3.isMergeShortPlay();
        } else {
            z10 = false;
        }
        BaseEpisode baseEpisode4 = this.f42539f;
        if (baseEpisode4 != null) {
            i15 = baseEpisode4.getBindShortPlayId();
        }
        BaseEpisode baseEpisode5 = this.f42539f;
        if (baseEpisode5 != null) {
            z11 = baseEpisode5.isTrailer();
        }
        a10.putString("next_reel_id", str);
        int i16 = this.f42547n;
        String str2 = "merge";
        if (i16 != i11 && !Intrinsics.areEqual(String.valueOf(i16), str)) {
            if (z11 && i15 == this.f42547n) {
                a10.putString("logic", "nature");
            } else {
                if (!z10) {
                    str2 = "random";
                }
                a10.putString("logic", str2);
            }
        } else {
            if (!z10) {
                str2 = "nature";
            }
            a10.putString("logic", str2);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_cut", a10, 0L, 4, null);
    }

    public final void o(boolean z10, boolean z11) {
        Integer num;
        Integer num2;
        BaseEpisode baseEpisode;
        boolean z12;
        Integer num3;
        BaseEpisode e10 = e();
        Integer num4 = null;
        if (e10 != null) {
            num = Integer.valueOf(e10.getId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f42540g;
        if (baseEpisode2 != null) {
            num2 = Integer.valueOf(baseEpisode2.getId());
        } else {
            num2 = null;
        }
        if (Intrinsics.areEqual(num, num2)) {
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("notifyEpisodeChanged failed -> currentEpisodeId(");
            if (e10 != null) {
                num3 = Integer.valueOf(e10.getId());
            } else {
                num3 = null;
            }
            sb2.append(num3);
            sb2.append(") mCurrentEpisode(");
            BaseEpisode baseEpisode3 = this.f42540g;
            if (baseEpisode3 != null) {
                num4 = Integer.valueOf(baseEpisode3.getId());
            }
            sb2.append(num4);
            sb2.append(')');
            logger.e("ImmersionEpisodeManager", sb2.toString());
            return;
        }
        this.f42539f = e10;
        BaseEpisode baseEpisode4 = this.f42540g;
        this.f42538e = baseEpisode4;
        if (baseEpisode4 != null) {
            w(baseEpisode4);
            n(baseEpisode4);
            m(baseEpisode4);
            d(baseEpisode4);
        }
        if (e10 == null) {
            return;
        }
        this.f42540g = e10;
        BaseEpisode baseEpisode5 = this.f42538e;
        int i10 = 1;
        if (baseEpisode5 == null || ((baseEpisode5 != null && baseEpisode5.isTrailer()) || e10.isTrailer() || (baseEpisode = this.f42538e) == null || baseEpisode.getShortPlayId() != e10.getShortPlayId())) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12) {
            this.f42537d.b(this.f42538e, e10, this.f42546m);
            this.f42546m = false;
            if (this.f42547n == -1) {
                if (e10.getShortPlayId() == this.f42534a.getShortsInfo().getShortsId()) {
                    i10 = e10.getShortPlayId();
                }
                this.f42547n = i10;
            }
        }
        this.f42537d.c(z12, this.f42538e, e10);
        z(this, e10, z10, z11, null, 8, null);
    }

    public final void p() {
        BaseEpisode baseEpisode;
        String videoUrl;
        BaseEpisode e10 = e();
        if (e10 != null && (baseEpisode = this.f42540g) != null && e10.getId() == baseEpisode.getId()) {
            this.f42540g = e10;
            if (e10.getUnlockJustNow() && (videoUrl = e10.getVideoUrl()) != null && videoUrl.length() != 0) {
                Logger logger = Logger.f41511a;
                logger.h("ImmersionEpisodeManager", "notifyEpisodeUnlocked -> episodeNum(" + e10.getEpisodeNum() + ") episodeId(" + e10.getId() + ')');
                e10.setUnlockJustNow(false);
                l(e10);
                b.a.a(this.f42537d, h(e10), e10, null, 4, null);
            }
        }
    }

    public final void q(@NotNull PlaySpeed playSpeed) {
        Intrinsics.checkNotNullParameter(playSpeed, "playSpeed");
        this.f42545l = playSpeed;
    }

    public final void r(int i10, int i11) {
        int i12;
        BaseEpisode baseEpisode;
        this.f42541h = i11;
        this.f42542i = i10;
        int i13 = this.f42543j + 200;
        this.f42543j = i13;
        if (i13 < 1000) {
            i12 = 1;
        } else {
            i12 = i13 / 1000;
        }
        if (i12 % 5 == 0 && i12 != this.f42549p) {
            this.f42549p = i12;
            ud.b bVar = ud.b.f68412a;
            bVar.m5(bVar.Z1() + 5);
        }
        BaseEpisode baseEpisode2 = this.f42540g;
        if (baseEpisode2 != null) {
            ud.b bVar2 = ud.b.f68412a;
            int id2 = baseEpisode2.getId();
            if (i10 == i11) {
                i10 = 0;
            }
            bVar2.E3(id2, i10);
        }
        e.f2616a.h().i();
        ImmersionRepo.f44129a.p();
        if (vi.e.f68955a.d() && (baseEpisode = this.f42540g) != null && !baseEpisode.isFreeEpisode()) {
            ud.b bVar3 = ud.b.f68412a;
            bVar3.k5(bVar3.X1() + 200);
        }
    }

    public final void s(int i10) {
        this.f42544k = i10;
    }

    public final void t() {
        Logger.f41511a.h("ImmersionEpisodeManager", "release");
        BaseEpisode baseEpisode = this.f42540g;
        if (baseEpisode != null) {
            w(baseEpisode);
            m(baseEpisode);
        }
    }

    public final void u(@Nullable PlayResolution playResolution) {
        BaseEpisode baseEpisode = this.f42540g;
        if (baseEpisode != null) {
            y(baseEpisode, false, false, playResolution);
        }
    }

    public final void x(@NotNull ImmersionAdapter adapter, @NotNull ImmersionActivity.ResetReason reason) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.f42536c = adapter;
        if (reason == ImmersionActivity.ResetReason.ACCOUNT_CHANGED || reason == ImmersionActivity.ResetReason.URL_EXPIRED) {
            this.f42540g = null;
            this.f42538e = null;
        }
    }
}
