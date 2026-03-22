package com.startshorts.androidplayer.viewmodel.auth;

import androidx.lifecycle.MutableLiveData;
import com.hades.aar.activity.IDActivity;
import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel;
import com.startshorts.androidplayer.viewmodel.auth.e;
import com.startshorts.androidplayer.viewmodel.auth.f;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import java.lang.ref.WeakReference;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PhoneAuthViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPhoneAuthViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuthViewModel.kt\ncom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"})
/* loaded from: classes7.dex */
public final class PhoneAuthViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f48226j = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<f> f48227e = new MutableLiveData<>(f.b.f48291a);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i<FirebaseAuthManager> f48228f = kotlin.c.b(new Function0() { // from class: pk.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager R;
            R = PhoneAuthViewModel.R();
            return R;
        }
    });
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private AuthReason f48229g = AuthReason.BIND;

    /* renamed from: h  reason: collision with root package name */
    private int f48230h = 1;

    /* renamed from: i  reason: collision with root package name */
    private boolean f48231i;

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PhoneAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ke.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FirebaseAuthManager f48232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PhoneAuthViewModel f48233b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ FragmentContainer f48234c;

        b(FirebaseAuthManager firebaseAuthManager, PhoneAuthViewModel phoneAuthViewModel, FragmentContainer fragmentContainer) {
            this.f48232a = firebaseAuthManager;
            this.f48233b = phoneAuthViewModel;
            this.f48234c = fragmentContainer;
        }

        @Override // ke.a
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            this.f48232a.m("bindResultListener succeed");
            PhoneAuthViewModel.Q(this.f48233b, authType);
        }

        @Override // ke.a
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            PhoneAuthViewModel.P(this.f48233b, this.f48234c, authType, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(String str, String str2) {
        o.b(this.f48227e, new f.h(str, null, AuthReason.LOGIN));
        f("verifyOTP onFailure -> otp=" + str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(String str, Account account, String str2) {
        IDActivity iDActivity;
        v("verifyOTP succeed-> token=" + str + " newAccount=" + account + " otp=" + str2);
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
            ng.g.f62917a.e(iDActivity, accountRepo.t0());
        }
        o.b(this.f48227e, new f.i(null, AuthReason.LOGIN));
        au.c.d().l(new RefreshAccountEvent());
        accountRepo.V0();
        RewardsRepo.f44515a.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(PhoneAuthViewModel phoneAuthViewModel, FragmentContainer fragmentContainer, AuthType authType, String str) {
        AuthType authType2 = AuthType.PHONE_SEND;
        if (authType == authType2) {
            phoneAuthViewModel.f("onResultFail -> authType=PHONE_SEND");
            o.b(phoneAuthViewModel.f48227e, new f.e(authType2, str, false, 4, null));
            return;
        }
        phoneAuthViewModel.f("onResultFail -> authType=" + authType + ",msg=" + str);
        if (str == null) {
            str = "";
        }
        String str2 = null;
        if (StringsKt.b0(str, "The sms verification code used to create the phone auth credential is invalid", false, 2, null)) {
            if (fragmentContainer != null) {
                str2 = fragmentContainer.getString(R$string.phone_auth_fragment_check_content);
            }
        } else if (fragmentContainer != null) {
            str2 = fragmentContainer.getString(R$string.common_unknown_exception);
        }
        o.b(phoneAuthViewModel.f48227e, new f.h(str2, authType, phoneAuthViewModel.f48229g));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(PhoneAuthViewModel phoneAuthViewModel, AuthType authType) {
        AuthType authType2 = AuthType.PHONE_SEND;
        if (authType == authType2) {
            phoneAuthViewModel.v("onResultSucceed -> authType=PHONE_SEND");
            o.b(phoneAuthViewModel.f48227e, new f.C0652f(authType2));
            phoneAuthViewModel.f48230h++;
            return;
        }
        phoneAuthViewModel.v("onResultSucceed -> authType=" + authType);
        o.b(phoneAuthViewModel.f48227e, new f.i(authType, phoneAuthViewModel.f48229g));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseAuthManager R() {
        return new FirebaseAuthManager();
    }

    private final void T() {
        BaseViewModel.i(this, "regionCode", false, new PhoneAuthViewModel$regionCode$1(this, null), 2, null);
    }

    private final void U(String str, String str2) {
        o.b(this.f48227e, f.g.f48299a);
        BaseViewModel.i(this, "sendOTP", false, new PhoneAuthViewModel$sendOTP$1(this, str, str2, null), 2, null);
    }

    private final void W(String str, String str2, String str3) {
        o.b(this.f48227e, f.j.f48305a);
        BaseViewModel.i(this, "verifyOTP", false, new PhoneAuthViewModel$verifyOTP$1(this, str, str2, str3, null), 2, null);
    }

    @NotNull
    public final AuthReason K() {
        return this.f48229g;
    }

    @NotNull
    public final MutableLiveData<f> L() {
        return this.f48227e;
    }

    public final void O(@Nullable FragmentContainer fragmentContainer) {
        if (this.f48228f.isInitialized()) {
            return;
        }
        FirebaseAuthManager value = this.f48228f.getValue();
        value.p(new WeakReference<>(fragmentContainer));
        if (this.f48229g == AuthReason.BIND) {
            value.r(new b(value, this, fragmentContainer));
        }
    }

    public final void S(@NotNull e intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof e.b) {
            e.b bVar = (e.b) intent;
            U(bVar.a(), bVar.b());
        } else if (intent instanceof e.c) {
            e.c cVar = (e.c) intent;
            W(cVar.b(), cVar.a(), cVar.c());
        } else if (intent instanceof e.a) {
            T();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void V(@NotNull AuthReason authReason) {
        Intrinsics.checkNotNullParameter(authReason, "<set-?>");
        this.f48229g = authReason;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "PhoneAuthViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void w() {
        if (this.f48228f.isInitialized()) {
            this.f48228f.getValue().n();
        }
        this.f48230h = 1;
    }
}
