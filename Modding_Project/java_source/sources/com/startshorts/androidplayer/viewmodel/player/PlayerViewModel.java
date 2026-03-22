package com.startshorts.androidplayer.viewmodel.player;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.applovin.sdk.AppLovinEventTypes;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.source.VideoModelSource;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.preload.StrategyPreloadConfig;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.bean.configure.PlayerPreloadConfig;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.a;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lf.r;
import lf.s;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.d;
/* compiled from: PlayerViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PlayerViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f48923k = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48924e = kotlin.c.b(new Function0() { // from class: yk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData J;
            J = PlayerViewModel.J();
            return J;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i f48925f = kotlin.c.b(new Function0() { // from class: yk.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData I;
            I = PlayerViewModel.I();
            return I;
        }
    });
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f48926g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f48927h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private r f48928i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f48929j;

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements lf.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48930a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PlayerViewModel f48931b;

        b(String str, PlayerViewModel playerViewModel) {
            this.f48930a = str;
            this.f48931b = playerViewModel;
        }

        @Override // lf.a
        public void a(String errCode, String str, Resolution resolution) {
            Intrinsics.checkNotNullParameter(errCode, "errCode");
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onError ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.d(errCode, str, resolution));
        }

        @Override // lf.a
        public void b() {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onPlaying ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(c.f.f48956a);
        }

        @Override // lf.a
        public void c(int i10, int i11) {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onRenderStart ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.G().setValue(new a.C0670a(i10, i11));
        }

        @Override // lf.a
        public void d(int i10) {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onCompleted ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.C0672c(i10));
        }

        @Override // lf.a
        public void e(long j10) {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onRenderStart ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.h(j10));
        }

        @Override // lf.a
        public void f() {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onPaused ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(c.e.f48955a);
        }

        @Override // lf.a
        public void g(int i10, int i11) {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onTimeInfo ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.j(i10, i11));
        }

        @Override // lf.a
        public void onBufferEnd(int i10) {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onBufferEnd ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.a(i10));
        }

        @Override // lf.a
        public void onBufferStart(int i10, int i11, int i12) {
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onBufferStart ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.b(i10, i11, i12));
        }

        @Override // lf.a
        public void onPrepared() {
            TTVideoEngine t10;
            if (Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                r rVar = this.f48931b.f48928i;
                if (rVar != null && (t10 = rVar.t()) != null) {
                    this.f48931b.H().setValue(new c.g(t10.getResolutionBeforeDowngrade(), t10.getCurrentResolution()));
                    return;
                }
                return;
            }
            PlayerViewModel playerViewModel = this.f48931b;
            playerViewModel.f("onPrepared ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
        }

        @Override // lf.a
        public void onVideoStreamBitrateChanged(Resolution resolution, int i10) {
            Intrinsics.checkNotNullParameter(resolution, "resolution");
            if (!Intrinsics.areEqual(this.f48930a, this.f48931b.f48927h)) {
                PlayerViewModel playerViewModel = this.f48931b;
                playerViewModel.f("onVideoStreamBitrateChanged ignore -> current(" + this.f48931b.f48927h + ") valid(" + this.f48930a + ')');
                return;
            }
            this.f48931b.H().setValue(new c.i(resolution));
        }
    }

    private final void E() {
        if (this.f48929j) {
            this.f48929j = false;
            String str = this.f48926g;
            if (str != null) {
                d.f64861a.d(str);
            }
        }
    }

    private final void F() {
        if (!this.f48929j) {
            this.f48929j = true;
            String str = this.f48926g;
            if (str != null) {
                d.f64861a.g(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData I() {
        return new MutableLiveData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData J() {
        return new MutableLiveData();
    }

    private final void K() {
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.w();
        }
    }

    private final void L(Context context, s sVar, String str) {
        if (this.f48928i == null) {
            this.f48928i = new r(context, null, 2, null);
        }
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.x(sVar, new b(str, this));
        }
    }

    private final void N() {
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.K();
        }
        r rVar2 = this.f48928i;
        if (rVar2 != null) {
            rVar2.C();
        }
        this.f48928i = null;
        this.f48927h = null;
    }

    private final void O() {
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.D();
        }
    }

    private final void P(int i10) {
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.E(i10);
        }
    }

    private final void Q(boolean z10) {
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.J(z10);
        }
    }

    private final void R(PlayResolution playResolution) {
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.L(playResolution);
        }
    }

    private final void S(float f10) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putFloat(AppLovinEventTypes.USER_COMPLETED_LEVEL, f10);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "play_speed", bundle, 0L, 4, null);
        r rVar = this.f48928i;
        if (rVar != null) {
            rVar.M(f10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void T(List<StrategySource> list) {
        PlayerPreloadConfig playerPreloadConfig;
        Object obj;
        Resolution resolution;
        Iterator<T> it = list.iterator();
        while (true) {
            playerPreloadConfig = null;
            if (it.hasNext()) {
                obj = it.next();
                StrategySource strategySource = (StrategySource) obj;
                if (!(strategySource instanceof VideoModelSource)) {
                    break;
                } else if (((VideoModelSource) strategySource).resolution() != null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        StrategySource strategySource2 = (StrategySource) obj;
        if (strategySource2 == null) {
            resolution = Resolution.SuperHigh;
        } else if (strategySource2 instanceof VideoModelSource) {
            resolution = ((VideoModelSource) strategySource2).resolution();
        } else {
            resolution = Resolution.SuperHigh;
        }
        List<PlayerPreloadConfig> preloadConfigs = re.a.f65803a.value().getPreloadConfigs();
        if (preloadConfigs != null) {
            Iterator<T> it2 = preloadConfigs.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (Intrinsics.areEqual(((PlayerPreloadConfig) next).getResolution(), resolution.toString())) {
                    playerPreloadConfig = next;
                    break;
                }
            }
            playerPreloadConfig = playerPreloadConfig;
        }
        if (playerPreloadConfig == null) {
            v("updatePreloadConfig -> use default config");
            playerPreloadConfig = new PlayerPreloadConfig("unknown", 4, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT, 5, 4);
        }
        v("updatePreloadConfig -> " + playerPreloadConfig);
        StrategyManager.instance().setCustomPreloadConfig(new StrategyPreloadConfig.Builder().setCount(playerPreloadConfig.getPreloadCount()).setSize(playerPreloadConfig.getPreloadSize()).setStartBufferLimit(playerPreloadConfig.getStartBufferLimit()).setStopBufferLimit(playerPreloadConfig.getStopBufferLimit()).build());
    }

    @NotNull
    public final MutableLiveData<com.startshorts.androidplayer.viewmodel.player.a> G() {
        return (MutableLiveData) this.f48925f.getValue();
    }

    @NotNull
    public final MutableLiveData<c> H() {
        return (MutableLiveData) this.f48924e.getValue();
    }

    public final void M(@NotNull com.startshorts.androidplayer.viewmodel.player.b intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (q()) {
            return;
        }
        if (intent instanceof b.i) {
            this.f48926g = ((b.i) intent).a();
        } else if (intent instanceof b.e) {
            String uuid = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            this.f48927h = uuid;
            b.e eVar = (b.e) intent;
            L(eVar.a(), eVar.b(), uuid);
        } else if (intent instanceof b.d) {
            K();
        } else if (intent instanceof b.g) {
            O();
        } else if (intent instanceof b.h) {
            P(((b.h) intent).a());
        } else if (intent instanceof b.c) {
            Q(((b.c) intent).a());
        } else if (intent instanceof b.k) {
            S(((b.k) intent).a());
        } else if (intent instanceof b.l) {
            R(((b.l) intent).a());
        } else if (intent instanceof b.f) {
            N();
        } else if (intent instanceof b.j) {
            v("SetStrategyResources");
            F();
            b.j jVar = (b.j) intent;
            T(jVar.a());
            TTVideoEngine.setStrategySources(jVar.a());
        } else if (intent instanceof b.a) {
            v("AddStrategyResources");
            F();
            TTVideoEngine.addStrategySources(((b.a) intent).a());
        } else if (intent instanceof b.C0671b) {
            E();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "PlayerViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void w() {
        super.w();
        E();
        N();
    }
}
