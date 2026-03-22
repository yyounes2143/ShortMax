package com.startshorts.androidplayer.manager.auth;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.sdk.AppLovinEventTypes;
import com.hades.aar.activity.IDActivity;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.eventbus.LoginSuccessEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.u;
import java.lang.ref.WeakReference;
import ka.j;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ng.e;
import ng.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FirebaseAuthManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFirebaseAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n1#2:379\n*E\n"})
/* loaded from: classes6.dex */
public class FirebaseAuthManager extends com.startshorts.androidplayer.manager.auth.a {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final b f42108l = new b(null);
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f42109k;

    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements j {
        a() {
        }

        @Override // ka.j
        public void a(String tag, String str) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Logger.f41511a.e(tag, str);
        }

        @Override // ka.j
        public void b(AuthType authType, boolean z10, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            FirebaseAuthManager firebaseAuthManager = FirebaseAuthManager.this;
            firebaseAuthManager.f("authType(" + authType + ") errorCode(" + i10 + ") mAuthReason(" + FirebaseAuthManager.this.k() + ") errMsg(" + str + ')');
            int i11 = 1;
            if (str == null || !StringsKt.Z(str, "network", true)) {
                if (str != null && StringsKt.Z(str, "CANCELED", true)) {
                    i11 = 0;
                } else {
                    i11 = 3;
                }
            }
            if (FirebaseAuthManager.this.k() == AuthReason.LOGIN) {
                FirebaseAuthManager.this.C(authType, i11, str, str);
            } else if (FirebaseAuthManager.this.k() == AuthReason.BIND) {
                FirebaseAuthManager.this.A(authType, i11, str, str);
            }
        }

        @Override // ka.j
        public void c(Activity activity, AuthType authType, String str, String firebaseToken, AuthUser authUser) {
            ke.a h10;
            Intrinsics.checkNotNullParameter(authType, "authType");
            Intrinsics.checkNotNullParameter(firebaseToken, "firebaseToken");
            FirebaseAuthManager firebaseAuthManager = FirebaseAuthManager.this;
            firebaseAuthManager.m("onSuccess -> authType(" + authType + ") mAuthReason(" + FirebaseAuthManager.this.k() + ')');
            if (authType != AuthType.PHONE_SEND && authType != AuthType.EMAIL_SEND) {
                if (FirebaseAuthManager.this.k() == AuthReason.LOGIN) {
                    FirebaseAuthManager firebaseAuthManager2 = FirebaseAuthManager.this;
                    if (str == null) {
                        str = "";
                    }
                    firebaseAuthManager2.E(authType, str, firebaseToken);
                } else if (FirebaseAuthManager.this.k() == AuthReason.BIND) {
                    FirebaseAuthManager firebaseAuthManager3 = FirebaseAuthManager.this;
                    if (str == null) {
                        str = "";
                    }
                    firebaseAuthManager3.z(authType, str, firebaseToken);
                }
            } else if (FirebaseAuthManager.this.k() == AuthReason.LOGIN) {
                ke.b j10 = FirebaseAuthManager.this.j();
                if (j10 != null) {
                    j10.a(authType);
                }
            } else if (FirebaseAuthManager.this.k() == AuthReason.BIND && (h10 = FirebaseAuthManager.this.h()) != null) {
                h10.a(authType);
            }
        }

