package com.startshorts.androidplayer.viewmodel.auth;

import android.app.Activity;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.viewmodel.auth.BindInfoViewModel;
import com.startshorts.androidplayer.viewmodel.auth.a;
import com.startshorts.androidplayer.viewmodel.auth.b;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import java.lang.ref.WeakReference;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: BindViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BindInfoViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f48210g = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48211e = kotlin.c.b(new Function0() { // from class: pk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData G;
            G = BindInfoViewModel.G();
            return G;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i<FirebaseAuthManager> f48212f = kotlin.c.b(new Function0() { // from class: pk.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager F;
            F = BindInfoViewModel.F();
            return F;
        }
    });

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ke.a {
        b() {
        }

        @Override // ke.a
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
        }

        @Override // ke.a
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            o.b(BindInfoViewModel.this.D(), new b.d(str));
        }
    }

    /* compiled from: BindViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements ke.b {
        c() {
        }

        @Override // ke.b
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
        }

        @Override // ke.b
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            o.b(BindInfoViewModel.this.D(), new b.d(str));
        }
    }

    private final void C(int i10) {
        if (i10 != 10) {
            if (i10 != 20) {
                if (i10 != 50) {
                    if (i10 != 60) {
                        if (i10 == 100) {
                            EventManager eventManager = EventManager.f42463a;
                            Bundle bundle = new Bundle();
                            bundle.putString("scene", "account_info");
                            bundle.putString("type", "huawei");
                            Unit unit = Unit.f60915a;
                            EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
                            if (AccountRepo.f43052a.J0()) {
                                this.f48212f.getValue().c(AuthReason.BIND);
                                return;
                            } else {
                                this.f48212f.getValue().c(AuthReason.LOGIN);
                                return;
                            }
                        }
                        return;
                    }
                    o.b(D(), b.C0650b.f48270a);
                    return;
                }
                o.b(D(), b.a.f48269a);
                return;
            }
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "account_info");
            bundle2.putString("type", "facebook");
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "login_click", bundle2, 0L, 4, null);
            if (AccountRepo.f43052a.J0()) {
                this.f48212f.getValue().a(AuthReason.BIND);
                return;
            } else {
                this.f48212f.getValue().a(AuthReason.LOGIN);
                return;
            }
        }
        EventManager eventManager3 = EventManager.f42463a;
        Bundle bundle3 = new Bundle();
        bundle3.putString("scene", "account_info");
        bundle3.putString("type", "google");
        Unit unit3 = Unit.f60915a;
        EventManager.s0(eventManager3, "login_click", bundle3, 0L, 4, null);
        if (AccountRepo.f43052a.J0()) {
            this.f48212f.getValue().b(AuthReason.BIND);
        } else {
            this.f48212f.getValue().b(AuthReason.LOGIN);
        }
    }

    private final void E(Activity activity) {
        if (this.f48212f.isInitialized()) {
            return;
        }
        v("initAuthManager");
        FirebaseAuthManager value = this.f48212f.getValue();
        value.p(new WeakReference<>(activity));
        value.F("account_info");
        if (AccountRepo.f43052a.J0()) {
            value.r(new b());
        } else {
            value.s(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseAuthManager F() {
        return new FirebaseAuthManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData G() {
        return new MutableLiveData();
    }

    private final r I() {
        return BaseViewModel.i(this, "queryBindInfoList", false, new BindInfoViewModel$queryBindInfoList$1(this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<com.startshorts.androidplayer.viewmodel.auth.b> D() {
        return (MutableLiveData) this.f48211e.getValue();
    }

    public final void H(@NotNull com.startshorts.androidplayer.viewmodel.auth.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.d) {
            I();
        } else if (intent instanceof a.c) {
            E(((a.c) intent).a());
        } else if (intent instanceof a.C0649a) {
            C(((a.C0649a) intent).a());
        } else if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            this.f48212f.getValue().l(bVar.a(), bVar.c(), bVar.d(), bVar.b());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "BindInfoViewModel";
    }
}
