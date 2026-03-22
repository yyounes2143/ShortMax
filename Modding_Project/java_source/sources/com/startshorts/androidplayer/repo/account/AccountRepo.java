package com.startshorts.androidplayer.repo.account;

import android.content.Context;
import android.os.Bundle;
import androidx.databinding.Observable;
import androidx.startup.AppInitializer;
import com.bytedance.applog.game.GameReportHelper;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.account.RegisterTouristAccountResult;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.settings.MergeConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.bean.unlock.RetainConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.configure.AppConfigureManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.account.AccountLocalDS;
import com.startshorts.androidplayer.repo.account.AccountRemoteDS;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.ad.AdConfigRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.startup.PlayerInitializer;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import fk.t;
import fk.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import jk.v;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import ng.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccountRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccountRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountRepo.kt\ncom/startshorts/androidplayer/repo/account/AccountRepo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,860:1\n1#2:861\n*E\n"})
/* loaded from: classes7.dex */
public final class AccountRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AccountRepo f43052a = new AccountRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43053b = kotlin.c.b(new Function0() { // from class: bg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AccountLocalDS S0;
            S0 = AccountRepo.S0();
            return S0;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f43054c = kotlin.c.b(new Function0() { // from class: bg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AccountRemoteDS T0;
            T0 = AccountRepo.T0();
            return T0;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static long f43055d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f43056e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f43057f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static List<Long> f43058g;

    private AccountRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1(int i10, boolean z10) {
        l0().h0(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B1(boolean z10, boolean z11) {
        l0().i0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1(int i10, boolean z10) {
        l0().j0(i10, z10);
    }

    public static /* synthetic */ void E1(AccountRepo accountRepo, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        accountRepo.D1(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F1(boolean z10, boolean z11) {
        l0().l0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G1(boolean z10, boolean z11) {
        l0().m0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H1(Integer num, boolean z10) {
        l0().n0(num, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I1(boolean z10, boolean z11) {
        l0().o0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J1(boolean z10, boolean z11) {
        l0().p0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K1(boolean z10, boolean z11) {
        l0().q0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L1(RetainConfig retainConfig, boolean z10) {
        l0().r0(retainConfig, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M1(boolean z10, boolean z11) {
        l0().s0(z10, z11);
    }

    public static /* synthetic */ void O1(AccountRepo accountRepo, boolean z10, int i10, long j10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            j10 = -1;
        }
        accountRepo.N1(z10, i12, j10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P1(Integer num, boolean z10) {
        l0().u0(num, z10);
    }

    private final void R(List<Long> list, List<Long> list2) {
        if (!Intrinsics.areEqual(list2.toString(), list.toString())) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("original_audience_group_ids", v.s(list));
            bundle.putString("new_audience_group_ids", v.s(list2));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "audience_group_changed", bundle, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R1(boolean z10, boolean z11) {
        l0().w0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AccountLocalDS S0() {
        return new AccountLocalDS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AccountRemoteDS T0() {
        return new AccountRemoteDS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T1(Integer num, boolean z10) {
        l0().y0(num, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U1(int i10, boolean z10) {
        l0().z0(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V1(boolean z10, boolean z11) {
        l0().A0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W1(boolean z10, boolean z11) {
        l0().B0(z10, z11);
    }

    public static /* synthetic */ void X(AccountRepo accountRepo, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        accountRepo.W(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X1(boolean z10, boolean z11) {
        if (z10) {
            HomeRetainDiscountSubsPresent homeRetainDiscountSubsPresent = HomeRetainDiscountSubsPresent.f42741a;
            if (homeRetainDiscountSubsPresent.g() == null) {
                homeRetainDiscountSubsPresent.k();
            }
        }
        l0().C0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(String str) {
        f43056e = false;
        AccountManager accountManager = AccountManager.f41533a;
        accountManager.t(false);
        accountManager.s(false);
        f43052a.u0(z.a(new Throwable(str)));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y1(boolean z10, boolean z11) {
        l0().D0(z10, z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void Z0(AccountRepo accountRepo, boolean z10, Context context, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            context = null;
        }
        if ((i10 & 4) != 0) {
            function1 = new Function1() { // from class: bg.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit a12;
                    a12 = AccountRepo.a1((Result) obj2);
                    return a12;
                }
            };
        }
        accountRepo.Y0(z10, context, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(Result result) {
        return Unit.f60915a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void c1(AccountRepo accountRepo, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        accountRepo.b1(z10, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k1(boolean z10, boolean z11) {
        l0().V(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccountLocalDS l0() {
        return (AccountLocalDS) f43053b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1(long j10, boolean z10) {
        Account g10 = l0().g();
        if (g10 != null && g10.getAttributionTimestamp() > 0 && j10 > 0 && g10.getAttributionTimestamp() != j10) {
            SubsExpansionManager.f42751a.j();
        }
        l0().W(j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccountRemoteDS m0() {
        return (AccountRemoteDS) f43054c.getValue();
    }

    public static /* synthetic */ void n1(AccountRepo accountRepo, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        accountRepo.m1(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1(boolean z10, boolean z11) {
        l0().Y(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1(String str, boolean z10) {
        l0().Z(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r1(int i10, boolean z10) {
        l0().a0(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s1(int i10, boolean z10) {
        l0().b0(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0(ResponseException responseException) {
        if (ud.a.f68411a.t() && DeviceUtil.f48146a.b0()) {
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "register_fail", eventManager.D(responseException), 0L, 4, null);
        }
        AccountManager.f41533a.l(false, responseException);
    }

    public static /* synthetic */ void u1(AccountRepo accountRepo, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        accountRepo.t1(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0(RegisterTouristAccountResult registerTouristAccountResult) {
        PlayerInitializer playerInitializer;
        IDActivity iDActivity;
        if (registerTouristAccountResult == null) {
            return;
        }
        Account userResponse = registerTouristAccountResult.getUserResponse();
        userResponse.setToken(registerTouristAccountResult.getToken());
        userResponse.setType(1);
        AccountRepo accountRepo = f43052a;
        accountRepo.f1(userResponse);
        accountRepo.g1(userResponse.getAudienceIdList());
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            g.f62917a.h(iDActivity, accountRepo.t0());
        }
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, GameReportHelper.REGISTER, null, 0L, 6, null);
        S();
        AppConfigureManager.f42186a.c();
        t.f51774a.b();
        Object initializeComponent = AppInitializer.getInstance(u.f51776a.b()).initializeComponent(PlayerInitializer.class);
        if (initializeComponent instanceof PlayerInitializer) {
            playerInitializer = (PlayerInitializer) initializeComponent;
        } else {
            playerInitializer = null;
        }
        if (playerInitializer != null) {
            playerInitializer.i();
        }
        CampaignProvider campaignProvider = CampaignProvider.f41870a;
        campaignProvider.o(CampaignType.GP_INSTALL_REFERRER);
        campaignProvider.o(CampaignType.META_INSTALL_REFERRER);
        campaignProvider.o(CampaignType.PRE_INSTALL);
        campaignProvider.o(CampaignType.GA_DEEPLINK);
        CampaignRepo.f43678a.P();
        MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
        matchEventUtil.c();
        matchEventUtil.b();
        campaignProvider.o(CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT);
        Logger.f41511a.e("CampaignNewTag", "CampaignProvider.queryAsync(CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT)");
        e1();
        eventManager.o();
        PushManager.f(PushManager.f42838a, false, 1, null);
        if (!ud.a.f68411a.t()) {
            PushRepo.f44374a.w();
        } else {
            ConfigRepo.f43771a.E();
        }
        if (RemoteConfigRepo.f43788a.s()) {
            PushRepo.f44374a.C();
        }
        V0();
        PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
        purchaseRepo.x(false);
        purchaseRepo.f("topup");
        purchaseRepo.u();
        au.c.d().l(new RefreshAccountEvent());
        EventManager.s(eventManager, false, 1, null);
        AccountManager.m(AccountManager.f41533a, true, null, 2, null);
        AdConfigRepo.f43114a.e();
        RewardsRepo.f44515a.h();
    }

    public static /* synthetic */ void w1(AccountRepo accountRepo, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            z10 = true;
        }
        accountRepo.v1(i10, i11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x1(String str, boolean z10) {
        l0().e0(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y1(String str, boolean z10) {
        l0().f0(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z1(int i10, boolean z10) {
        l0().g0(i10, z10);
    }

    public final boolean A0() {
        int q02 = q0();
        if (1 > q02 || q02 >= 5) {
            return false;
        }
        return true;
    }

    public final boolean B0() {
        int q02 = q0();
        if (5 > q02 || q02 >= 8) {
            return false;
        }
        return true;
    }

    public final boolean C0() {
        return l0().B();
    }

    public final boolean D0() {
        return !l0().h();
    }

    public final void D1(boolean z10, boolean z11) {
        l0().k0(z10, z11);
    }

    public final boolean E0() {
        return l0().C();
    }

    public final boolean F0() {
        return l0().D();
    }

    public final boolean G0() {
        return l0().E();
    }

    public final boolean H0() {
        return l0().F();
    }

    public final boolean I0() {
        return l0().A();
    }

    public final boolean J0() {
        return l0().G();
    }

    public final boolean K0() {
        if (l0().j() == 1) {
            return true;
        }
        return false;
    }

    public final boolean L0() {
        return l0().H();
    }

    public final boolean M0() {
        return l0().I();
    }

    public final boolean N0() {
        return l0().J();
    }

    public final void N1(boolean z10, int i10, long j10, boolean z11) {
        l0().t0(z10, i10, j10, z11);
    }

    public final void O(@NotNull Observable.OnPropertyChangedCallback observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Account g10 = l0().g();
        if (g10 != null) {
            g10.removeOnPropertyChangedCallback(observer);
            g10.addOnPropertyChangedCallback(observer);
            Logger.f41511a.h("AccountRepo", "addPropertyObserver");
        }
    }

    public final boolean O0() {
        return l0().K();
    }

    public final boolean P() {
        return l0().c();
    }

    @Nullable
    public final Account P0() {
        return l0().L();
    }

    public final boolean Q() {
        return l0().d();
    }

    public final void Q0() {
        l0().M();
    }

    public final void Q1(int i10, boolean z10) {
        l0().v0(i10, z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object R0(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.account.AccountRepo$logout$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.account.AccountRepo$logout$1 r0 = (com.startshorts.androidplayer.repo.account.AccountRepo$logout$1) r0
            int r1 = r0.f43070j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43070j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.account.AccountRepo$logout$1 r0 = new com.startshorts.androidplayer.repo.account.AccountRepo$logout$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f43068h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43070j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.account.AccountRemoteDS r6 = r4.m0()
            r0.f43070j = r3
            java.lang.Object r5 = r6.c(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.account.AccountRepo.R0(android.content.Context, rs.c):java.lang.Object");
    }

    public final void S() {
        if (w0() && h0().length() == 0) {
            l0().S();
        }
    }

    public final void S1(boolean z10, boolean z11) {
        l0().x0(z10, z11);
    }

    public final void T(@Nullable Context context, @NotNull Function0<Unit> onFinish) {
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        CoroutineUtil.l(CoroutineUtil.f48072a, "clearAndCreateTouristForTest", false, new AccountRepo$clearAndCreateTouristForTest$1(onFinish, null), 2, null);
    }

    public final void U() {
        l0().e();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object U0(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.account.MergeUserInfo>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.account.AccountRepo$mergeTourist$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.account.AccountRepo$mergeTourist$1 r0 = (com.startshorts.androidplayer.repo.account.AccountRepo$mergeTourist$1) r0
            int r1 = r0.f43073j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43073j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.account.AccountRepo$mergeTourist$1 r0 = new com.startshorts.androidplayer.repo.account.AccountRepo$mergeTourist$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43071h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43073j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.account.AccountRemoteDS r5 = r4.m0()
            r0.f43073j = r3
            java.lang.Object r5 = r5.e(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.account.AccountRepo.U0(rs.c):java.lang.Object");
    }

    public final void V() {
        l0().f();
    }

    @NotNull
    public final r V0() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "queryExtraUserInfo", false, new AccountRepo$queryExtraUserInfo$1(null), 2, null);
    }

    public final void W(@Nullable String str) {
        if (f43056e) {
            return;
        }
        f43056e = true;
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "createTourist", false, new AccountRepo$createTourist$1(str, null), new Function1() { // from class: bg.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y;
                Y = AccountRepo.Y((String) obj);
                return Y;
            }
        }, 5, null);
    }

    @NotNull
    public final r W0(@NotNull Function1<? super MergeConfig, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "queryMergeConfig", false, new AccountRepo$queryMergeConfig$1(callback, null), 2, null);
    }

    @NotNull
    public final r X0(@NotNull Function1<? super GPayExchangePremiumResult.RechargeUserInfo, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "queryRechargeUserInfo", false, new AccountRepo$queryRechargeUserInfo$1(callback, null), 2, null);
    }

    public final void Y0(boolean z10, @Nullable Context context, @NotNull Function1<? super Result<Account>, Unit> onResult) {
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        if (!w0()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "refreshBalance", false, new AccountRepo$refreshBalance$2(z10, context, onResult, null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Z(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.account.AccountRepo$delete$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.account.AccountRepo$delete$1 r0 = (com.startshorts.androidplayer.repo.account.AccountRepo$delete$1) r0
            int r1 = r0.f43067j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43067j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.account.AccountRepo$delete$1 r0 = new com.startshorts.androidplayer.repo.account.AccountRepo$delete$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f43065h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43067j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.account.AccountRemoteDS r6 = r4.m0()
            r0.f43067j = r3
            java.lang.Object r5 = r6.b(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.account.AccountRepo.Z(android.content.Context, rs.c):java.lang.Object");
    }

    @Nullable
    public final Account a0() {
        return l0().g();
    }

    public final int b0() {
        if (l0().z()) {
            return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().d();
        }
        if (l0().l() > 0) {
            return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().b();
        }
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().c();
    }

    public final void b1(boolean z10, @Nullable Function1<? super Boolean, Unit> function1) {
        if (!w0()) {
            return;
        }
        if (!z10 && f43057f) {
            return;
        }
        f43057f = true;
        CoroutineUtil.l(CoroutineUtil.f48072a, "refreshUserInfo", false, new AccountRepo$refreshUserInfo$1(function1, null), 2, null);
    }

    public final int c0() {
        if (l0().z()) {
            return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().f();
        }
        if (l0().l() > 0) {
            return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().a();
        }
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().e();
    }

    @NotNull
    public final String d0() {
        if (f43058g == null) {
            List<Long> N = ud.b.f68412a.N();
            if (N == null) {
                N = new ArrayList<>();
            }
            f43058g = N;
        }
        return v.s(f43058g);
    }

    public final void d1(@NotNull Observable.OnPropertyChangedCallback observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Account g10 = l0().g();
        if (g10 != null) {
            g10.removeOnPropertyChangedCallback(observer);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("AccountRepo", "removePropertyObserver");
        }
    }

    public final int e0() {
        return l0().i();
    }

    public final void e1() {
        if (!w0()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportGaid", false, new AccountRepo$reportGaid$1(null), 2, null);
    }

    @Nullable
    public final String f0() {
        return l0().k();
    }

    public final void f1(@Nullable Account account) {
        AccountLocalDS.Q(l0(), account, false, 2, null);
    }

    public final int g0() {
        return l0().l();
    }

    public final void g1(@Nullable List<Long> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        if (f43058g == null) {
            List<Long> N = ud.b.f68412a.N();
            if (N == null) {
                N = new ArrayList<>();
            }
            f43058g = N;
        }
        if (Intrinsics.areEqual(list.toString(), String.valueOf(f43058g))) {
            return;
        }
        List<Long> list2 = f43058g;
        if (list2 == null) {
            list2 = new ArrayList<>();
        }
        R(list2, list);
        f43058g = list;
        ud.b.f68412a.X2(list);
    }

    @NotNull
    public final String h0() {
        return l0().m();
    }

    public final void h1(boolean z10) {
        l0().U(z10);
    }

    @NotNull
    public final String i0() {
        return l0().n();
    }

    public final boolean i1() {
        if (z0() && B0()) {
            return true;
        }
        return false;
    }

    public final int j0() {
        return l0().p();
    }

    public final void j1(@Nullable BaseEpisode baseEpisode, @NotNull Function0<Unit> unlockEpisode) {
        int i10;
        Intrinsics.checkNotNullParameter(unlockEpisode, "unlockEpisode");
        int g02 = g0() + e0();
        if (baseEpisode != null) {
            i10 = baseEpisode.getPrice();
        } else {
            i10 = 0;
        }
        if (g02 >= i10) {
            Logger logger = Logger.f41511a;
            logger.h("AccountRepo", "unlockAble true -> coinsAndBonus(" + g02 + ") episodePrice(" + i10 + ')');
            unlockEpisode.invoke();
            return;
        }
        Logger logger2 = Logger.f41511a;
        logger2.h("AccountRepo", "unlockAble false -> coinsAndBonus(" + g02 + ") episodePrice(" + i10 + ')');
    }

    public final boolean k0() {
        return l0().q();
    }

    public final void m1(boolean z10, boolean z11) {
        l0().X(z10, z11);
    }

    @Nullable
    public final RetainConfig n0() {
        return l0().r();
    }

    public final long o0() {
        return l0().s();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object o1(@org.jetbrains.annotations.Nullable android.content.Context r5, boolean r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.account.AccountRepo$updateAutoUnlockEpisode$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.account.AccountRepo$updateAutoUnlockEpisode$1 r0 = (com.startshorts.androidplayer.repo.account.AccountRepo$updateAutoUnlockEpisode$1) r0
            int r1 = r0.f43095k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43095k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.account.AccountRepo$updateAutoUnlockEpisode$1 r0 = new com.startshorts.androidplayer.repo.account.AccountRepo$updateAutoUnlockEpisode$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43093i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43095k
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            boolean r6 = r0.f43092h
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L4b
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.account.AccountRemoteDS r7 = r4.m0()
            r0.f43092h = r6
            r0.f43095k = r3
            java.lang.Object r5 = r7.k(r5, r6, r0)
            if (r5 != r1) goto L4b
            return r1
        L4b:
            boolean r7 = kotlin.Result.j(r5)
            if (r7 == 0) goto L59
            com.startshorts.androidplayer.repo.account.AccountRepo r7 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            r0 = 2
            r1 = 0
            r2 = 0
            n1(r7, r6, r2, r0, r1)
        L59:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.account.AccountRepo.o1(android.content.Context, boolean, rs.c):java.lang.Object");
    }

    public final int p0() {
        return l0().t();
    }

    public final int q0() {
        return l0().u();
    }

    @Nullable
    public final String r0() {
        return l0().v();
    }

    @Nullable
    public final Account s0() {
        return l0().w();
    }

    @NotNull
    public final String t0() {
        return l0().x();
    }

    public final void t1(boolean z10, boolean z11) {
        l0().c0(z10, z11);
    }

    public final void v1(int i10, int i11, boolean z10) {
        l0().d0(i10, i11, z10);
    }

    public final boolean w0() {
        if (a0() != null) {
            return true;
        }
        return false;
    }

    public final boolean x0() {
        if (g0() > 0) {
            return true;
        }
        return false;
    }

    public final boolean y0() {
        return l0().y();
    }

    public final boolean z0() {
        return l0().z();
    }
}
