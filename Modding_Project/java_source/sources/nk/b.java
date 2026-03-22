package nk;

import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.api.limit.ApiLimitManager;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.act.ActResourceRepo;
import com.startshorts.androidplayer.repo.ad.AdConfigRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ng.e;
import ng.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppStartProcessAdapter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f62972a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f62973b = "AppStartProcessAdapter";

    private b() {
    }

    private final void d() {
        EventManager.s0(EventManager.f42463a, "app_install", null, 0L, 6, null);
    }

    private final void e() {
        ud.b bVar = ud.b.f68412a;
        int N0 = bVar.N0();
        int U = DeviceUtil.f48146a.U();
        if (N0 == U) {
            return;
        }
        SubsExpansionManager.f42751a.j();
        if (N0 < 1912) {
            ActResourceRepo.f43103a.j(null);
        }
        bVar.Z3(U);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("old_version", String.valueOf(N0));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "update_from_old_version", bundle, 0L, 4, null);
        eventManager.a0("icon");
        UpdateManager.f42992a.n();
        bVar.u4(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(boolean z10) {
        return Unit.f60915a;
    }

    public void b() {
        Logger.f41511a.h(f62973b, "appLanguageChanged");
        ActResourceManager.z(ActResourceManager.f41582a, false, 1, null);
        e.f62912a.e();
        PushRepo.f44374a.C();
        AdConfigRepo.f43114a.e();
    }

    public void c() {
        Logger.f41511a.h(f62973b, "createDeviceIdEnd");
        if (ABTestFactory.f42224a.C0().isTargetValue(1)) {
            RewardsRepo.j(RewardsRepo.f44515a, false, 1, null);
        }
        RewardsRepo.f44515a.h();
        ActResourceManager.z(ActResourceManager.f41582a, false, 1, null);
        PushRepo.f44374a.i();
        AdSignInfoManager.f42264a.b();
        AdConfigRepo.f43114a.e();
        ConfigRepo.f43771a.B();
    }

    public void f(boolean z10) {
        Logger.f41511a.h(f62973b, "doWorkOnForeground");
        AccountRepo.c1(AccountRepo.f43052a, false, new Function1() { // from class: nk.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit g10;
                g10 = b.g(((Boolean) obj).booleanValue());
                return g10;
            }
        }, 1, null);
        e.f62912a.e();
        if (!TextUtils.isEmpty(DeviceUtil.f48146a.h()) && !z10) {
            ActResourceManager.f41582a.y(true);
        }
    }

    public void h() {
        Logger.f41511a.h(f62973b, "doWorkOnForegroundFirst");
    }

    public void i() {
        Logger.f41511a.h(f62973b, "firstLaunch");
    }

    public void j() {
        Logger.f41511a.h(f62973b, "launcherColdBoot");
        uf.a.f68420a.a();
        ud.a.f68411a.K0(true);
    }

    public void k(@NotNull Application app) {
        Intrinsics.checkNotNullParameter(app, "app");
        Logger logger = Logger.f41511a;
        logger.h(f62973b, "onCreateMainProcess");
        ApiLimitManager.f41827a.e();
        kf.b.f60715a.f(app);
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        deviceUtil.m0();
        ud.b bVar = ud.b.f68412a;
        if (bVar.z0()) {
            ud.a.f68411a.u0(true);
            logger.e("CampaignNewTag", "init MemoryCacheManager.isInstallFirstOpen = true");
            bVar.L3(false);
            bVar.Y3(deviceUtil.K());
            deviceUtil.q();
            bVar.Z3(deviceUtil.U());
            d();
        }
        bVar.M2(bVar.C() + 1);
        e();
        CampaignProvider.f41870a.m();
        EventManager eventManager = EventManager.f42463a;
        eventManager.Y();
        eventManager.U();
        t.f51774a.b();
        PushManager.f42838a.k();
        e.f62912a.k();
        g.f62917a.c(app);
    }
}
