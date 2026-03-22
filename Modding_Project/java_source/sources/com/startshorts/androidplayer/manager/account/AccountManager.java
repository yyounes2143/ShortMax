package com.startshorts.androidplayer.manager.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.google.firebase.auth.FirebaseAuth;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.api.base.RetrofitFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.unity3d.services.UnityAdsConstants;
import fk.h0;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import jk.e;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: AccountManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccountManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountManager.kt\ncom/startshorts/androidplayer/manager/account/AccountManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,316:1\n426#2,11:317\n216#3,2:328\n*S KotlinDebug\n*F\n+ 1 AccountManager.kt\ncom/startshorts/androidplayer/manager/account/AccountManager\n*L\n157#1:317,11\n182#1:328,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AccountManager {

    /* renamed from: c */
    private static boolean f41535c;

    /* renamed from: f */
    private static boolean f41538f;
    @Nullable

    /* renamed from: j */
    private static r f41542j;

    /* renamed from: k */
    private static int f41543k;
    @NotNull

    /* renamed from: a */
    public static final AccountManager f41533a = new AccountManager();
    @NotNull

    /* renamed from: b */
    private static final Object f41534b = new Object();

    /* renamed from: d */
    private static long f41536d = -1;
    @NotNull

    /* renamed from: e */
    private static final Object f41537e = new Object();

    /* renamed from: g */
    private static long f41539g = -1;
    @NotNull

    /* renamed from: h */
    private static final Object f41540h = new Object();
    @NotNull

    /* renamed from: i */
    private static final i<ConcurrentHashMap<Runnable, Function1<ResponseException, Unit>>> f41541i = kotlin.c.b(new Function0() { // from class: be.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap r10;
            r10 = AccountManager.r();
            return r10;
        }
    });

    /* compiled from: AccountManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ gt.i<Result<Boolean>> f41544a;

        /* JADX WARN: Multi-variable type inference failed */
        a(gt.i<? super Result<Boolean>> iVar) {
            this.f41544a = iVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gt.i<Result<Boolean>> iVar = this.f41544a;
            Result.a aVar = Result.f60901b;
            e.a(iVar, Result.b(Result.d(Boolean.TRUE)));
        }
    }

    /* compiled from: AccountManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements Function1<ResponseException, Unit> {

        /* renamed from: a */
        final /* synthetic */ gt.i<Result<Boolean>> f41545a;

        /* JADX WARN: Multi-variable type inference failed */
        b(gt.i<? super Result<Boolean>> iVar) {
            this.f41545a = iVar;
        }

        public final void a(ResponseException it) {
            Intrinsics.checkNotNullParameter(it, "it");
            gt.i<Result<Boolean>> iVar = this.f41545a;
            Result.a aVar = Result.f60901b;
            e.a(iVar, Result.b(Result.d(f.a(it))));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(ResponseException responseException) {
            a(responseException);
            return Unit.f60915a;
        }
    }

    /* compiled from: AccountManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends d {

        /* renamed from: e */
        final /* synthetic */ IDActivity f41546e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(IDActivity iDActivity) {
            super(0L, 1, null);
            this.f41546e = iDActivity;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IDActivity iDActivity = this.f41546e;
            Intent intent = new Intent(this.f41546e, LoginActivity.class);
            intent.putExtra("from", "login_page");
            iDActivity.startActivity(intent);
        }
    }

    private AccountManager() {
    }

    private final void d(Runnable runnable, Function1<? super ResponseException, Unit> function1) {
        i<ConcurrentHashMap<Runnable, Function1<ResponseException, Unit>>> iVar = f41541i;
        if (!iVar.getValue().contains(runnable)) {
            iVar.getValue().put(runnable, function1);
        }
    }

    public static /* synthetic */ void m(AccountManager accountManager, boolean z10, ResponseException responseException, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            responseException = null;
        }
        accountManager.l(z10, responseException);
    }

    public static /* synthetic */ void p(AccountManager accountManager, Account account, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            account = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        accountManager.o(account, z10, z11);
    }

    public static final void q() {
        f41533a.u();
    }

    public static final ConcurrentHashMap r() {
        return new ConcurrentHashMap();
    }

    private final void u() {
        IDActivity iDActivity;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            Builder builder = new Builder();
            builder.setContent(iDActivity.getString(R$string.common_login_expired));
            builder.setPositiveButtonText(iDActivity.getString(R$string.common_re_login));
            builder.setPositiveButtonClickListener(new c(iDActivity));
            builder.setNegativeButtonText(iDActivity.getString(R$string.common_cancel));
            new li.c(iDActivity, builder).show();
        }
    }

    public static final Unit w(int i10) {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.z0() && accountRepo.o0() - DeviceUtil.f48146a.K() > UnityAdsConstants.Timeout.INIT_TIMEOUT_MS) {
            f41533a.e();
        } else if (f41543k > 5) {
            f41533a.e();
        } else {
            Logger.f41511a.h("AccountManager", "checkSubsRenew");
            f41543k++;
            AccountRepo.c1(accountRepo, false, null, 3, null);
        }
        return Unit.f60915a;
    }

    public final void e() {
        f41543k = 0;
        r rVar = f41542j;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("AccountManager", "cancelCheckSubsRenewJob");
        }
        f41542j = null;
    }

    public final void f(@NotNull Runnable runnable, @NotNull Function1<? super ResponseException, Unit> executeFailed) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Intrinsics.checkNotNullParameter(executeFailed, "executeFailed");
        synchronized (f41534b) {
            try {
                AccountRepo accountRepo = AccountRepo.f43052a;
                if (accountRepo.w0()) {
                    runnable.run();
                } else {
                    f41533a.d(runnable, executeFailed);
                    AccountRepo.X(accountRepo, null, 1, null);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public final String g() {
        IDActivity iDActivity;
        String string;
        ServerConfig t10 = ConfigRepo.f43771a.t();
        if (t10 == null) {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                iDActivity = d10.get();
            } else {
                iDActivity = null;
            }
            if (iDActivity == null || (string = iDActivity.getString(R$string.facebook_login_dialog_fragment_huge)) == null) {
                return StatisticData.ERROR_CODE_NOT_FOUND;
            }
            return string;
        }
        return String.valueOf(t10.getGgLoginBonus());
    }

    @NotNull
    public final String h() {
        IDActivity iDActivity;
        String string;
        ServerConfig t10 = ConfigRepo.f43771a.t();
        if (t10 == null) {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                iDActivity = d10.get();
            } else {
                iDActivity = null;
            }
            if (iDActivity == null || (string = iDActivity.getString(R$string.facebook_login_dialog_fragment_huge)) == null) {
                return StatisticData.ERROR_CODE_NOT_FOUND;
            }
            return string;
        }
        return String.valueOf(t10.getMetaLoginBonus());
    }

    @NotNull
    public final String i() {
        IDActivity iDActivity;
        String string;
        ServerConfig t10 = ConfigRepo.f43771a.t();
        if (t10 == null) {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                iDActivity = d10.get();
            } else {
                iDActivity = null;
            }
            if (iDActivity == null || (string = iDActivity.getString(R$string.facebook_login_dialog_fragment_huge)) == null) {
                return "50";
            }
            return string;
        }
        return String.valueOf(t10.getMobileLoginBonus());
    }

    public final void j() {
        synchronized (f41540h) {
            Account a02 = AccountRepo.f43052a.a0();
            Logger logger = Logger.f41511a;
            logger.h("AccountManager", "handleTokenError -> mLastHandleTokenErrorTime(" + f41539g + ") mTokenError(" + f41538f + ") account(" + a02 + ')');
            long L = DeviceUtil.f48146a.L();
            if (L - f41539g < 30000) {
                return;
            }
            if (!f41538f && a02 != null) {
                f41538f = true;
                f41539g = L;
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("status", "illegal");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "token_status", bundle, 0L, 4, null);
                logger.e("AccountManager", "handleTokenError");
                p(f41533a, a02, false, true, 2, null);
            }
        }
    }

    public final void k() {
        synchronized (f41537e) {
            Account a02 = AccountRepo.f43052a.a0();
            Logger logger = Logger.f41511a;
            logger.h("AccountManager", "handleTokenExpired -> mLastHandleTokenExpiredTime(" + f41536d + ") mTokenExpired(" + f41535c + ") account(" + a02 + ')');
            long L = DeviceUtil.f48146a.L();
            if (L - f41536d < 30000) {
                return;
            }
            if (!f41535c && a02 != null) {
                f41535c = true;
                f41536d = L;
                logger.e("AccountManager", "handleTokenExpired");
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("status", "expired");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "token_status", bundle, 0L, 4, null);
                p(f41533a, a02, true, false, 4, null);
            }
        }
    }

    public final void l(boolean z10, @Nullable ResponseException responseException) {
        i<ConcurrentHashMap<Runnable, Function1<ResponseException, Unit>>> iVar = f41541i;
        synchronized (iVar.getValue()) {
            try {
                for (Map.Entry<Runnable, Function1<ResponseException, Unit>> entry : iVar.getValue().entrySet()) {
                    if (z10) {
                        entry.getKey().run();
                    } else if (responseException != null) {
                        entry.getValue().invoke(responseException);
                    }
                }
                f41541i.getValue().clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object n(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.Boolean>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.account.AccountManager$isAccountReady$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.account.AccountManager$isAccountReady$1 r0 = (com.startshorts.androidplayer.manager.account.AccountManager$isAccountReady$1) r0
            int r1 = r0.f41549j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41549j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.account.AccountManager$isAccountReady$1 r0 = new com.startshorts.androidplayer.manager.account.AccountManager$isAccountReady$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f41547h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41549j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L61
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L31:
            kotlin.f.b(r6)
            r0.f41549j = r3
            kotlinx.coroutines.e r6 = new kotlinx.coroutines.e
            rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
            r6.<init>(r2, r3)
            r6.H()
            com.startshorts.androidplayer.manager.account.AccountManager r2 = com.startshorts.androidplayer.manager.account.AccountManager.f41533a
            com.startshorts.androidplayer.manager.account.AccountManager$a r3 = new com.startshorts.androidplayer.manager.account.AccountManager$a
            r3.<init>(r6)
            com.startshorts.androidplayer.manager.account.AccountManager$b r4 = new com.startshorts.androidplayer.manager.account.AccountManager$b
            r4.<init>(r6)
            r2.f(r3, r4)
            java.lang.Object r6 = r6.B()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            if (r6 != r2) goto L5e
            kotlin.coroutines.jvm.internal.f.c(r0)
        L5e:
            if (r6 != r1) goto L61
            return r1
        L61:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.account.AccountManager.n(rs.c):java.lang.Object");
    }

    public final void o(@Nullable Account account, boolean z10, boolean z11) {
        String registerCode;
        boolean z12;
        Logger.f41511a.h("AccountManager", "logout -> tokenExpired(" + z10 + ") tokenError(" + z11 + ')');
        RetrofitFactory.f41776a.b();
        String str = null;
        if (z10) {
            if (account != null) {
                if (account.isPrimary()) {
                    h0.f51735a.e(new Runnable() { // from class: be.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            AccountManager.q();
                        }
                    });
                } else if (account.isRegisterCodeInitialized()) {
                    registerCode = account.getRegisterCode();
                }
            }
            registerCode = null;
        } else {
            if (z11 && account != null && account.isRegisterCodeInitialized()) {
                registerCode = account.getRegisterCode();
            }
            registerCode = null;
        }
        AccountRepo.f43052a.f1(null);
        try {
            FirebaseAuth.getInstance().l();
        } catch (Exception e10) {
            Logger.f41511a.e("AccountManager", "signOut exception -> " + e10.getMessage());
        }
        EpisodeRepo episodeRepo = EpisodeRepo.f44056a;
        episodeRepo.h();
        episodeRepo.g();
        CampaignRepo.f43678a.o();
        ud.b.f68412a.c();
        if (z11) {
            z12 = DeviceUtil.f48146a.c();
        } else {
            z12 = false;
        }
        if (!z12) {
            AccountRepo accountRepo = AccountRepo.f43052a;
            Account s02 = accountRepo.s0();
            if (s02 != null) {
                Logger.f41511a.h("AccountManager", "logout -> use touristAccount(" + s02.getUserCode() + ')');
                f41535c = false;
                f41538f = false;
                accountRepo.f1(s02);
                if (ud.a.f68411a.t()) {
                    PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
                    purchaseRepo.x(false);
                    purchaseRepo.u();
                    PushRepo.f44374a.C();
                }
            }
            str = registerCode;
        }
        au.c.d().l(new RefreshAccountEvent());
        AccountRepo accountRepo2 = AccountRepo.f43052a;
        if (!accountRepo2.w0() && ud.a.f68411a.t()) {
            accountRepo2.W(str);
        }
    }

    public final void s(boolean z10) {
        f41538f = z10;
    }

    public final void t(boolean z10) {
        f41535c = z10;
    }

    public final void v() {
        if (f41542j != null) {
            return;
        }
        e();
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.M0() || (accountRepo.z0() && accountRepo.o0() - DeviceUtil.f48146a.K() < UnityAdsConstants.Timeout.INIT_TIMEOUT_MS)) {
            if (accountRepo.M0()) {
                AccountRepo.c1(accountRepo, false, null, 3, null);
            }
            f41542j = CoroutineUtil.n(CoroutineUtil.f48072a, 30000L, null, new Function1() { // from class: be.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit w10;
                    w10 = AccountManager.w(((Integer) obj).intValue());
                    return w10;
                }
            }, null, 10, null);
        }
    }
}