        @Override // ka.j
        public void d(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            FirebaseAuthManager firebaseAuthManager = FirebaseAuthManager.this;
            firebaseAuthManager.f("onCancelled -> authType(" + authType + ')');
            String d10 = u.f51776a.d(R$string.common_user_canceled);
            if (FirebaseAuthManager.this.k() == AuthReason.LOGIN) {
                FirebaseAuthManager.this.C(authType, 0, d10, d10);
            } else if (FirebaseAuthManager.this.k() == AuthReason.BIND) {
                FirebaseAuthManager.this.A(authType, 0, d10, d10);
            }
        }
    }

    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AuthType.values().length];
            try {
                iArr[AuthType.GOOGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AuthType.HUAWEI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AuthType.FACEBOOK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FirebaseAuthManager() {
        q(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(AuthType authType, int i10, String str, String str2) {
        String str3;
        if (authType == AuthType.FACEBOOK || authType == AuthType.GOOGLE || authType == AuthType.HUAWEI) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", this.f42109k);
            int i11 = c.$EnumSwitchMapping$0[authType.ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    str3 = "facebook";
                } else {
                    str3 = "huawei";
                }
            } else {
                str3 = "google";
            }
            bundle.putString("type", str3);
            if (i10 == 0) {
                bundle.putString("is_success", "2");
            } else {
                bundle.putString("is_success", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                bundle.putString("reason", eventManager.k1(i10));
            }
            bundle.putString("err_msg", str2);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "account_login_result", bundle, 0L, 4, null);
        }
        ke.a h10 = h();
        if (h10 != null) {
            h10.b(authType, i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(AuthType authType) {
        String str;
        if (authType == AuthType.FACEBOOK || authType == AuthType.GOOGLE || authType == AuthType.HUAWEI) {
            int i10 = c.$EnumSwitchMapping$0[authType.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    str = "facebook";
                } else {
                    str = "huawei";
                }
            } else {
                str = "google";
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", this.f42109k);
            bundle.putString("type", str);
            bundle.putString("is_success", "1");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "account_login_result", bundle, 0L, 4, null);
        }
        AccountRepo.f43052a.V0();
        ke.a h10 = h();
        if (h10 != null) {
            h10.a(authType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(AuthType authType, int i10, String str, String str2) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f42109k);
        int i11 = c.$EnumSwitchMapping$0[authType.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    bundle.putString("type", "facebook");
                }
            } else {
                bundle.putString("type", "huawei");
            }
        } else {
            bundle.putString("type", "google");
        }
        if (i10 == 0) {
            bundle.putString("is_success", "2");
        } else {
            bundle.putString("is_success", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            bundle.putString("reason", eventManager.k1(i10));
        }
        bundle.putString("err_msg", str2);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "account_login_result", bundle, 0L, 4, null);
        ke.b j10 = j();
        if (j10 != null) {
            j10.b(authType, i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(AuthType authType, String str, Account account) {
        IDActivity iDActivity;
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (Intrinsics.areEqual(accountRepo.t0(), account.getUserCode())) {
            accountRepo.V();
            PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
            purchaseRepo.x(false);
            purchaseRepo.u();
            PushRepo.f44374a.C();
        }
        account.setType(2);
        account.setToken(str);
        accountRepo.f1(account);
        accountRepo.g1(account.getAudienceIdList());
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            g.f62917a.e(iDActivity, accountRepo.t0());
        }
        au.c.d().l(new RefreshAccountEvent());
        accountRepo.V0();
        if (authType == AuthType.FACEBOOK) {
            au.c.d().l(new LoginSuccessEvent(1));
        } else if (authType == AuthType.GOOGLE) {
            au.c.d().l(new LoginSuccessEvent(2));
        } else if (authType == AuthType.HUAWEI) {
            au.c.d().l(new LoginSuccessEvent(3));
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f42109k);
        int i10 = c.$EnumSwitchMapping$0[authType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    bundle.putString("type", "facebook");
                }
            } else {
                bundle.putString("type", "huawei");
            }
        } else {
            bundle.putString("type", "google");
        }
        bundle.putString("is_success", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "account_login_result", bundle, 0L, 4, null);
        ke.b j10 = j();
        if (j10 != null) {
            j10.a(authType);
        }
        e.f62912a.e();
        RewardsRepo.f44515a.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(AuthType authType, String str, String str2) {
        Logger logger = Logger.f41511a;
        logger.h("FirebaseAuthManager", "authType ->" + authType.name() + ", thirdPartyToken ->" + str + ", firebaseToken ->" + str2);
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 == null) {
            logger.e("FirebaseAuthManager", "login failed -> AccountManager.getAccount() is null");
            C(authType, 3, u.f51776a.d(R$string.common_unknown_exception), "account is null");
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, AppLovinEventTypes.USER_LOGGED_IN, false, new FirebaseAuthManager$login$1(authType, a02, str, str2, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(AuthType authType, String str, String str2) {
        CoroutineUtil.l(CoroutineUtil.f48072a, "bind", false, new FirebaseAuthManager$bind$1(str, str2, this, authType, null), 2, null);
    }

    public final void F(@Nullable String str) {
        this.f42109k = str;
    }

    @Override // com.startshorts.androidplayer.manager.auth.a
    @NotNull
    public String i() {
        return "FirebaseAuthManager";
    }
}
