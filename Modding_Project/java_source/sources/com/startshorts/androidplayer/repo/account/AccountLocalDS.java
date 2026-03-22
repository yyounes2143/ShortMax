package com.startshorts.androidplayer.repo.account;

import com.jiuzhou.cdn.repo.CdnRepo;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.account.ExtraUserInfo;
import com.startshorts.androidplayer.bean.unlock.RetainConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
/* compiled from: AccountLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccountLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLocalDS.kt\ncom/startshorts/androidplayer/repo/account/AccountLocalDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,719:1\n1#2:720\n*E\n"})
/* loaded from: classes7.dex */
public final class AccountLocalDS {
    @NotNull

    /* renamed from: e */
    public static final a f42996e = new a(null);
    @Nullable

    /* renamed from: b */
    private Account f42998b;
    @NotNull

    /* renamed from: a */
    private final Object f42997a = new Object();

    /* renamed from: c */
    private int f42999c = -1;
    @NotNull

    /* renamed from: d */
    private final qt.a f43000d = d.b(false, 1, null);

    /* compiled from: AccountLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r N() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "saveAccount", false, new AccountLocalDS$save$1(this, null), 2, null);
    }

    public final void O() {
        Account account = this.f42998b;
        Integer num = null;
        if (account == null) {
            int i10 = this.f42999c;
            if (i10 != 1) {
                if (i10 != 2) {
                    ud.b bVar = ud.b.f68412a;
                    bVar.n5(null);
                    bVar.x4(null);
                    return;
                }
                ud.b.f68412a.x4(null);
                return;
            }
            ud.b.f68412a.n5(null);
            return;
        }
        if (account != null) {
            num = Integer.valueOf(account.getType());
        }
        if (num != null && num.intValue() == 1) {
            ud.b.f68412a.n5(this.f42998b);
        } else if (num != null && num.intValue() == 2) {
            ud.b.f68412a.x4(this.f42998b);
        }
    }

    public static /* synthetic */ void Q(AccountLocalDS accountLocalDS, Account account, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        accountLocalDS.P(account, z10);
    }

