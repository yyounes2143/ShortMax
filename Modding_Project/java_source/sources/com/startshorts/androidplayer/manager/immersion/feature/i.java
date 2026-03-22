package com.startshorts.androidplayer.manager.immersion.feature;

import android.app.Activity;
import android.os.Bundle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortDiscountEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortDiscountUnLockEvent;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscountSkuFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class i implements IImmersionFeature {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f42610g = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f42611a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final a f42612b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ShortDiscountSku f42613c;

    /* renamed from: d  reason: collision with root package name */
    private int f42614d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private hi.b f42615e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BillingViewModel f42616f;

    /* compiled from: DiscountSkuFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a(@NotNull ShortDiscountSku shortDiscountSku, @Nullable String str, @NotNull GPayPriceInfo gPayPriceInfo, @Nullable String str2);

        void b();

        void c(int i10);

        void d();
    }

    /* compiled from: DiscountSkuFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: DiscountSkuFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.USER_SUBSCRIBED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscountSkuFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f42617a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f42617a = function;
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
            return this.f42617a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f42617a.invoke(obj);
        }
    }

    public i(@NotNull WeakReference<Activity> actRef, @NotNull a callBack) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        this.f42611a = actRef;
        this.f42612b = callBack;
    }

    private final boolean d(ShortDiscountSku shortDiscountSku, BaseEpisode baseEpisode) {
        if (shortDiscountSku == null || baseEpisode == null || shortDiscountSku.getValidStartTime() == 0 || shortDiscountSku.getValidEndTime() == 0 || baseEpisode.getShortPlayId() != shortDiscountSku.getShortPlayId()) {
            return false;
        }
        long K = DeviceUtil.f48146a.K();
        if (K < shortDiscountSku.getValidStartTime() || K > shortDiscountSku.getValidEndTime()) {
            return false;
        }
        return true;
    }

    private final BaseActivity f() {
        Activity activity = this.f42611a.get();
        if (activity instanceof BaseActivity) {
            return (BaseActivity) activity;
        }
        return null;
    }

    private final BillingViewModel g() {
        if (this.f42616f == null) {
            BaseActivity f10 = f();
            if (f10 == null) {
                return null;
            }
            BillingViewModel billingViewModel = (BillingViewModel) new ViewModelProvider(f10).get(BillingViewModel.class);
            billingViewModel.Q().observe(f10, new d(new Function1() { // from class: hf.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit h10;
                    h10 = com.startshorts.androidplayer.manager.immersion.feature.i.h(com.startshorts.androidplayer.manager.immersion.feature.i.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                    return h10;
                }
            }));
            this.f42616f = billingViewModel;
        }
        return this.f42616f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(i iVar, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        BaseActivity f10;
        if (bVar instanceof b.q) {
            iVar.q();
        } else if (bVar instanceof b.m) {
            iVar.l(((b.m) bVar).a());
        } else if (bVar instanceof b.u) {
            BaseActivity f11 = iVar.f();
            if (f11 != null) {
                f11.x(R$string.common_user_canceled);
            }
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            iVar.m(cVar.a(), cVar.b(), cVar.c(), cVar.d());
        } else if (bVar instanceof b.C0654b) {
            iVar.f42612b.b();
        } else if (bVar instanceof b.g) {
            iVar.n();
        } else if (bVar instanceof b.i) {
            iVar.n();
            BaseActivity f12 = iVar.f();
            if (f12 != null) {
                f12.x(R$string.top_up_fragment_not_find_lost_order_tip);
            }
        } else if ((bVar instanceof b.k) && (f10 = iVar.f()) != null) {
            new gi.f(f10, ((b.k) bVar).a()).show();
        }
        return Unit.f60915a;
    }

    private final void l(List<? extends Object> list) {
        ShortDiscountSku shortDiscountSku = this.f42613c;
        if (shortDiscountSku == null) {
            return;
        }
        jk.u.l(shortDiscountSku, list, false, 2, null);
        au.c.d().l(new RefreshShortDiscountEvent(shortDiscountSku));
    }

    private final void m(String str, String str2, GPayPriceInfo gPayPriceInfo, String str3) {
        ShortDiscountSku shortDiscountSku = this.f42613c;
        if (shortDiscountSku == null || !Intrinsics.areEqual(shortDiscountSku.getGpSkuId(), str2) || !StringsKt.b0(str2, BillingRepo.f43237a.w(), false, 2, null)) {
            return;
        }
        this.f42612b.a(shortDiscountSku, str, gPayPriceInfo, str3);
    }

    private final void n() {
        hi.b bVar = this.f42615e;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f42615e = null;
    }

    private final void q() {
        String gpSkuId;
        ShortDiscountSku shortDiscountSku = this.f42613c;
        if (shortDiscountSku != null && (gpSkuId = shortDiscountSku.getGpSkuId()) != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new zc.g(le.h.f62164a.a(), CollectionsKt.t(gpSkuId)));
            BillingViewModel g10 = g();
            if (g10 != null) {
                g10.W(new a.h(arrayList));
            }
        }
    }

    private final void s() {
        n();
        BaseActivity f10 = f();
        if (f10 == null) {
            return;
        }
        hi.b bVar = new hi.b(f10);
        bVar.setCancelable(false);
        bVar.show();
        this.f42615e = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        BaseEpisode i10;
        Intrinsics.checkNotNullParameter(message, "message");
        int i11 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i11 != 1) {
            if (i11 != 2 || !AccountRepo.f43052a.i1() || (i10 = i(message)) == null) {
                return;
            }
            r(i10.getShortPlayId());
            return;
        }
        au.c.d().p(this);
    }

    public final boolean c(@Nullable BaseEpisode baseEpisode) {
        return d(this.f42613c, baseEpisode);
    }

    public final void e() {
        BillingViewModel g10 = g();
        if (g10 != null) {
            g10.W(new a.c("immersion_discount"));
        }
    }

    @Nullable
    public BaseEpisode i(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    public final int j() {
        return this.f42614d;
    }

    @Nullable
    public final ShortDiscountSku k() {
        return this.f42613c;
    }

    public final void o(int i10, @Nullable ShortDiscountSku shortDiscountSku, @Nullable BaseEpisode baseEpisode) {
        this.f42614d = i10;
        if (shortDiscountSku != null && d(shortDiscountSku, baseEpisode)) {
            this.f42613c = shortDiscountSku;
            e();
            EventManager eventManager = EventManager.f42463a;
            ud.a aVar = ud.a.f68411a;
            EventManager.W0(eventManager, "limited_time_discount", "other", baseEpisode, aVar.p(), null, null, 48, null);
            EventManager.Y0(eventManager, "limited_time_discount", "other", baseEpisode, false, aVar.p(), 8, null);
            EventManager.O0(eventManager, "limited_time_discount", shortDiscountSku, baseEpisode, aVar.p(), null, null, null, 112, null);
            this.f42612b.d();
            return;
        }
        this.f42613c = null;
    }

    public final void p(@Nullable BaseEpisode baseEpisode) {
        BaseActivity f10;
        BillingViewModel g10;
        ShortDiscountSku shortDiscountSku = this.f42613c;
        if (shortDiscountSku != null && baseEpisode != null && baseEpisode.getShortPlayId() == shortDiscountSku.getShortPlayId() && (f10 = f()) != null && (g10 = g()) != null) {
            g10.W(new a.e("limited_time_discount", f10, shortDiscountSku, baseEpisode, false, null, null, null, 240, null));
        }
    }

    public final void r(int i10) {
        ShortDiscountSku shortDiscountSku = this.f42613c;
        if (shortDiscountSku != null && shortDiscountSku.getShortPlayId() == i10) {
            au.c.d().l(new ShortDiscountUnLockEvent(i10));
            this.f42613c = null;
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        Logger logger = Logger.f41511a;
        logger.h("DiscountSkuFeature", "receive AcknowledgePurchaseResult -> " + result);
        if (result.containsShortsId(this.f42614d)) {
            r(this.f42614d);
            this.f42612b.c(this.f42614d);
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        this.f42611a.clear();
        au.c.d().r(this);
    }

    public final void t() {
        EventManager eventManager = EventManager.f42463a;
        Bundle x10 = EventManager.x(eventManager, ud.a.f68411a.p(), false, 2, null);
        x10.putString("scene", "retry_pop");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", x10, 0L, 4, null);
        s();
        BillingViewModel g10 = g();
        if (g10 != null) {
            g10.W(new a.f("retry_pop"));
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.DISCOUNT_SKU;
    }
}
