package com.startshorts.androidplayer.manager.immersion.feature;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import com.bytedance.vodsetting.Module;
import com.hades.aar.activity.IDActivity;
import com.inmobi.commons.core.configs.CrashConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.Resolution;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.h0;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayResolutionFeature.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPlayResolutionFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayResolutionFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/PlayResolutionFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,482:1\n1755#2,3:483\n*S KotlinDebug\n*F\n+ 1 PlayResolutionFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/PlayResolutionFeature\n*L\n113#1:483,3\n*E\n"})
/* loaded from: classes6.dex */
public final class n implements IImmersionFeature {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f42638l = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private static boolean f42639m;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f42640n;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private PlayResolution f42641a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private PlayResolution f42642b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private PlayResolution f42643c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Integer f42644d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f42645e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f42646f;

    /* renamed from: g  reason: collision with root package name */
    private long f42647g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private b f42648h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f42649i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Integer f42650j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private ImmersionJobsManager f42651k;

    /* compiled from: PlayResolutionFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return n.f42639m;
        }

        private a() {
        }
    }

    /* compiled from: PlayResolutionFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(int i10, @NotNull PlayResolution playResolution, @NotNull PlayResolution playResolution2, @Nullable Integer num);

        void b();

        void c(@NotNull String str);

        void d();

        void e(@NotNull Function0<Unit> function0);

        void f(@Nullable String str);

        void g(@NotNull PlayResolution playResolution, @NotNull String str);
    }

    /* compiled from: PlayResolutionFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_EPISODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PREPARED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IImmersionFeature.MessageType.CLICK_RESOLUTION_OF_MENU.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IImmersionFeature.MessageType.CLICK_RESOLUTION_OF_MENU_DOWNLOAD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_RESOLUTION_TIMEOUT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_RESOLUTION_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_BUFFER_START.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_ERROR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[IImmersionFeature.MessageType.USER_SUBSCRIBED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public n() {
        PlayResolution play_resolution_auto;
        PlayResolution.Companion companion = PlayResolution.Companion;
        this.f42641a = companion.getPLAY_RESOLUTION_AUTO();
        this.f42646f = true;
        this.f42647g = -1L;
        if (AccountRepo.f43052a.z0()) {
            play_resolution_auto = companion.getPLAY_RESOLUTION_1080P();
        } else {
            play_resolution_auto = companion.getPLAY_RESOLUTION_AUTO();
        }
        this.f42641a = play_resolution_auto;
    }

    private final void g(BaseEpisode baseEpisode, final k kVar) {
        int i10;
        Object obj;
        Integer num;
        int i11;
        final PlayResolution o10 = o(kVar);
        pf.k kVar2 = pf.k.f64864a;
        PlayResolution i12 = kVar2.i(baseEpisode);
        if (i12 != null) {
            i10 = i12.getResolutionValue();
        } else {
            i10 = 720;
        }
        HashMap<String, Object> a10 = kVar.a();
        Integer num2 = null;
        if (a10 != null) {
            obj = a10.get("player_resolution");
        } else {
            obj = null;
        }
        if (obj instanceof Integer) {
            num = (Integer) obj;
        } else {
            num = null;
        }
        if (num != null) {
            i10 = num.intValue();
        }
        final PlayResolution k10 = kVar2.k(baseEpisode, i10);
        if (k10 != null) {
            i11 = k10.getResolutionValue();
        } else {
            i11 = 0;
        }
        if (i11 >= i10) {
            Logger.f41511a.h("PlayResolutionFeature", "handleCatonWhenBufferStart ignore -> downgradeResolution=null");
            return;
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handleCatonWhenBufferStart -> downgradeResolutionDelay,downgradeResolution=");
        if (k10 != null) {
            num2 = Integer.valueOf(k10.getResolutionValue());
        }
        sb2.append(num2);
        logger.h("PlayResolutionFeature", sb2.toString());
        ImmersionJobsManager immersionJobsManager = this.f42651k;
        if (immersionJobsManager != null) {
            ImmersionJobsManager.e(immersionJobsManager, ImmersionJobsManager.JobType.DOWNGRADE_RESOLUTION_WHEN_CATON, CrashConfig.DEFAULT_ANR_WATCHDOG_INTERVAL, null, new Function0() { // from class: hf.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit h10;
                    h10 = com.startshorts.androidplayer.manager.immersion.feature.n.h(com.startshorts.androidplayer.manager.immersion.feature.n.this, o10, k10, kVar);
                    return h10;
                }
            }, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(final n nVar, PlayResolution playResolution, final PlayResolution playResolution2, final k kVar) {
        ComponentActivity componentActivity;
        ImmersionJobsManager immersionJobsManager = nVar.f42651k;
        if (immersionJobsManager != null) {
            immersionJobsManager.b(ImmersionJobsManager.JobType.CATON_TOASTER);
        }
        if (playResolution != null && playResolution.isAuto()) {
            nVar.w(4, PlayResolution.Companion.getPLAY_RESOLUTION_AUTO(), playResolution2, kVar.a());
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            BaseActivity baseActivity = null;
            if (d10 != null) {
                componentActivity = (IDActivity) d10.get();
            } else {
                componentActivity = null;
            }
            if (componentActivity instanceof BaseActivity) {
                baseActivity = (BaseActivity) componentActivity;
            }
            if (baseActivity != null) {
                baseActivity.x(R$string.immersion_activity_downgrade_resolution_due_to_net_caton_auto);
            }
        } else {
            b bVar = nVar.f42648h;
            if (bVar != null) {
                bVar.e(new Function0() { // from class: hf.z
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit i10;
                        i10 = com.startshorts.androidplayer.manager.immersion.feature.n.i(com.startshorts.androidplayer.manager.immersion.feature.n.this, playResolution2, kVar);
                        return i10;
                    }
                });
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(n nVar, PlayResolution playResolution, k kVar) {
        nVar.w(5, playResolution, playResolution, kVar.a());
        return Unit.f60915a;
    }

    private final boolean q(int i10) {
        return CollectionsKt.q(1, 5).contains(Integer.valueOf(i10));
    }

    private final void r(BaseEpisode baseEpisode, Integer num) {
        long L;
        long j10 = 1;
        if (this.f42647g == -1) {
            L = 1;
        } else {
            L = (DeviceUtil.f48146a.L() - this.f42647g) / 1000;
        }
        if (L >= 1) {
            j10 = L;
        }
        this.f42647g = -1L;
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("status", "success");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        sb2.append('p');
        C.putString("clarity_level", sb2.toString());
        C.putLong("duration", j10);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "clarity_switch", C, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(n nVar, String str) {
        b bVar = nVar.f42648h;
        if (bVar != null) {
            bVar.f(str);
        }
    }

    private final void t(final int i10, final String str) {
        h0.f51735a.e(new Runnable() { // from class: hf.x
            @Override // java.lang.Runnable
            public final void run() {
                com.startshorts.androidplayer.manager.immersion.feature.n.u(i10, this, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(int i10, n nVar, String str) {
        Logger logger = Logger.f41511a;
        logger.h("PlayResolutionFeature", "onResolutionChanged -> from(" + i10 + ") selectedResolution(" + nVar.f42641a + ") resolutionStr(" + str + ')');
        b bVar = nVar.f42648h;
        if (bVar != null) {
            bVar.g(nVar.f42641a, str);
        }
    }

    private final void w(int i10, PlayResolution playResolution, PlayResolution playResolution2, HashMap<String, Object> hashMap) {
        Object obj;
        BaseEpisode baseEpisode;
        PlayResolution playResolution3;
        String str;
        String str2;
        String str3;
        IDActivity iDActivity;
        BaseActivity baseActivity;
        if (playResolution == null) {
            return;
        }
        if (hashMap != null) {
            obj = hashMap.get("episode");
        } else {
            obj = null;
        }
        if (obj instanceof BaseEpisode) {
            baseEpisode = (BaseEpisode) obj;
        } else {
            baseEpisode = null;
        }
        this.f42643c = this.f42641a;
        this.f42641a = playResolution;
        boolean q10 = q(i10);
        this.f42646f = !q10;
        if (q10) {
            this.f42647g = DeviceUtil.f48146a.L();
        }
        if (playResolution2 == null) {
            if (!playResolution.isAuto() || (playResolution3 = pf.k.f64864a.i(baseEpisode)) == null) {
                playResolution3 = playResolution;
            }
        } else {
            playResolution3 = playResolution2;
        }
        Logger logger = Logger.f41511a;
        logger.h("PlayResolutionFeature", "switchResolution -> from(" + i10 + ") mLastSelectedResolution(" + this.f42643c + ") mCurrentSelectedResolution(" + this.f42641a + ") playableResolution(" + playResolution3 + ") mPlayingResolutionValue(" + this.f42644d + ')');
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        String str4 = "auto";
        if (!q(i10)) {
            str = "auto";
        } else {
            str = "setting";
        }
        C.putString("status", str);
        if (playResolution.isAuto()) {
            str2 = "1";
        } else {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        C.putString("is_auto", str2);
        if (!playResolution3.isAuto()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(playResolution3.getResolutionValue());
            sb2.append('p');
            str4 = sb2.toString();
        }
        C.putString("clarity_level", str4);
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        str3 = "user";
                    } else {
                        str3 = "carton_click";
                    }
                } else {
                    str3 = "carton_auto";
                }
            } else {
                str3 = "timeout";
            }
        } else {
            str3 = "error";
        }
        C.putString("from", str3);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "clarity", C, 0L, 4, null);
        logger.h("PlayResolutionFeature", "onSwitchResolution -> isManually(" + q10 + ") selectedResolution(" + playResolution + ") playableResolution(" + playResolution2 + ')');
        b bVar = this.f42648h;
        if (bVar != null) {
            bVar.a(i10, playResolution, playResolution3, this.f42650j);
        }
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null) {
            iDActivity = d10.get();
        } else {
            iDActivity = null;
        }
        if (iDActivity instanceof BaseActivity) {
            baseActivity = (BaseActivity) iDActivity;
        } else {
            baseActivity = null;
        }
        if (baseActivity != null) {
            t(3, playResolution3.getLabel(baseActivity));
        }
        if (q10) {
            Integer num = this.f42644d;
            int a10 = jk.p.a(playResolution3.getResolution());
            if (num != null && num.intValue() == a10) {
                if (baseActivity != null) {
                    if (playResolution.isAuto()) {
                        baseActivity.x(R$string.immersion_activity_switch_resolution_auto_tip);
                    } else {
                        baseActivity.y(baseActivity.getString(R$string.immersion_activity_switch_resolution_tip, String.valueOf(playResolution.getResolutionValue())));
                    }
                }
                r(baseEpisode, this.f42644d);
                b bVar2 = this.f42648h;
                if (bVar2 != null) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f42644d);
                    sb3.append('p');
                    bVar2.c(sb3.toString());
                }
            }
        } else if (i10 == 2 && baseActivity != null) {
            baseActivity.y(baseActivity.getString(R$string.immersion_activity_resolution_auto_select_tip, String.valueOf(playResolution3.getResolutionValue())));
        }
    }

    static /* synthetic */ void x(n nVar, int i10, PlayResolution playResolution, PlayResolution playResolution2, HashMap hashMap, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            playResolution2 = null;
        }
        nVar.w(i10, playResolution, playResolution2, hashMap);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        b bVar;
        PlayResolution playResolution;
        boolean z10;
        IDActivity iDActivity;
        PlayResolution playResolution2;
        char c10;
        int a10;
        final String parseVideoUrl;
        PlayResolution i10;
        Intrinsics.checkNotNullParameter(message, "message");
        int i11 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        String str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        r15 = null;
        r15 = null;
        PlayResolution playResolution3 = null;
        switch (i11) {
            case 1:
            case 2:
                this.f42649i = false;
                this.f42650j = null;
                if (message.b() != IImmersionFeature.MessageType.SWITCH_EPISODE || (bVar = this.f42648h) == null) {
                    return;
                }
                bVar.b();
                return;
            case 3:
                this.f42645e = false;
                this.f42646f = true;
                this.f42647g = -1L;
                this.f42643c = null;
                BaseEpisode j10 = j(message);
                HashMap<String, Object> a11 = message.a();
                Object obj = a11 != null ? a11.get("expect_resolution_if_auto") : null;
                this.f42642b = obj instanceof PlayResolution ? (PlayResolution) obj : null;
                List<PlayResolution> m10 = pf.k.m(pf.k.f64864a, j10, false, 2, null);
                if (m10.size() == 1) {
                    playResolution = m10.get(0);
                } else if (this.f42641a.isAuto()) {
                    playResolution = this.f42641a;
                } else {
                    List<PlayResolution> list = m10;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        for (PlayResolution playResolution4 : list) {
                            if (playResolution4.getResolutionValue() == this.f42641a.getResolutionValue()) {
                                playResolution = this.f42641a;
                            }
                        }
                    }
                    playResolution = PlayResolution.Companion.getPLAY_RESOLUTION_AUTO();
                }
                Logger logger = Logger.f41511a;
                logger.h("PlayResolutionFeature", "playEpisode -> currentSelectedResolution(" + this.f42641a + ") playableResolution(" + playResolution + ')');
                this.f42641a = playResolution;
                WeakReference<IDActivity> d10 = aa.a.f321a.d();
                if (d10 == null || (iDActivity = d10.get()) == null) {
                    z10 = true;
                } else {
                    if (!playResolution.isAuto() || (playResolution2 = pf.k.f64864a.j(m10)) == null) {
                        playResolution2 = playResolution;
                    }
                    String label = playResolution2.getLabel(iDActivity);
                    z10 = true;
                    t(1, label);
                }
                if (playResolution.isAuto()) {
                    return;
                }
                this.f42645e = z10;
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(j10);
                C.putString("status", "auto");
                C.putString("is_auto", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(playResolution.getResolutionValue());
                sb2.append('p');
                C.putString("clarity_level", sb2.toString());
                C.putString("from", "play");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "clarity", C, 0L, 4, null);
                return;
            case 4:
                HashMap<String, Object> a12 = message.a();
                Object obj2 = a12 != null ? a12.get("player_resolution_before_downgrade") : null;
                Resolution p10 = p(message);
                BaseEpisode j11 = j(message);
                Logger logger2 = Logger.f41511a;
                logger2.h("PlayResolutionFeature", "playerPrepared -> resolutionBeforeDowngrade(" + obj2 + ") currentResolution(" + p10 + ") userSelectedResolution(" + this.f42641a + ')');
                if (this.f42645e || !this.f42641a.isAuto() || obj2 == null || p10 == null || obj2 == p10) {
                    return;
                }
                this.f42645e = true;
                EventManager eventManager2 = EventManager.f42463a;
                Bundle C2 = eventManager2.C(j11);
                C2.putString("status", "auto");
                C2.putString("is_auto", "1");
                C2.putString("clarity_level", String.valueOf(p10));
                C2.putString("from", "abr");
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager2, "clarity", C2, 0L, 4, null);
                return;
            case 5:
                PlayResolution o10 = o(message);
                if (o10 == null) {
                    return;
                }
                if (o10.getResolutionValue() == 1080 && !pf.k.f64864a.s()) {
                    b bVar2 = this.f42648h;
                    if (bVar2 != null) {
                        bVar2.d();
                        return;
                    }
                    return;
                }
                x(this, 1, o10, null, message.a(), 4, null);
                return;
            case 6:
                PlayResolution o11 = o(message);
                if (o11 == null) {
                    return;
                }
                x(this, 1, o11, null, message.a(), 4, null);
                return;
            case 7:
                x(this, 3, this.f42643c, null, message.a(), 4, null);
                return;
            case 8:
                Resolution p11 = p(message);
                if (p11 == null) {
                    return;
                }
                BaseEpisode j12 = j(message);
                if (!this.f42645e) {
                    this.f42645e = true;
                    EventManager eventManager3 = EventManager.f42463a;
                    Bundle C3 = eventManager3.C(j12);
                    C3.putString("status", "auto");
                    if (this.f42641a.isAuto()) {
                        str = "1";
                    }
                    C3.putString("is_auto", str);
                    C3.putString("clarity_level", String.valueOf(p11));
                    C3.putString("from", "play");
                    Unit unit3 = Unit.f60915a;
                    EventManager.s0(eventManager3, "clarity", C3, 0L, 4, null);
                }
                int a13 = jk.p.a(p11);
                Logger logger3 = Logger.f41511a;
                logger3.h("PlayResolutionFeature", "playerResolutionChanged -> mPlayingResolutionValue(" + this.f42644d + ") newResolutionValue(" + a13 + ')');
                if (!this.f42646f) {
                    this.f42646f = true;
                    Integer num = this.f42644d;
                    if (num == null || a13 != num.intValue()) {
                        WeakReference<IDActivity> d11 = aa.a.f321a.d();
                        IDActivity iDActivity2 = d11 != null ? d11.get() : null;
                        BaseActivity baseActivity = iDActivity2 instanceof BaseActivity ? (BaseActivity) iDActivity2 : null;
                        if (baseActivity != null) {
                            if (this.f42641a.isAuto()) {
                                baseActivity.x(R$string.immersion_activity_switch_resolution_auto_tip);
                            } else {
                                baseActivity.y(baseActivity.getString(R$string.immersion_activity_switch_resolution_tip, jk.p.b(p11)));
                            }
                        }
                        r(j12, Integer.valueOf(a13));
                    }
                    b bVar3 = this.f42648h;
                    if (bVar3 != null) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(a13);
                        c10 = 'p';
                        sb3.append('p');
                        bVar3.c(sb3.toString());
                        this.f42644d = Integer.valueOf(a13);
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(a13);
                        sb4.append(c10);
                        t(2, sb4.toString());
                        return;
                    }
                }
                c10 = 'p';
                this.f42644d = Integer.valueOf(a13);
                StringBuilder sb42 = new StringBuilder();
                sb42.append(a13);
                sb42.append(c10);
                t(2, sb42.toString());
                return;
            case 9:
                this.f42651k = k(message);
                BaseEpisode j13 = j(message);
                HashMap<String, Object> a14 = message.a();
                Object obj3 = a14 != null ? a14.get(Module.ResponseKey.Code) : null;
                Integer num2 = obj3 instanceof Integer ? (Integer) obj3 : null;
                HashMap<String, Object> a15 = message.a();
                Object obj4 = a15 != null ? a15.get("after_first_frame") : null;
                Integer num3 = obj4 instanceof Integer ? (Integer) obj4 : null;
                HashMap<String, Object> a16 = message.a();
                Object obj5 = a16 != null ? a16.get(TextureRenderKeys.KEY_IS_ACTION) : null;
                Integer num4 = obj5 instanceof Integer ? (Integer) obj5 : null;
                PlayResolution i12 = pf.k.f64864a.i(j13);
                int resolutionValue = i12 != null ? i12.getResolutionValue() : 720;
                if (j13 != null && num2 != null && num4 != null) {
                    if (num2.intValue() == 2) {
                        if (!this.f42641a.isAuto()) {
                            resolutionValue = this.f42641a.getResolutionValue();
                        }
                    } else if (this.f42641a.isAuto()) {
                        Integer num5 = this.f42644d;
                        if (num5 != null) {
                            resolutionValue = num5.intValue();
                        }
                    } else {
                        Integer num6 = this.f42644d;
                        resolutionValue = num6 != null ? num6.intValue() : this.f42641a.getResolutionValue();
                    }
                    EventManager eventManager4 = EventManager.f42463a;
                    Bundle C4 = eventManager4.C(j13);
                    C4.putInt(Module.ResponseKey.Code, num2.intValue());
                    C4.putInt("after_first_frame", num3 != null ? num3.intValue() : -1);
                    C4.putInt(TextureRenderKeys.KEY_IS_ACTION, num4.intValue());
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(resolutionValue);
                    sb5.append('p');
                    C4.putString("clarity_level", sb5.toString());
                    C4.putString("scene", "immersion");
                    Unit unit4 = Unit.f60915a;
                    EventManager.s0(eventManager4, "reel_play_buffering", C4, 0L, 4, null);
                    if (f42640n || (num2.intValue() == 0 && num4.intValue() == 0)) {
                        g(j13, message);
                        return;
                    }
                    return;
                }
                Logger.f41511a.e("PlayResolutionFeature", "notify -> episode or code or afterFirstFrame or action is null");
                return;
            case 10:
                this.f42649i = true;
                HashMap<String, Object> a17 = message.a();
                Object obj6 = a17 != null ? a17.get("err_code") : null;
                String str2 = obj6 instanceof String ? (String) obj6 : null;
                BaseEpisode j14 = j(message);
                if ((Intrinsics.areEqual(str2, "-9999") || Intrinsics.areEqual(str2, "-1")) && j14 != null) {
                    ud.b.f68412a.E3(j14.getId(), 0);
                    ud.a.f68411a.k0(j14.getId(), 0);
                }
                Resolution p12 = p(message);
                if (p12 == null) {
                    if (this.f42641a.isAuto()) {
                        PlayResolution i13 = pf.k.f64864a.i(j14);
                        a10 = i13 != null ? i13.getResolutionValue() : -1;
                    } else {
                        a10 = this.f42641a.getResolutionValue();
                    }
                } else {
                    a10 = jk.p.a(p12);
                }
                if (a10 == -1) {
                    parseVideoUrl = "";
                } else {
                    parseVideoUrl = j14 != null ? j14.parseVideoUrl(a10) : null;
                }
                Logger logger4 = Logger.f41511a;
                logger4.e("PlayResolutionFeature", "onError -> playErrorUrl(" + parseVideoUrl + ") playErrorResolutionValue(" + a10 + "p)");
                EventManager eventManager5 = EventManager.f42463a;
                Bundle C5 = eventManager5.C(j14);
                C5.putString("scene", "immersion");
                C5.putString("err_msg", str2);
                C5.putString(CampaignEx.JSON_KEY_VIDEO_URL, parseVideoUrl);
                StringBuilder sb6 = new StringBuilder();
                sb6.append(a10);
                sb6.append('p');
                C5.putString("clarity_level", sb6.toString());
                C5.putString("userNetworkType", DeviceUtil.f48146a.A());
                Unit unit5 = Unit.f60915a;
                EventManager.s0(eventManager5, "reel_play_fail", C5, 0L, 4, null);
                if (this.f42650j == null) {
                    this.f42650j = Integer.valueOf(a10);
                }
                if (j14 != null && a10 != -1) {
                    PlayResolution k10 = pf.k.f64864a.k(j14, a10);
                    if (!Intrinsics.areEqual(k10 != null ? Integer.valueOf(k10.getResolutionValue()) : null, this.f42650j)) {
                        playResolution3 = k10;
                    }
                }
                if (playResolution3 != null) {
                    w(2, PlayResolution.Companion.getPLAY_RESOLUTION_AUTO(), playResolution3, message.a());
                    return;
                } else {
                    h0.f51735a.e(new Runnable() { // from class: hf.w
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.startshorts.androidplayer.manager.immersion.feature.n.s(com.startshorts.androidplayer.manager.immersion.feature.n.this, parseVideoUrl);
                        }
                    });
                    return;
                }
            case 11:
                BaseEpisode j15 = j(message);
                String videoUrl = j15 != null ? j15.getVideoUrl() : null;
                if (videoUrl == null || videoUrl.length() == 0 || (i10 = pf.k.f64864a.i(j15)) == null || i10.getResolutionValue() != 1080) {
                    return;
                }
                x(this, 1, PlayResolution.Companion.getPLAY_RESOLUTION_1080P(), null, message.a(), 4, null);
                return;
            default:
                return;
        }
    }

    @Nullable
    public BaseEpisode j(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Nullable
    public ImmersionJobsManager k(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    @NotNull
    public final PlayResolution l() {
        return this.f42641a;
    }

    @Nullable
    public final PlayResolution m() {
        return this.f42642b;
    }

    @Nullable
    public final Integer n() {
        return this.f42644d;
    }

    @Nullable
    public PlayResolution o(@NotNull k kVar) {
        return IImmersionFeature.a.d(this, kVar);
    }

    @Nullable
    public Resolution p(@NotNull k kVar) {
        return IImmersionFeature.a.e(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.PLAY_RESOLUTION;
    }

    public final void v(@Nullable b bVar) {
        this.f42648h = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
