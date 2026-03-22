package com.startshorts.androidplayer.viewmodel.routing;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import ca.d;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel;
import com.startshorts.androidplayer.viewmodel.routing.a;
import com.startshorts.androidplayer.viewmodel.routing.b;
import gt.p;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: RoutingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RoutingViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f49219h = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f49220e = "RoutingViewModel";
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<com.startshorts.androidplayer.viewmodel.routing.a> f49221f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final LiveData<com.startshorts.androidplayer.viewmodel.routing.a> f49222g;

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public RoutingViewModel() {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.routing.a> mutableLiveData = new MutableLiveData<>();
        this.f49221f = mutableLiveData;
        this.f49222g = mutableLiveData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(String str, String str2, r rVar) {
        if (rVar != null) {
            try {
                if (rVar.isActive()) {
                    r.a.b(rVar, null, 1, null);
                    f("loadContent cancel" + str + " -> scene=" + str2);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private final long O(boolean z10) {
        return 200L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long P(b.a aVar) {
        long O;
        boolean booleanValue = aVar.c().invoke().booleanValue();
        if (!booleanValue && !aVar.a()) {
            O = 2000;
        } else {
            O = 3000 + O(booleanValue);
        }
        if (ud.a.f68411a.m().length() == 0) {
            return O + 2000;
        }
        return O;
    }

    private final void S(String str) {
        a.d dVar;
        com.startshorts.androidplayer.viewmodel.routing.a value = this.f49221f.getValue();
        if (value instanceof a.d) {
            dVar = (a.d) value;
        } else {
            dVar = null;
        }
        if (dVar != null) {
            long a10 = dVar.a();
            f("onContentShow(" + str + ") -> costTime=" + (System.currentTimeMillis() - a10));
        }
        T("onContentShow(" + str + ')');
    }

    private final void T(String str) {
        f("preloadInterstitialAd -> scene=" + str);
        AdManager.f41600a.a0(AdScene.INTERSTITIAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(RoutingViewModel routingViewModel, String str) {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.routing.a> mutableLiveData = routingViewModel.f49221f;
        if (str == null) {
            str = "Unknown error";
        }
        o.b(mutableLiveData, new a.c(str));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(RoutingActivity routingActivity, ActResource actResource) {
        S("act priority:" + actResource.getPriority());
        routingActivity.f0(actResource, new Function0() { // from class: fl.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit X;
                X = RoutingViewModel.X(RoutingViewModel.this);
                return X;
            }
        });
        o.b(this.f49221f, new a.e(false, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X(RoutingViewModel routingViewModel) {
        o.b(routingViewModel.f49221f, new a.b("act_dismiss"));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object Y(Activity activity, ViewGroup viewGroup, long j10, c<? super Boolean> cVar) {
        final p b10 = gt.r.b(null, 1, null);
        AdManager.f0(AdManager.f41600a, activity, viewGroup, 0L, j10, AdmobPreloadConfig.APP_OPEN, new Function1() { // from class: fl.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean Z;
                Z = RoutingViewModel.Z(RoutingViewModel.this, (ca.d) obj);
                return Boolean.valueOf(Z);
            }
        }, new Function0() { // from class: fl.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit a02;
                a02 = RoutingViewModel.a0(RoutingViewModel.this, b10);
                return a02;
            }
        }, new Function1() { // from class: fl.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b02;
                b02 = RoutingViewModel.b0(RoutingViewModel.this, b10, (String) obj);
                return b02;
            }
        }, new Function0() { // from class: fl.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit c02;
                c02 = RoutingViewModel.c0(RoutingViewModel.this);
                return c02;
            }
        }, null, new Function0() { // from class: fl.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit d02;
                d02 = RoutingViewModel.d0(p.this, this);
                return d02;
            }
        }, 512, null);
        return b10.await(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Z(RoutingViewModel routingViewModel, d it) {
        Intrinsics.checkNotNullParameter(it, "it");
        boolean z10 = routingViewModel.f49221f.getValue() instanceof a.d;
        if (z10) {
            o.b(routingViewModel.f49221f, new a.e(true, true));
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(RoutingViewModel routingViewModel, p pVar) {
        routingViewModel.S("ad");
        fk.b.f51705a.d();
        e0(pVar, routingViewModel, "onShowSucceed", true);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(RoutingViewModel routingViewModel, p pVar, String str) {
        routingViewModel.f("AppOpenAd onShowFailed");
        e0(pVar, routingViewModel, "onShowFailed", false);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(RoutingViewModel routingViewModel) {
        routingViewModel.f("AppOpenAd onDismiss");
        o.b(routingViewModel.f49221f, new a.b("ad_dismiss"));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(p pVar, RoutingViewModel routingViewModel) {
        e0(pVar, routingViewModel, "onLoadFailed", false);
        return Unit.f60915a;
    }

    private static final void e0(p<Boolean> pVar, RoutingViewModel routingViewModel, String str, boolean z10) {
        if (!pVar.isCompleted()) {
            Logger logger = Logger.f41511a;
            String t10 = routingViewModel.t();
            logger.e(t10, "showAppOpenAd safeComplete -> msg=" + str);
            pVar.i(Boolean.valueOf(z10));
        }
    }

    @NotNull
    public final LiveData<com.startshorts.androidplayer.viewmodel.routing.a> N() {
        return this.f49222g;
    }

    public final boolean Q() {
        if (this.f49222g.getValue() instanceof a.e) {
            com.startshorts.androidplayer.viewmodel.routing.a value = this.f49222g.getValue();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type com.startshorts.androidplayer.viewmodel.routing.ContentState.Showing");
            if (((a.e) value).a()) {
                return true;
            }
        }
        return false;
    }

    public final boolean R() {
        if (this.f49222g.getValue() instanceof a.e) {
            com.startshorts.androidplayer.viewmodel.routing.a value = this.f49222g.getValue();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type com.startshorts.androidplayer.viewmodel.routing.ContentState.Showing");
            if (((a.e) value).b()) {
                return true;
            }
        }
        return false;
    }

    public final void U(@NotNull b intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof b.a) {
            b.a aVar = (b.a) intent;
            long P = P(aVar);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            boolean booleanValue = aVar.c().invoke().booleanValue();
            f("loadContent -> isFirstLaunch " + aVar.e() + ",adEnable=" + booleanValue + ", actEnable=" + aVar.a() + ",maxStayTime=" + P + ",progressTime=3000");
            aVar.e();
            o.b(this.f49221f, new a.d(3000L, System.currentTimeMillis()));
            BaseViewModel.j(this, "loadContent", false, new RoutingViewModel$process$1(this, objectRef, intent, objectRef3, booleanValue, objectRef2, P, 3000L, null), new Function1() { // from class: fl.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit V;
                    V = RoutingViewModel.V(RoutingViewModel.this, (String) obj);
                    return V;
                }
            }, 2, null);
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return this.f49220e;
    }
}
