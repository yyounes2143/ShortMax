package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.v;
import gt.e;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import rs.c;
import ud.a;
/* compiled from: AppLifecycleInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AppLifecycleInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f44831c = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f44832b = true;

    /* compiled from: AppLifecycleInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AppLifecycleInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements aa.b {
        b() {
        }

        @Override // aa.b
        public void a(int i10) {
            AppLifecycleInitializer appLifecycleInitializer = AppLifecycleInitializer.this;
            appLifecycleInitializer.a("activity size(" + i10 + ')');
        }

        @Override // aa.b
        public void onError(String str) {
            AppLifecycleInitializer appLifecycleInitializer = AppLifecycleInitializer.this;
            appLifecycleInitializer.b("add activity failed -> " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object n(boolean z10, c<? super Unit> cVar) {
        AdManager adManager = AdManager.f41600a;
        if (adManager.H()) {
            boolean e10 = kf.b.f60715a.e();
            boolean O = adManager.O();
            boolean F = adManager.F();
            boolean n10 = ud.a.f68411a.n();
            boolean c10 = mk.c.f62521a.c();
            boolean c11 = fk.a.f51702a.c();
            b("onForeground -> isAdShowing(" + O + ") jumpToAdDetail(" + F + ") requestPermissionFromSettings(" + c10 + ") routingActivityExist(" + c11 + ") existNotificationActivity(" + z10 + ')');
            if (!e10 && !n10 && !c11 && !O && !F && !c10 && !z10) {
                Object g10 = e.g(q0.c(), new AppLifecycleInitializer$checkEnableShowImmersionActivity$2(null), cVar);
                if (g10 == kotlin.coroutines.intrinsics.a.f()) {
                    return g10;
                }
                return Unit.f60915a;
            }
        }
        Object g11 = e.g(q0.c(), new AppLifecycleInitializer$checkEnableShowImmersionActivity$3(null), cVar);
        if (g11 == kotlin.coroutines.intrinsics.a.f()) {
            return g11;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r o() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "doWorkOnBackground", false, new AppLifecycleInitializer$doWorkOnBackground$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r p() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "doWorkOnForeground", false, new AppLifecycleInitializer$doWorkOnForeground$1(this, null), 2, null);
    }

    private final void q() {
        ProcessLifecycleOwner.Companion.get().getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.startshorts.androidplayer.startup.AppLifecycleInitializer$initProcessLifecycleOwner$1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onStart(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                a aVar = a.f68411a;
                if (aVar.t()) {
                    return;
                }
                aVar.y0(true);
                au.c.d().l(new AppStateEvent(1));
                AppLifecycleInitializer.this.p();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onStop(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                a aVar = a.f68411a;
                if (!aVar.t()) {
                    return;
                }
                aVar.y0(false);
                boolean I = PushUtil.f42895a.I();
                AppLifecycleInitializer appLifecycleInitializer = AppLifecycleInitializer.this;
                appLifecycleInitializer.b("onBackground -> screenOn(" + I + ')');
                aVar.m0(I ^ true);
                au.c.d().l(new AppStateEvent(2));
                AppLifecycleInitializer.this.o();
            }
        });
        aa.a.f321a.b(new b());
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "AppLifecycleInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(DbInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            q();
        } catch (Exception e10) {
            b("initProcessLifecycleOwner exception -> " + e10.getMessage());
        }
        v vVar = v.f51778a;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        vVar.a(applicationContext, DeviceUtil.f48146a.e());
        return new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
    }
}
