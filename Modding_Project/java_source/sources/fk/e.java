package fk;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.b;
import gi.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingStateHandler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f51722a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final LifecycleOwner f51723b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final BillingViewModel f51724c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final a f51725d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private hi.b f51726e;

    /* compiled from: BillingStateHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {

        /* compiled from: BillingStateHandler.kt */
        @Metadata
        /* renamed from: fk.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0745a {
            public static void a(@NotNull a aVar, @Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo) {
                Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
                Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            }

            public static void b(@NotNull a aVar, int i10, @Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo) {
                Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
                Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            }

            public static void c(@NotNull a aVar, @NotNull TTPInfoResult payResultInfo) {
                Intrinsics.checkNotNullParameter(payResultInfo, "payResultInfo");
            }
        }

        void a(@Nullable String str, @NotNull String str2, @NotNull GPayPriceInfo gPayPriceInfo);

        void b(@NotNull String str);

        void c(@NotNull TTPInfoResult tTPInfoResult);

        void d(int i10, @Nullable String str, @NotNull String str2, @NotNull GPayPriceInfo gPayPriceInfo);

        void e(@Nullable List<? extends Object> list);

        void f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BillingStateHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f51727a;

        b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f51727a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f51727a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f51727a.invoke(obj);
        }
    }

    /* compiled from: BillingStateHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements d.b {
        c() {
        }

        @Override // gi.d.b
        public void a() {
            e.this.h("retry_pop");
        }
    }

    public e(@NotNull Context context, @NotNull LifecycleOwner lifecycleOwner, @NotNull BillingViewModel viewModel, @NotNull a callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f51722a = context;
        this.f51723b = lifecycleOwner;
        this.f51724c = viewModel;
        this.f51725d = callback;
    }

    private final void c() {
        hi.b bVar = this.f51726e;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f51726e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(e eVar, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            eVar.f51725d.f();
        } else if (bVar instanceof b.m) {
            eVar.f51725d.e(((b.m) bVar).a());
        } else if (bVar instanceof b.u) {
            u.j(u.f51776a, R$string.common_user_canceled, 0, 2, null);
        } else if (bVar instanceof b.l) {
            u.k(u.f51776a, eVar.f51722a.getString(R$string.common_google_pay_not_support, ae.a.f627a.a()), 0, 2, null);
        } else if (bVar instanceof b.e) {
            b.e eVar2 = (b.e) bVar;
            eVar.f51725d.d(2, eVar2.a(), eVar2.b(), eVar2.c());
        } else if (bVar instanceof b.d) {
            eVar.f();
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            eVar.f51725d.a(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.C0654b) {
            eVar.f();
        } else if (bVar instanceof b.h) {
            eVar.c();
            b.h hVar = (b.h) bVar;
            if (hVar.a().hasAcknowledged()) {
                hVar.a().showTip();
            }
        } else if (bVar instanceof b.g) {
            eVar.c();
        } else if (bVar instanceof b.j) {
            eVar.c();
            u.j(u.f51776a, R$string.top_up_fragment_not_find_lost_order_tip, 0, 2, null);
        } else if (bVar instanceof b.k) {
            new gi.f(eVar.f51722a, ((b.k) bVar).a()).show();
        } else if (bVar instanceof b.o) {
            eVar.f51725d.c(((b.o) bVar).a());
        }
        return Unit.f60915a;
    }

    private final void f() {
        gi.d dVar = new gi.d(this.f51722a);
        dVar.x(new c());
        dVar.show();
    }

    private final void g() {
        c();
        hi.b bVar = new hi.b(this.f51722a);
        bVar.setCancelable(false);
        bVar.show();
        this.f51726e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", bundle, 0L, 4, null);
        g();
        this.f51725d.b(str);
    }

    public final void d() {
        this.f51724c.Q().observe(this.f51723b, new b(new Function1() { // from class: fk.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit e10;
                e10 = e.e(e.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return e10;
            }
        }));
    }
}
