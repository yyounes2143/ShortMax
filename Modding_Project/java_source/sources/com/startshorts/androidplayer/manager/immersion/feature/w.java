package com.startshorts.androidplayer.manager.immersion.feature;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.eventbus.ShowUnlockEpisodeMethodsEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockEpisodeFeature.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnlockEpisodeFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockEpisodeFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/UnlockEpisodeFeature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"})
/* loaded from: classes6.dex */
public final class w implements IImmersionFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42667e = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ImmersionJobsManager f42668a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f42669b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseEpisode f42670c;

    /* renamed from: d  reason: collision with root package name */
    private int f42671d;

    /* compiled from: UnlockEpisodeFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(boolean z10, boolean z11) {
            if (ABTestFactory.f42224a.W0().abTestIntValue() == 2 && !AccountRepo.f43052a.z0() && !z11 && ud.b.f68412a.l() && z10) {
                return true;
            }
            return false;
        }

        private a() {
        }
    }

    /* compiled from: UnlockEpisodeFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(int i10, @NotNull EpisodeListUnlockedEvent episodeListUnlockedEvent);

        void b();

        void c(@NotNull String str, @NotNull BaseEpisode baseEpisode);

        void d(@NotNull String str, @NotNull BaseEpisode baseEpisode, @NotNull String str2, @NotNull Ad2PayConfig ad2PayConfig);

        void e(@NotNull String str);

        void f();

        void g(@NotNull String str);

        void h(@NotNull String str);

        void i(@NotNull String str, @NotNull BaseEpisode baseEpisode);

        void j(@NotNull List<BaseEpisode> list);

        void k(@NotNull EpisodeListUnlockedEvent episodeListUnlockedEvent);
    }

    /* compiled from: UnlockEpisodeFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.EPISODE_SELECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(w wVar, String str, BaseEpisode baseEpisode, String scene, Ad2PayConfig config) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(config, "config");
        b bVar = wVar.f42669b;
        if (bVar != null) {
            bVar.d(str, baseEpisode, scene, config);
            return Unit.f60915a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(BaseEpisode baseEpisode, String str, w wVar) {
        if (baseEpisode.isIaaUserEpisode() && !Intrinsics.areEqual(str, "unlock_select_iaa")) {
            b bVar = wVar.f42669b;
            if (bVar == null) {
                return null;
            }
            bVar.f();
            return Unit.f60915a;
        } else if (f42667e.a(true, baseEpisode.isUnlockByOnlyCoins())) {
            b bVar2 = wVar.f42669b;
            if (bVar2 == null) {
                return null;
            }
            bVar2.i(str, baseEpisode);
            return Unit.f60915a;
        } else {
            b bVar3 = wVar.f42669b;
            if (bVar3 == null) {
                return null;
            }
            bVar3.c(str, baseEpisode);
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(w wVar) {
        b bVar;
        BaseEpisode baseEpisode = wVar.f42670c;
        if (baseEpisode != null && !baseEpisode.isLocked() && (bVar = wVar.f42669b) != null) {
            bVar.b();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                this.f42670c = i(message);
                return;
            }
            return;
        }
        au.c.d().p(this);
        this.f42668a = j(message);
    }

    public final void e(@NotNull final String action, @NotNull final BaseEpisode episode, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(episode, "episode");
        Ad2PayPresent.f42733a.e(unlockEpisodeAdMethod, new Function2() { // from class: hf.g0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit f10;
                f10 = com.startshorts.androidplayer.manager.immersion.feature.w.f(com.startshorts.androidplayer.manager.immersion.feature.w.this, action, episode, (String) obj, (Ad2PayConfig) obj2);
                return f10;
            }
        }, new Function0() { // from class: hf.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit g10;
                g10 = com.startshorts.androidplayer.manager.immersion.feature.w.g(BaseEpisode.this, action, this);
                return g10;
            }
        });
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        C.putString("status", "fail");
        C.putString("scene", "immersion");
        C.putString("type", "insufficient_coins");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_request", C, 0L, 4, null);
        ImmersionJobsManager immersionJobsManager = this.f42668a;
        if (immersionJobsManager != null) {
            ImmersionJobsManager.e(immersionJobsManager, ImmersionJobsManager.JobType.CHECK_UNLOCK_EPISODE_DIALOG_HIDE, 200L, null, new Function0() { // from class: hf.i0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit h10;
                    h10 = com.startshorts.androidplayer.manager.immersion.feature.w.h(com.startshorts.androidplayer.manager.immersion.feature.w.this);
                    return h10;
                }
            }, 4, null);
        }
    }

    @Nullable
    public BaseEpisode i(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Nullable
    public ImmersionJobsManager j(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    public final int k() {
        return this.f42671d;
    }

    public final void l(@Nullable b bVar) {
        this.f42669b = bVar;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        int i10;
        b bVar;
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("UnlockEpisodeFeature", "receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ')');
        BaseEpisode baseEpisode = this.f42670c;
        if (baseEpisode == null) {
            return;
        }
        int i11 = this.f42671d;
        List<BaseEpisode> list = event.getList();
        if (list != null) {
            i10 = list.size();
        } else {
            i10 = 0;
        }
        this.f42671d = i11 + i10;
        if (event.getUnlockType() == 3) {
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.f();
        }
        List<BaseEpisode> list2 = event.getList();
        if (list2 != null && (bVar = this.f42669b) != null) {
            bVar.j(list2);
        }
        if (event.getUnlockType() == 3 && event.getNextDrama() != null && f42667e.a(event.getCanWatchAd(), event.getNextDrama().isUnlockByOnlyCoins())) {
            b bVar2 = this.f42669b;
            if (bVar2 != null) {
                bVar2.a(baseEpisode.getEpisodeNum(), event);
                return;
            }
            return;
        }
        b bVar3 = this.f42669b;
        if (bVar3 != null) {
            bVar3.k(event);
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShowUnlockEpisodeMethodsEvent(@NotNull ShowUnlockEpisodeMethodsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("UnlockEpisodeFeature", "receive ShowUnlockEpisodeMethodsEvent -> episodeId(" + event.getEpisode().getId() + ") episodeNum(" + event.getEpisode().getEpisodeNum() + ") action(" + event.getAction() + ')');
        BaseEpisode baseEpisode = this.f42670c;
        if (baseEpisode == null || event.getEpisode().getId() != baseEpisode.getId() || !baseEpisode.isLocked()) {
            return;
        }
        String action = event.getAction();
        if (action.length() == 0) {
            action = "other";
        }
        if (com.startshorts.androidplayer.manager.configure.ad.c.f42340a.j() && AdManager.f41600a.K("watch_continuous")) {
            if (AdSwitchConfigure.f42267a.value().b(AdScene.NATIVE) && com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p("immersion_full_screen_native")) {
                b bVar = this.f42669b;
                if (bVar != null) {
                    bVar.g(action);
                    return;
                }
                return;
            }
            b bVar2 = this.f42669b;
            if (bVar2 != null) {
                bVar2.e(action);
                return;
            }
            return;
        }
        b bVar3 = this.f42669b;
        if (bVar3 != null) {
            bVar3.h(action);
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        au.c.d().r(this);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.UNLOCK_EPISODE;
    }
}
