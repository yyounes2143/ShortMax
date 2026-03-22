package com.startshorts.androidplayer.manager.dialog.home;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.FragmentManager;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.reward.AccumulativeaWatchDialog;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccumulativeaWatchDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0622a f42422a = new C0622a(null);

    /* renamed from: b  reason: collision with root package name */
    private static boolean f42423b;

    /* compiled from: AccumulativeaWatchDialogProcessor.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.dialog.home.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0622a {
        public /* synthetic */ C0622a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0622a() {
        }
    }

    /* compiled from: AccumulativeaWatchDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements AccumulativeaWatchDialog.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f42424a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MainActivity f42425b;

        b(Function0<Unit> function0, MainActivity mainActivity) {
            this.f42424a = function0;
            this.f42425b = mainActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.reward.AccumulativeaWatchDialog.b
        public void a(BaseShorts shorts) {
            Intrinsics.checkNotNullParameter(shorts, "shorts");
            this.f42424a.invoke();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String shortPlayCode = shorts.getShortPlayCode();
            if (shortPlayCode == null) {
                shortPlayCode = "";
            }
            bundle.putString("reel_id", shortPlayCode);
            if (!TextUtils.isEmpty(shorts.getUpack())) {
                bundle.putString("upack", shorts.getUpack());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discover_watch_task_click", bundle, 0L, 4, null);
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            MainActivity mainActivity = this.f42425b;
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("discover_watch_drama_pop");
            if (shorts.getEpisodeNum() != 0) {
                immersionParams.setType(1);
                immersionParams.setEpisodeNum(shorts.getEpisodeNum());
            } else {
                immersionParams.setType(3);
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(shorts.getId());
            immersionShortsInfo.setShortPlayCode(shorts.getShortPlayCode());
            immersionShortsInfo.setShortsName(shorts.getShortPlayName());
            immersionShortsInfo.setCover(shorts.getPicUrl());
            immersionShortsInfo.setUpack(shorts.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            aVar.a(mainActivity, immersionParams);
        }

        @Override // com.startshorts.androidplayer.ui.fragment.reward.AccumulativeaWatchDialog.b
        public void onClose() {
            this.f42424a.invoke();
            EventManager.s0(EventManager.f42463a, "discover_watch_task_close", null, 0L, 6, null);
        }
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return c.a.b(this);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @Nullable
    public Object b(@NotNull MainActivity mainActivity, @NotNull Function0<Unit> function0, @NotNull rs.c<? super Boolean> cVar) {
        String str;
        String str2;
        String upack;
        if (!c(mainActivity)) {
            Logger.f41511a.h("AccumulativeaWatchDialogProcessor", "Dialog not show : canShow is FALSE");
            return kotlin.coroutines.jvm.internal.a.a(false);
        } else if (!ABTestFactory.f42224a.C0().isTargetValue(1)) {
            Logger.f41511a.h("AccumulativeaWatchDialogProcessor", "Dialog not show : accumulativeaWatch test is not TestGroupA");
            return kotlin.coroutines.jvm.internal.a.a(false);
        } else {
            ud.b bVar = ud.b.f68412a;
            if (bVar.S()) {
                Logger.f41511a.h("AccumulativeaWatchDialogProcessor", "Dialog not show : campaignAccumulativeaWatchShowed is true");
                return kotlin.coroutines.jvm.internal.a.a(false);
            } else if (f42423b) {
                return kotlin.coroutines.jvm.internal.a.a(false);
            } else {
                RewardsRepo rewardsRepo = RewardsRepo.f44515a;
                DailyWatchPopResult k10 = rewardsRepo.k();
                if (k10.getList().isEmpty()) {
                    Logger.f41511a.h("AccumulativeaWatchDialogProcessor", "Dialog not show : result is isEmpty");
                    rewardsRepo.i(false);
                    return kotlin.coroutines.jvm.internal.a.a(false);
                }
                AccumulativeaWatchDialog a10 = AccumulativeaWatchDialog.f46661m.a(k10, new b(function0, mainActivity));
                FragmentManager supportFragmentManager = mainActivity.getSupportFragmentManager();
                Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
                f42423b = a10.x(supportFragmentManager);
                bVar.c3(true);
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                BaseShorts shortPlay = k10.getShortPlay();
                bundle.putString("reel_id", (shortPlay == null || (r0 = shortPlay.getShortPlayCode()) == null) ? "" : "");
                BaseShorts shortPlay2 = k10.getShortPlay();
                String str3 = (shortPlay2 == null || (str3 = shortPlay2.getUpack()) == null) ? "" : "";
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("upack", str3);
                }
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "discover_watch_task_show", bundle, 0L, 4, null);
                ag.a aVar = ag.a.f646a;
                BaseShorts shortPlay3 = k10.getShortPlay();
                if (shortPlay3 != null) {
                    str = shortPlay3.getShortPlayCode();
                } else {
                    str = null;
                }
                String str4 = str;
                BaseShorts shortPlay4 = k10.getShortPlay();
                if (shortPlay4 == null || (upack = shortPlay4.getUpack()) == null) {
                    str2 = "";
                } else {
                    str2 = upack;
                }
                ag.a.d(aVar, "immersion_back", str4, null, 0, null, null, null, str2, null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
                return kotlin.coroutines.jvm.internal.a.a(true);
            }
        }
    }

    public boolean c(@NotNull MainActivity mainActivity) {
        return c.a.a(this, mainActivity);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "AccumulativeaWatchDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_ACCUMULATIVEA_WATCH;
    }
}