    public final boolean A() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isPix615DayToWeekExperiment()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    @Nullable
    public final Account A0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setDaySub(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean B() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isDaySub()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    @Nullable
    public final Account B0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setPaid(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean C() {
        boolean z10;
        Boolean isSubscriptionBlack;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null && (isSubscriptionBlack = account.isSubscriptionBlack()) != null) {
                z10 = isSubscriptionBlack.booleanValue();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Nullable
    public final Account C0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setPix610(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean D() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isIaaUser()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    @Nullable
    public final Account D0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setPix615DayToWeekExperiment(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean E() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isIdnTelkomsel()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public final boolean F() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isPix610()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public final boolean G() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isPrimary()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    public final boolean H() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                z10 = account.isShowMobileLogin();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public final boolean I() {
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            boolean z10 = false;
            if (account == null) {
                return false;
            }
            boolean isSubscription = account.isSubscription();
            boolean isSubsExpired = account.isSubsExpired();
            long subscriptionEndTime = account.getSubscriptionEndTime();
            if ((isSubscription && isSubsExpired) || (!isSubscription && subscriptionEndTime != -1)) {
                z10 = true;
            }
            return z10;
        }
    }

    public final boolean J() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                z10 = account.isThirdSubscription();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public final boolean K() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            z10 = false;
            if (account != null) {
                if (account.isTourist()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    @Nullable
    public final Account L() {
        Account j12;
        synchronized (this.f42997a) {
            try {
                ud.b bVar = ud.b.f68412a;
                j12 = bVar.j1();
                if (j12 == null) {
                    j12 = bVar.a2();
                }
                if (j12 != null) {
                    Logger logger = Logger.f41511a;
                    logger.e("AccountLocalDS", "exist account -> id(" + j12.getUserCode() + ") type(" + j12.getType() + ')');
                    P(j12, false);
                } else {
                    Logger.f41511a.e("AccountLocalDS", "not find account");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j12;
    }

    public final void M() {
        Account account = this.f42998b;
        if (account == null) {
            Logger.f41511a.h("AccountLocalDS", "logSubsInfo -> account is null");
            return;
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("logSubsInfo -> hasSubscribed(");
        AccountRepo accountRepo = AccountRepo.f43052a;
        sb2.append(accountRepo.z0());
        sb2.append(") isSubsPro(");
        sb2.append(accountRepo.i1());
        sb2.append(") isSubsExpired(");
        sb2.append(I());
        sb2.append(") subscriptionType(");
        sb2.append(account.getSubscriptionType());
        sb2.append(") curTime(");
        sb2.append(DeviceUtil.f48146a.K());
        sb2.append(") subscriptionEndTime(");
        sb2.append(account.getSubscriptionEndTime());
        sb2.append(')');
        logger.h("AccountLocalDS", sb2.toString());
    }

    public final void P(@Nullable Account account, boolean z10) {
        synchronized (this.f42997a) {
            try {
                this.f42998b = account;
                if (z10) {
                    if (account == null) {
                        O();
                    } else {
                        N();
                    }
                }
                if (account != null) {
                    this.f42999c = account.getType();
                    CdnRepo cdnRepo = CdnRepo.f25579a;
                    cdnRepo.j(account.getUserCode());
                    String countryCode = account.getCountryCode();
                    if (countryCode == null) {
                        countryCode = "";
                    }
                    cdnRepo.h(countryCode);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void R(@Nullable String str) {
        Logger logger = Logger.f41511a;
        logger.h("AccountLocalDS", "接口返回的client ip信息：" + str);
        ud.b bVar = ud.b.f68412a;
        if (str == null) {
            str = "";
        }
        bVar.p3(str);
    }

    public final void S() {
        Account account;
        synchronized (this.f42997a) {
            try {
                String m10 = DeviceUtil.f48146a.m();
                if (m10.length() != 0 && (account = this.f42998b) != null) {
                    account.setCountryCode(m10);
                    N();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void T(@Nullable ExtraUserInfo extraUserInfo) {
        ud.b.f68412a.G3(extraUserInfo);
    }

    @Nullable
    public final Account U(boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setRecharged(true);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account V(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setAllowRecharge(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account W(long j10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setAttributionTimestamp(j10);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account X(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setAutoUnlock(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account Y(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setSubscriptionBlack(Boolean.valueOf(z10));
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account Z(@NotNull String campaignShortPlayCodeV2, boolean z10) {
        Account account;
        Intrinsics.checkNotNullParameter(campaignShortPlayCodeV2, "campaignShortPlayCodeV2");
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setCampaignShortPlayCodeV2(campaignShortPlayCodeV2);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account a0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setCampaignUnlockType(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account b0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setCampaignUnlockTypeV2(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean c() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                z10 = account.getAutoUnlock();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Nullable
    public final Account c0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setCanMerge(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean d() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                z10 = account.getCanMerge();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Nullable
    public final Account d0(int i10, int i11, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setCoins(i10);
                account.setBonus(i11);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final void e() {
        Account account = this.f42998b;
        if (account != null) {
            account.setSubscription(false);
            account.setSubscriptionType(-1);
            account.setSubscriptionEndTime(-1L);
            account.setReceiveType(-1);
            N();
        }
    }

    public final void e0(@NotNull String countryCode, boolean z10) {
        Account account;
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        synchronized (this.f42997a) {
            try {
                if (countryCode.length() != 0 && (account = this.f42998b) != null) {
                    account.setCountryCode(countryCode);
                    if (z10) {
                        N();
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void f() {
        ud.b.f68412a.n5(null);
    }

    @Nullable
    public final Account f0(@Nullable String str, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setCurrentSubscriptionOrderNo(str);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account g() {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
        }
        return account;
    }

    @Nullable
    public final Account g0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setDaysOfActiveSubscription(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean h() {
        Account account = this.f42998b;
        if (account != null) {
            return account.getAllowRecharge();
        }
        return true;
    }

    @Nullable
    public final Account h0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setDaysOfCancelSubscription(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final int i() {
        int i10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                i10 = account.getBonus();
            } else {
                i10 = 0;
            }
        }
        return i10;
    }

    @Nullable
    public final Account i0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setDisplayThirdUnsubscribe(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final int j() {
        int i10;
        Integer campaignUnlockType;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null && (campaignUnlockType = account.getCampaignUnlockType()) != null) {
                i10 = campaignUnlockType.intValue();
            } else {
                i10 = 3;
            }
        }
        return i10;
    }

    @Nullable
    public final Account j0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setFirebaseSource(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final String k() {
        return ud.b.f68412a.e0();
    }

    @Nullable
    public final Account k0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setHasSubscription(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final int l() {
        int i10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                i10 = account.getCoins();
            } else {
                i10 = 0;
            }
        }
        return i10;
    }

    @Nullable
    public final Account l0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setIaaUser(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @NotNull
    public final String m() {
        String str;
        synchronized (this.f42997a) {
            try {
                Account account = this.f42998b;
                if (account != null) {
                    str = account.getCountryCode();
                    if (str == null) {
                    }
                }
                str = "";
            } finally {
            }
        }
        return str;
    }

    @Nullable
    public final Account m0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setIdnTelkomsel(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @NotNull
    public final String n() {
        String m10 = m();
        if (m10.length() == 0) {
            m10 = DeviceUtil.f48146a.l().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(m10, "toLowerCase(...)");
        }
        if (m10.length() == 0) {
            return DeviceUtil.f48146a.m();
        }
        return m10;
    }

    @Nullable
    public final Account n0(@Nullable Integer num, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setLastPayType(num);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final ExtraUserInfo o() {
        return ud.b.f68412a.v0();
    }

    @Nullable
    public final Account o0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setNewRegisterUser(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final int p() {
        int i10;
        Integer firebaseSource;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null && (firebaseSource = account.getFirebaseSource()) != null) {
                i10 = firebaseSource.intValue();
            } else {
                i10 = -1;
            }
        }
        return i10;
    }

    @Nullable
    public final Account p0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setOneTouchPayOpen(Boolean.valueOf(z10));
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean q() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                z10 = account.getHasSubscription();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Nullable
    public final Account q0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setRenewing(Boolean.valueOf(z10));
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final RetainConfig r() {
        Account account = this.f42998b;
        if (account != null) {
            return account.getDramaBoxConfig();
        }
        return null;
    }

    @Nullable
    public final Account r0(@Nullable RetainConfig retainConfig, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setDramaBoxConfig(retainConfig);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final long s() {
        long j10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                j10 = account.getSubscriptionEndTime();
            } else {
                j10 = -1;
            }
        }
        return j10;
    }

    @Nullable
    public final Account s0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setShowMobileLogin(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final int t() {
        int i10;
        Integer receiveType;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null && (receiveType = account.getReceiveType()) != null) {
                i10 = receiveType.intValue();
            } else {
                i10 = -1;
            }
            if (i10 == -1) {
                return 0;
            }
            return i10;
        }
    }

    @Nullable
    public final Account t0(boolean z10, int i10, long j10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setSubscriptionType(i10);
                account.setSubscriptionEndTime(j10);
                account.setSubscription(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final int u() {
        int i10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                i10 = account.getSubscriptionType();
            } else {
                i10 = -1;
            }
        }
        return i10;
    }

    @Nullable
    public final Account u0(@Nullable Integer num, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setSubscriptionOrderType(num);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final String v() {
        String str;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                str = account.getToken();
            } else {
                str = null;
            }
        }
        return str;
    }

    @Nullable
    public final Account v0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setReceiveType(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @Nullable
    public final Account w() {
        return ud.b.f68412a.a2();
    }

    @Nullable
    public final Account w0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setSupportOneTouchPayment(Boolean.valueOf(z10));
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    @NotNull
    public final String x() {
        String str;
        synchronized (this.f42997a) {
            try {
                Account account = this.f42998b;
                if (account != null) {
                    str = account.getUserCode();
                    if (str == null) {
                    }
                }
                str = "";
            } finally {
            }
        }
        return str;
    }

    @Nullable
    public final Account x0(boolean z10, boolean z11) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setThirdSubscription(z10);
                if (z11) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean y() {
        boolean z10;
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            if (account != null) {
                z10 = account.isRecharged();
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    @Nullable
    public final Account y0(@Nullable Integer num, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setTotalPayCount(num);
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }

    public final boolean z() {
        synchronized (this.f42997a) {
            Account account = this.f42998b;
            boolean z10 = false;
            if (account == null) {
                return false;
            }
            boolean isSubscription = account.isSubscription();
            boolean isSubsExpired = account.isSubsExpired();
            if (isSubscription && !isSubsExpired) {
                z10 = true;
            }
            return z10;
        }
    }

    @Nullable
    public final Account z0(int i10, boolean z10) {
        Account account;
        synchronized (this.f42997a) {
            account = this.f42998b;
            if (account != null) {
                account.setTripartiteCode(Integer.valueOf(i10));
                if (z10) {
                    N();
                }
            } else {
                account = null;
            }
        }
        return account;
    }
}
