package com.startshorts.androidplayer.repo.config;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.configure.SdkConfig;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.configure.ad.d;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.ConfigRemoteDS;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import jk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConfigRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ConfigRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ConfigRepo f43771a = new ConfigRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43772b = c.b(new Function0() { // from class: mg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a y10;
            y10 = ConfigRepo.y();
            return y10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f43773c = c.b(new Function0() { // from class: mg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConfigRemoteDS z10;
            z10 = ConfigRepo.z();
            return z10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static boolean f43774d;

    private ConfigRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A() {
        return r().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(String str) {
        f43771a.u(new Throwable(str));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(String str) {
        f43774d = false;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(boolean z10, boolean z11, boolean z12) {
        Logger logger = Logger.f41511a;
        logger.e("ConfigRepo", "checkAFEnable -> firstCheck(" + z10 + ") afEnable(" + z11 + ") ajEnable(" + z12 + ')');
        if (z10) {
            if (!z11) {
                n();
            } else {
                p();
            }
            if (!z12) {
                o();
            } else {
                q();
            }
        }
    }

    private final void n() {
        Logger.f41511a.e("ConfigRepo", "disableAf");
        r().e(false);
        EventManager.s0(EventManager.f42463a, "af_disabled", null, 0L, 6, null);
        BaseCampaignProvider.f42007e.f(CampaignType.AF_CONVERSION_DATA);
        ud.b.f68412a.B2(true);
        d.f42346a.b();
    }

    private final void o() {
        Logger.f41511a.e("ConfigRepo", "disableAj");
        r().f(false);
        EventManager.s0(EventManager.f42463a, "aj_disabled", null, 0L, 6, null);
        BaseCampaignProvider.f42007e.f(CampaignType.AJ_CONVERSION_DATA);
        ud.b.f68412a.F2(true);
        d.f42346a.b();
    }

    private final void p() {
        Logger.f41511a.e("ConfigRepo", "enableAf");
        r().e(true);
        EventManager.s0(EventManager.f42463a, "af_enabled", null, 0L, 6, null);
    }

    private final void q() {
        Logger.f41511a.e("ConfigRepo", "enableAj");
        r().f(true);
        EventManager.s0(EventManager.f42463a, "aj_enabled", null, 0L, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final mg.a r() {
        return (mg.a) f43772b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConfigRemoteDS s() {
        return (ConfigRemoteDS) f43773c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(Throwable th2) {
        Logger logger = Logger.f41511a;
        logger.e("ConfigRepo", "handleQuerySDKConfigFailed -> " + th2.getMessage());
        r().g(false);
        EventManager eventManager = EventManager.f42463a;
        Bundle D = eventManager.D(z.a(th2));
        D.putString("result", "fail");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "query_sdk_config_result", D, 0L, 4, null);
        m(true, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(SdkConfig sdkConfig, SdkConfig sdkConfig2) {
        boolean z10;
        boolean z11;
        if (sdkConfig != null) {
            z10 = sdkConfig.getStatus();
        } else {
            z10 = true;
        }
        if (sdkConfig2 != null) {
            z11 = sdkConfig2.getStatus();
        } else {
            z11 = true;
        }
        Logger.f41511a.e("ConfigRepo", "handleQuerySDKConfigSuccess -> afEnable(" + z10 + ") ajEnable(" + z11 + ')');
        r().g(false);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("result", "success");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "query_sdk_config_result", bundle, 0L, 4, null);
        m(true, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final mg.a y() {
        return new mg.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ConfigRemoteDS z() {
        return new ConfigRemoteDS();
    }

    public final void B() {
        if (!AccountRepo.f43052a.w0()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "queryAppClientLogConfig", false, new ConfigRepo$queryAppClientLogConfig$1(null), 2, null);
    }

    public final void C() {
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "querySdkConfig", false, new ConfigRepo$querySdkConfig$1(null), new Function1() { // from class: mg.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit D;
                D = ConfigRepo.D((String) obj);
                return D;
            }
        }, 5, null);
    }

    public final void E() {
        if (!AccountRepo.f43052a.w0() || f43774d) {
            return;
        }
        f43774d = true;
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "queryServerConfig", false, new ConfigRepo$queryServerConfig$1(null), new Function1() { // from class: mg.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit F;
                F = ConfigRepo.F((String) obj);
                return F;
            }
        }, 5, null);
    }

    @Nullable
    public final Object l(@NotNull rs.c<? super Unit> cVar) {
        boolean A = A();
        boolean c10 = BaseCampaignProvider.f42007e.c(CampaignType.META_INSTALL_REFERRER);
        boolean i22 = ud.b.f68412a.i2();
        Logger logger = Logger.f41511a;
        logger.e("ConfigRepo", "checkAFReplaceableByMetaIR -> needQuerySdkConfig(" + A + ") metaIRQueried(" + c10 + ") isOldUser(" + i22 + ')');
        if (i22) {
            logger.e("ConfigRepo", "checkAFReplaceableByMetaIR -> isOldUser is true");
            return Unit.f60915a;
        }
        if (!A) {
            if (w()) {
                MatchEventUtil.f48183a.c();
            }
            if (x()) {
                MatchEventUtil.f48183a.b();
            }
        } else {
            logger.e("ConfigRepo", "checkAFReplaceableByMetaIR -> wait sdk config queried");
        }
        return Unit.f60915a;
    }

    @Nullable
    public final ServerConfig t() {
        return r().a();
    }

    public final boolean w() {
        return r().c();
    }

    public final boolean x() {
        return r().b();
    }
}
