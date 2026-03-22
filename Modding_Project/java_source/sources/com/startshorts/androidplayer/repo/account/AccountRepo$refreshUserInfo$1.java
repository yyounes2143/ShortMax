package com.startshorts.androidplayer.repo.account;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.log.Logger;
import gt.e;
import gt.g;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$refreshUserInfo$1", f = "AccountRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME, 748}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$refreshUserInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43083h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f43084i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function1<Boolean, Unit> f43085j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccountRepo.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$refreshUserInfo$1$2", f = "AccountRepo.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.account.AccountRepo$refreshUserInfo$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43088h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f43089i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Object f43090j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super Boolean, Unit> function1, Object obj, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f43089i = function1;
            this.f43090j = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass2(this.f43089i, this.f43090j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f43088h == 0) {
                f.b(obj);
                this.f43089i.invoke(kotlin.coroutines.jvm.internal.a.a(Result.j(this.f43090j)));
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AccountRepo$refreshUserInfo$1(Function1<? super Boolean, Unit> function1, rs.c<? super AccountRepo$refreshUserInfo$1> cVar) {
        super(2, cVar);
        this.f43085j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        AccountRepo$refreshUserInfo$1 accountRepo$refreshUserInfo$1 = new AccountRepo$refreshUserInfo$1(this.f43085j, cVar);
        accountRepo$refreshUserInfo$1.f43084i = obj;
        return accountRepo$refreshUserInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$refreshUserInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        g0 g0Var;
        AccountRemoteDS m02;
        Object i10;
        boolean z10;
        boolean z11;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f43083h;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            g0Var = (g0) this.f43084i;
            f.b(obj);
            i10 = ((Result) obj).n();
        } else {
            f.b(obj);
            g0Var = (g0) this.f43084i;
            m02 = AccountRepo.f43052a.m0();
            this.f43084i = g0Var;
            this.f43083h = 1;
            i10 = m02.i(this);
            if (i10 == f10) {
                return f10;
            }
        }
        g0 g0Var2 = g0Var;
        if (Result.j(i10)) {
            Account account = (Account) i10;
            if (account != null) {
                String userCode = account.getUserCode();
                AccountRepo accountRepo = AccountRepo.f43052a;
                if (Intrinsics.areEqual(userCode, accountRepo.t0())) {
                    if (account.isRecharged()) {
                        accountRepo.h1(false);
                    }
                    accountRepo.k1(account.getAllowRecharge(), false);
                    accountRepo.g1(account.getAudienceIdList());
                    String countryCode = account.getCountryCode();
                    if (countryCode != null) {
                        accountRepo.x1(countryCode, false);
                    }
                    Integer firebaseSource = account.getFirebaseSource();
                    if (firebaseSource != null) {
                        accountRepo.C1(firebaseSource.intValue(), false);
                    }
                    Integer tripartiteCode = account.getTripartiteCode();
                    if (tripartiteCode != null) {
                        accountRepo.U1(tripartiteCode.intValue(), false);
                    }
                    accountRepo.M1(account.isShowMobileLogin(), false);
                    accountRepo.v1(account.getCoins(), account.getBonus(), false);
                    accountRepo.t1(account.getCanMerge(), false);
                    if (account.isSubscription()) {
                        if (accountRepo.M0()) {
                            AccountRepo.O1(accountRepo, false, 0, 0L, false, 6, null);
                        }
                        accountRepo.N1(true, account.getSubscriptionType(), account.getSubscriptionEndTime(), true);
                    } else {
                        if (accountRepo.B0()) {
                            Logger.f41511a.e("AccountRepo", "mark subsProExpired");
                            ud.b bVar = ud.b.f68412a;
                            bVar.e5(true);
                            bVar.e4(accountRepo.q0());
                        }
                        AccountRepo.O1(accountRepo, false, 0, 0L, true, 6, null);
                    }
                    Integer receiveType = account.getReceiveType();
                    if (receiveType != null) {
                        accountRepo.Q1(receiveType.intValue(), false);
                    }
                    Boolean isSubscriptionBlack = account.isSubscriptionBlack();
                    if (isSubscriptionBlack != null) {
                        accountRepo.p1(isSubscriptionBlack.booleanValue(), false);
                    }
                    accountRepo.D1(account.getHasSubscription(), false);
                    Integer campaignUnlockType = account.getCampaignUnlockType();
                    if (campaignUnlockType != null) {
                        accountRepo.r1(campaignUnlockType.intValue(), false);
                    }
                    Integer campaignUnlockTypeV2 = account.getCampaignUnlockTypeV2();
                    if (campaignUnlockTypeV2 != null) {
                        accountRepo.s1(campaignUnlockTypeV2.intValue(), false);
                    }
                    accountRepo.S1(account.isThirdSubscription(), false);
                    String campaignShortPlayCodeV2 = account.getCampaignShortPlayCodeV2();
                    if (campaignShortPlayCodeV2 != null) {
                        accountRepo.q1(campaignShortPlayCodeV2, false);
                    }
                    if (account.getLastPayType() != null) {
                        accountRepo.H1(account.getLastPayType(), false);
                    }
                    if (account.getTotalPayCount() != null) {
                        accountRepo.T1(account.getTotalPayCount(), false);
                    }
                    if (account.getCurrentSubscriptionOrderNo() != null) {
                        accountRepo.y1(account.getCurrentSubscriptionOrderNo(), false);
                    }
                    if (account.getSubscriptionOrderType() != null) {
                        accountRepo.P1(account.getSubscriptionOrderType(), false);
                    }
                    if (account.getSupportOneTouchPayment() != null) {
                        Boolean supportOneTouchPayment = account.getSupportOneTouchPayment();
                        if (supportOneTouchPayment != null) {
                            z11 = supportOneTouchPayment.booleanValue();
                        } else {
                            z11 = false;
                        }
                        accountRepo.R1(z11, false);
                    }
                    if (account.getOneTouchPayOpen() != null) {
                        Boolean oneTouchPayOpen = account.getOneTouchPayOpen();
                        if (oneTouchPayOpen != null) {
                            z10 = oneTouchPayOpen.booleanValue();
                        } else {
                            z10 = false;
                        }
                        accountRepo.J1(z10, false);
                    }
                    Boolean isRenewing = account.isRenewing();
                    if (isRenewing != null) {
                        accountRepo.K1(isRenewing.booleanValue(), false);
                    }
                    Integer daysOfActiveSubscription = account.getDaysOfActiveSubscription();
                    if (daysOfActiveSubscription != null) {
                        accountRepo.z1(daysOfActiveSubscription.intValue(), false);
                    }
                    Integer daysOfCancelSubscription = account.getDaysOfCancelSubscription();
                    if (daysOfCancelSubscription != null) {
                        accountRepo.A1(daysOfCancelSubscription.intValue(), false);
                    }
                    accountRepo.W1(account.isPaid(), false);
                    accountRepo.X1(account.isPix610(), false);
                    accountRepo.F1(account.isIaaUser(), false);
                    accountRepo.G1(account.isIdnTelkomsel(), false);
                    accountRepo.B1(account.getDisplayThirdUnsubscribe(), false);
                    accountRepo.I1(account.getNewRegisterUser(), false);
                    accountRepo.Y1(account.isPix615DayToWeekExperiment(), false);
                    accountRepo.V1(account.isDaySub(), false);
                    accountRepo.l1(account.getAttributionTimestamp(), false);
                    accountRepo.L1(account.getDramaBoxConfig(), true);
                    g.d(g0Var2, null, null, new AccountRepo$refreshUserInfo$1$1$18(account, null), 3, null);
                }
            }
            return Unit.f60915a;
        }
        AccountRepo.f43057f = false;
        if (this.f43085j != null) {
            j1 c10 = q0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f43085j, i10, null);
            this.f43084i = null;
            this.f43083h = 2;
            if (e.g(c10, anonymousClass2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
