package com.startshorts.androidplayer.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.startup.AppInitializer;
import ca.g;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$anim;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.startshorts.androidplayer.bean.eventbus.HandleNotificationNavigatorCacheEvent;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.databinding.ActivityRoutingBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.repo.notification.NotificationRepo;
import com.startshorts.androidplayer.startup.ConfigureInitializer;
import com.startshorts.androidplayer.startup.GaidInitializer;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.base.PermissionActivity;
import com.startshorts.androidplayer.ui.view.act.ActAppOpenView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel;
import com.startshorts.androidplayer.viewmodel.routing.a;
import com.startshorts.androidplayer.viewmodel.routing.b;
import id.d;
import java.util.List;
import jk.e0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoutingActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RoutingActivity extends PermissionActivity<ActivityRoutingBinding> {
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final a f44913x = new a(null);

    /* renamed from: q  reason: collision with root package name */
    private boolean f44915q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f44916r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f44917s;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private ActAppOpenView f44919u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f44920v;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final i f44914p = kotlin.c.b(new Function0() { // from class: ph.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RoutingViewModel X;
            X = RoutingActivity.X(RoutingActivity.this);
            return X;
        }
    });
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private String f44918t = "icon";
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private Function0<Unit> f44921w = new Function0() { // from class: ph.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit Z;
            Z = RoutingActivity.Z();
            return Z;
        }
    };

    /* compiled from: RoutingActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RoutingActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends mk.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f44923b;

        b(Function0<Unit> function0) {
            this.f44923b = function0;
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            RoutingActivity.this.f44920v = false;
            NotificationRepo.f44301a.j();
            this.f44923b.invoke();
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            RoutingActivity.this.s("checkNotifyPermission onGranted");
            RoutingActivity.this.f44920v = false;
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", AdmobPreloadConfig.APP_OPEN);
            bundle.putString("from", "system");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "not_permission_success", bundle, 0L, 4, null);
            PushManager.f(PushManager.f42838a, false, 1, null);
            this.f44923b.invoke();
        }

        @Override // mk.b
        public void c() {
            super.c();
            RoutingActivity.this.s("checkNotifyPermission onRequest");
            RoutingActivity.this.f44920v = true;
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", AdmobPreloadConfig.APP_OPEN);
            bundle.putString("from", "system");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "system_not_permission_show", bundle, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoutingActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f44924a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f44924a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f44924a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f44924a.invoke(obj);
        }
    }

    private final void V(Function0<Unit> function0) {
        ud.b bVar = ud.b.f68412a;
        if (!bVar.w1()) {
            s("checkNotifyPermission ignore -> requestNotificationPermissionOnFirstOpen = false");
            function0.invoke();
            return;
        }
        bVar.J4(false);
        if (DeviceUtil.f48146a.X()) {
            s("checkNotifyPermission ignore -> isBelowAndroid13=true");
            function0.invoke();
            return;
        }
        I(d.f53400a.a(), true, 2001, new b(function0));
    }

    private final RoutingViewModel W() {
        return (RoutingViewModel) this.f44914p.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RoutingViewModel X(final RoutingActivity routingActivity) {
        final RoutingViewModel routingViewModel = (RoutingViewModel) new ViewModelProvider(routingActivity).get(RoutingViewModel.class);
        routingViewModel.N().observe(routingActivity, new c(new Function1() { // from class: ph.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y;
                Y = RoutingActivity.Y(RoutingActivity.this, routingViewModel, (com.startshorts.androidplayer.viewmodel.routing.a) obj);
                return Y;
            }
        }));
        return routingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y(RoutingActivity routingActivity, RoutingViewModel routingViewModel, com.startshorts.androidplayer.viewmodel.routing.a aVar) {
        if (aVar instanceof a.d) {
            routingActivity.h0(2000.0f / ((float) ((a.d) aVar).b()));
        } else if (aVar instanceof a.e) {
            routingActivity.f44921w.invoke();
            routingViewModel.v("contentState.observe Showing -> state=" + aVar);
        } else if (aVar instanceof a.b) {
            routingActivity.f44921w.invoke();
            routingViewModel.v("contentState.observe End -> case=" + ((a.b) aVar).a() + ",action=tryFinish");
            routingActivity.k0();
        } else if (aVar instanceof a.c) {
            routingActivity.f44921w.invoke();
            routingViewModel.f("contentState.observe exception -> " + ((a.c) aVar).a() + ",action=tryFinish");
            routingActivity.k0();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(final Ref.BooleanRef booleanRef, final RoutingActivity routingActivity) {
        g.f3403a.c(1000L, new Function0() { // from class: ph.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit b02;
                b02 = RoutingActivity.b0(Ref.BooleanRef.this, routingActivity);
                return b02;
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(final Ref.BooleanRef booleanRef, final RoutingActivity routingActivity) {
        ud.b bVar;
        String b02;
        AdManager adManager = AdManager.f41600a;
        if (adManager.A()) {
            adManager.a0(AdScene.APP_OPEN);
        }
        adManager.a0(AdScene.INTERSTITIAL);
        adManager.a0(AdScene.REWARD);
        nk.b.f62972a.c();
        if (booleanRef.element && DeviceUtil.f48146a.X() && (b02 = (bVar = ud.b.f68412a).b0()) != null && b02.length() != 0 && !bVar.X()) {
            routingActivity.m("finish RoutingActivity -> campaign ignore splash");
            EventManager.s0(EventManager.f42463a, "campaign_ignore_splash", null, 0L, 6, null);
            routingActivity.f44921w.invoke();
            routingActivity.k0();
        } else {
            routingActivity.V(new Function0() { // from class: ph.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit c02;
                    c02 = RoutingActivity.c0(Ref.BooleanRef.this, routingActivity);
                    return c02;
                }
            });
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(Ref.BooleanRef booleanRef, RoutingActivity routingActivity) {
        final boolean H;
        ud.b bVar;
        String b02;
        if (booleanRef.element && (b02 = (bVar = ud.b.f68412a).b0()) != null && b02.length() != 0 && !bVar.X()) {
            routingActivity.m("finish RoutingActivity -> campaign ignore splash");
            EventManager.s0(EventManager.f42463a, "campaign_ignore_splash", null, 0L, 6, null);
            routingActivity.f44921w.invoke();
            routingActivity.k0();
        } else {
            boolean z10 = false;
            if (booleanRef.element) {
                H = false;
            } else if (!fk.a.f51702a.a()) {
                H = AdManager.f41600a.A();
            } else {
                H = AdManager.f41600a.H();
            }
            RoutingViewModel W = routingActivity.W();
            ConstraintLayout hwSplashView = ((ActivityRoutingBinding) routingActivity.E()).f38447b;
            Intrinsics.checkNotNullExpressionValue(hwSplashView, "hwSplashView");
            Function0 function0 = new Function0() { // from class: ph.o
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    boolean d02;
                    d02 = RoutingActivity.d0(H);
                    return Boolean.valueOf(d02);
                }
            };
            boolean z11 = booleanRef.element;
            if (!z11) {
                z10 = routingActivity.f44916r;
            }
            W.U(new b.a(routingActivity, hwSplashView, function0, z10, z11));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0() {
        RemoteConfigRepo.f43788a.h("RoutingActivity");
        return Unit.f60915a;
    }

    private final void g0() {
        fk.a aVar = fk.a.f51702a;
        boolean a10 = aVar.a();
        s("showMainActivity -> existMainActivity(" + a10 + ") mFromNotification(" + this.f44915q + ')');
        if (!a10) {
            Intent intent = new Intent(this, MainActivity.class);
            intent.putExtra("from", this.f44918t);
            startActivity(intent);
        } else {
            if (this.f44915q) {
                aVar.f(this);
                au.c.d().l(new HandleNotificationNavigatorCacheEvent());
            }
            finish();
        }
        overridePendingTransition(0, R$anim.splash_fade_out);
    }

    private final void h0(final float f10) {
        runOnUiThread(new Runnable() { // from class: ph.n
            @Override // java.lang.Runnable
            public final void run() {
                RoutingActivity.i0(RoutingActivity.this, f10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(RoutingActivity routingActivity, float f10) {
        try {
            final LottieAnimationView lottieAnimationView = ((ActivityRoutingBinding) routingActivity.E()).f38448c;
            Logger logger = Logger.f41511a;
            logger.h("RoutingActivity", "showProgressAnim start -> " + f10);
            lottieAnimationView.setSafeMode(true);
            lottieAnimationView.y();
            routingActivity.f44921w = new Function0() { // from class: ph.p
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j02;
                    j02 = RoutingActivity.j0(LottieAnimationView.this);
                    return j02;
                }
            };
            Intrinsics.checkNotNull(lottieAnimationView);
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("RoutingActivity", "showProgressAnim failed -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(LottieAnimationView lottieAnimationView) {
        lottieAnimationView.setProgress(1.0f);
        return Unit.f60915a;
    }

    private final void k0() {
        this.f44917s = true;
        if (!p()) {
            g0();
        }
    }

    public final void f0(@NotNull ActResource resource, @NotNull Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        s("showAppOpenAct");
        ActAppOpenView actAppOpenView = this.f44919u;
        if (actAppOpenView == null) {
            ViewStubProxy actAppOpenViewstub = ((ActivityRoutingBinding) E()).f38446a;
            Intrinsics.checkNotNullExpressionValue(actAppOpenViewstub, "actAppOpenViewstub");
            actAppOpenView = (ActAppOpenView) e0.c(actAppOpenViewstub);
        }
        if (actAppOpenView != null) {
            actAppOpenView.P(resource, onDismiss);
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_routing;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        ConfigureInitializer configureInitializer;
        GaidInitializer gaidInitializer;
        fk.a aVar = fk.a.f51702a;
        boolean c10 = aVar.c();
        super.onCreate(bundle);
        if (c10) {
            m("exist RoutingActivity, finish now");
            finish();
            return;
        }
        ed.a.f51339a.b(this, true);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        ud.b bVar = ud.b.f68412a;
        if (!bVar.E()) {
            bVar.O2(true);
            booleanRef.element = true;
            nk.b.f62972a.i();
        }
        ud.a aVar2 = ud.a.f68411a;
        boolean e10 = aVar2.e();
        aVar2.c0(false);
        AdManager adManager = AdManager.f41600a;
        adManager.J(this);
        EventManager eventManager = EventManager.f42463a;
        eventManager.Z(aVar2.c());
        if (!aVar.a()) {
            nk.b.f62972a.j();
            String c11 = aVar2.c();
            if (c11 == null) {
                c11 = "icon";
            }
            this.f44918t = c11;
            eventManager.c0(c11);
            eventManager.b0(this.f44918t, String.valueOf(booleanRef.element));
            UpdateManager updateManager = UpdateManager.f42992a;
            if (updateManager.k()) {
                mi.d o10 = updateManager.o(this);
                if (o10 != null) {
                    o10.show();
                    return;
                }
                return;
            }
            this.f44916r = true;
            Context applicationContext = getApplicationContext();
            Object initializeComponent = AppInitializer.getInstance(applicationContext).initializeComponent(ConfigureInitializer.class);
            if (initializeComponent instanceof ConfigureInitializer) {
                configureInitializer = (ConfigureInitializer) initializeComponent;
            } else {
                configureInitializer = null;
            }
            if (configureInitializer != null) {
                Intrinsics.checkNotNull(applicationContext);
                configureInitializer.e(applicationContext, true);
            }
            Object initializeComponent2 = AppInitializer.getInstance(applicationContext).initializeComponent(GaidInitializer.class);
            if (initializeComponent2 instanceof GaidInitializer) {
                gaidInitializer = (GaidInitializer) initializeComponent2;
            } else {
                gaidInitializer = null;
            }
            if (gaidInitializer != null) {
                Intrinsics.checkNotNull(applicationContext);
                gaidInitializer.e(applicationContext, true);
                if (e10) {
                    gaidInitializer.r();
                }
            }
            if (!bVar.X()) {
                CampaignProvider.f41870a.o(CampaignType.GA_DEEPLINK);
            }
            ConfigRepo.f43771a.E();
            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
            if (!e10) {
                updateManager.h();
                PlayContinue r02 = bVar.r0();
                if (r02 != null) {
                    r02.setShowType(1);
                }
                aVar2.h0(false);
                PurchaseRepo.f43366a.u();
            } else {
                CoroutineUtil.g(CoroutineUtil.f48072a, 2000L, null, new Function0() { // from class: ph.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit e02;
                        e02 = RoutingActivity.e0();
                        return e02;
                    }
                }, 2, null);
            }
            if (qe.a.f65321a.value().getDiscoverPreloadEnable()) {
                DiscoverRepo.f43967a.H();
            }
        }
        aVar2.Z("icon");
        this.f44915q = getIntent().getBooleanExtra("from_notification", false);
        if (getIntent().getBooleanExtra("quickly_pass", false)) {
            this.f44917s = true;
        }
        g.f3403a.b(this, adManager.E());
        AdManager.u0(adManager, this, AdmobPreloadConfig.APP_OPEN, 2000L, false, false, new Function0() { // from class: ph.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit a02;
                a02 = RoutingActivity.a0(Ref.BooleanRef.this, this);
                return a02;
            }
        }, 24, null);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        s("onResume -> mEnableFinish(" + this.f44917s + ')');
        if (this.f44917s) {
            g0();
        }
        af.i.f639a.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        s("onStop -> mIsRequestNotificationPermission(" + this.f44920v + ") ");
        if (!this.f44920v && !W().R() && !W().Q() && !isFinishing()) {
            finish();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "RoutingActivity";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d0(boolean z10) {
        return z10;
    }
}
