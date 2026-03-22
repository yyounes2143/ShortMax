package com.startshorts.androidplayer.ui.fragment.purchase;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.bundle.IFragmentBundle;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogFragmentSubsProExpiredBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import com.startshorts.androidplayer.viewmodel.subs.SubsViewModel;
import com.startshorts.androidplayer.viewmodel.subs.a;
import com.startshorts.androidplayer.viewmodel.subs.b;
import gi.d;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsProExpiredDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubsProExpiredDialog extends BaseDialogFragment<DialogFragmentSubsProExpiredBinding> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final a f46463s = new a(null);
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private SubsSku f46465j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseEpisode f46466k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f46467l;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private hi.b f46472q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private hi.b f46473r;

    /* renamed from: i  reason: collision with root package name */
    private int f46464i = -1;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ms.i f46468m = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider p02;
            p02 = SubsProExpiredDialog.p0(SubsProExpiredDialog.this);
            return p02;
        }
    });
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i f46469n = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SubsViewModel l02;
            l02 = SubsProExpiredDialog.l0(SubsProExpiredDialog.this);
            return l02;
        }
    });
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ms.i f46470o = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel j02;
            j02 = SubsProExpiredDialog.j0(SubsProExpiredDialog.this);
            return j02;
        }
    });
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final ms.i f46471p = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel n02;
            n02 = SubsProExpiredDialog.n0(SubsProExpiredDialog.this);
            return n02;
        }
    });

    /* compiled from: SubsProExpiredDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsProExpiredDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsProExpiredDialog.this.dismiss();
        }
    }

    /* compiled from: SubsProExpiredDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsProExpiredDialog.this.dismiss();
        }
    }

    /* compiled from: SubsProExpiredDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (AccountRepo.f43052a.i1()) {
                SubsProExpiredDialog.this.q0();
                SubsProExpiredDialog.this.dismiss();
            } else if (SubsProExpiredDialog.this.W() == -1) {
                SubsProExpiredDialog.this.i0();
            } else {
                SubsProExpiredDialog.this.w0();
                if (!SubsProExpiredDialog.this.X().F()) {
                    SubsProExpiredDialog.this.t0();
                } else {
                    SubsProExpiredDialog.this.s0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SubsProExpiredDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46477a;

        e(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46477a = function;
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
            return this.f46477a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46477a.invoke(obj);
        }
    }

    /* compiled from: SubsProExpiredDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements d.b {
        f() {
        }

        @Override // gi.d.b
        public void a() {
            SubsProExpiredDialog.this.A0("retry_pop");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle x10 = EventManager.x(eventManager, ud.a.f68411a.p(), false, 2, null);
        x10.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", x10, 0L, 4, null);
        y0();
        U().W(new a.g(str));
    }

    private final void T() {
        U().W(new a.c("subs"));
    }

    private final BillingViewModel U() {
        return (BillingViewModel) this.f46470o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SubsViewModel X() {
        return (SubsViewModel) this.f46469n.getValue();
    }

    private final UnlockViewModel Y() {
        return (UnlockViewModel) this.f46471p.getValue();
    }

    private final ViewModelProvider Z() {
        return (ViewModelProvider) this.f46468m.getValue();
    }

    private final void a0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        this.f46467l = true;
        BaseDialogFragment.A(this, R$string.subscription_detail_activity_subs_success, 0, 2, null);
        X().N(new a.b("subscribe_expire_popup", str, str2, gPayPriceInfo, null, 0, 48, null));
        q0();
    }

    private final void b0(List<? extends Object> list) {
        X().N(new a.C0692a(list));
    }

    private final void c0() {
        hi.b bVar = this.f46472q;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f46472q = null;
    }

    private final void d0() {
        hi.b bVar = this.f46473r;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f46473r = null;
    }

    private final void e0() {
        m().f39073a.setOnClickListener(new b());
    }

    private final void f0() {
        m().f39074b.setOnClickListener(new c());
    }

    private final void g0() {
        m().f39075c.setOnClickListener(new d());
    }

    private final void h0() {
        m().f39076d.setText(fk.u.f51776a.e(R$string.subs_pro_expired_dialog_content, SubsSku.Companion.getCardName(this.f46464i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0() {
        FragmentContainer.a aVar = FragmentContainer.f45006p;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.n(), new IFragmentBundle[0]);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel j0(final SubsProExpiredDialog subsProExpiredDialog) {
        BillingViewModel billingViewModel = (BillingViewModel) subsProExpiredDialog.Z().get(BillingViewModel.class);
        billingViewModel.Q().observe(subsProExpiredDialog, new e(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = SubsProExpiredDialog.k0(SubsProExpiredDialog.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return k02;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(SubsProExpiredDialog subsProExpiredDialog, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            subsProExpiredDialog.s0();
        } else if (bVar instanceof b.m) {
            subsProExpiredDialog.b0(((b.m) bVar).a());
        } else if (bVar instanceof b.u) {
            BaseDialogFragment.A(subsProExpiredDialog, R$string.common_user_canceled, 0, 2, null);
        } else if (bVar instanceof b.f) {
            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
            subsProExpiredDialog.q0();
            subsProExpiredDialog.dismiss();
        } else if (bVar instanceof b.e) {
            b.e eVar = (b.e) bVar;
            subsProExpiredDialog.a0(eVar.a(), eVar.b(), eVar.c());
        } else if (bVar instanceof b.d) {
            subsProExpiredDialog.x0();
        } else if (bVar instanceof b.h) {
            subsProExpiredDialog.d0();
            b.h hVar = (b.h) bVar;
            if (hVar.a().hasAcknowledged()) {
                hVar.a().showTip();
                subsProExpiredDialog.q0();
            }
        } else if (bVar instanceof b.j) {
            subsProExpiredDialog.d0();
            BaseDialogFragment.A(subsProExpiredDialog, R$string.top_up_fragment_not_find_lost_order_tip, 0, 2, null);
        } else if (bVar instanceof b.k) {
            Context requireContext = subsProExpiredDialog.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubsViewModel l0(final SubsProExpiredDialog subsProExpiredDialog) {
        SubsViewModel subsViewModel = (SubsViewModel) subsProExpiredDialog.Z().get(SubsViewModel.class);
        subsViewModel.H().observe(subsProExpiredDialog, new e(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m02;
                m02 = SubsProExpiredDialog.m0(SubsProExpiredDialog.this, (com.startshorts.androidplayer.viewmodel.subs.b) obj);
                return m02;
            }
        }));
        return subsViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit m0(SubsProExpiredDialog subsProExpiredDialog, com.startshorts.androidplayer.viewmodel.subs.b bVar) {
        if (bVar instanceof b.C0693b) {
            if (((b.C0693b) bVar).a()) {
                subsProExpiredDialog.c0();
                subsProExpiredDialog.i0();
            } else {
                subsProExpiredDialog.T();
            }
        } else if (bVar instanceof b.c) {
            subsProExpiredDialog.r0(((b.c) bVar).a());
        } else {
            SubsSku subsSku = null;
            if (bVar instanceof b.g) {
                if (subsProExpiredDialog.f46472q == null) {
                    return Unit.f60915a;
                }
                subsProExpiredDialog.c0();
                List<SubsSku> b10 = ((b.g) bVar).b();
                if (b10 != null) {
                    Iterator<T> it = b10.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if (((SubsSku) next).getType() == subsProExpiredDialog.f46464i) {
                            subsSku = next;
                            break;
                        }
                    }
                    subsSku = subsSku;
                }
                subsProExpiredDialog.f46465j = subsSku;
                if (subsSku == null) {
                    subsProExpiredDialog.i0();
                } else if (subsSku.getSkuDetails() == null) {
                    if (BillingRepo.f43237a.C()) {
                        subsProExpiredDialog.z0(subsSku);
                    } else {
                        subsProExpiredDialog.i0();
                    }
                } else {
                    subsProExpiredDialog.z0(subsSku);
                }
            } else if (bVar instanceof b.a) {
                subsProExpiredDialog.c0();
                BaseDialogFragment.B(subsProExpiredDialog, ((b.a) bVar).a().getMsg(), 0, 2, null);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel n0(final SubsProExpiredDialog subsProExpiredDialog) {
        UnlockViewModel unlockViewModel = (UnlockViewModel) subsProExpiredDialog.Z().get(UnlockViewModel.class);
        unlockViewModel.a0().observe(subsProExpiredDialog, new e(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit o02;
                o02 = SubsProExpiredDialog.o0(SubsProExpiredDialog.this, (com.startshorts.androidplayer.viewmodel.immersion.f) obj);
                return o02;
            }
        }));
        return unlockViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(SubsProExpiredDialog subsProExpiredDialog, com.startshorts.androidplayer.viewmodel.immersion.f fVar) {
        if (fVar instanceof f.d) {
            subsProExpiredDialog.dismiss();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider p0(SubsProExpiredDialog subsProExpiredDialog) {
        return new ViewModelProvider(subsProExpiredDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0() {
        BaseEpisode baseEpisode = this.f46466k;
        if (baseEpisode == null) {
            return;
        }
        E(0.0f);
        Y().j0(new e.d(baseEpisode));
        Y().j0(new e.m(getContext(), AccountRepo.f43052a.P(), true, null, 8, null));
    }

    private final void r0(List<zc.g> list) {
        U().W(new a.h(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0() {
        X().N(a.e.f49429a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0() {
        X().N(new a.f(this.f46466k));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0() {
        c0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        hi.b bVar = new hi.b(requireContext);
        bVar.setCancelable(false);
        bVar.show();
        this.f46472q = bVar;
    }

    private final void x0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        gi.d dVar = new gi.d(requireContext);
        dVar.x(new f());
        dVar.show();
    }

    private final void y0() {
        d0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        hi.b bVar = new hi.b(requireContext);
        bVar.setCancelable(false);
        bVar.show();
        this.f46473r = bVar;
    }

    private final void z0(SubsSku subsSku) {
        U().W(new a.j("subscribe_expire_popup", h(), subsSku, null, null, 0, null, null, null, null, null, null, 4088, null));
    }

    public final boolean V() {
        return this.f46467l;
    }

    public final int W() {
        return this.f46464i;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        EventManager.f42463a.a1("SubsProExpiredDialog", this.f46465j, this.f46466k, ud.a.f68411a.p(), false);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_subs_pro_expired;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "SubsProExpiredDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46466k == null) {
            dismiss();
            return;
        }
        setCancelable(false);
        q("mSubsType -> " + this.f46464i);
        f0();
        h0();
        g0();
        e0();
        EventManager eventManager = EventManager.f42463a;
        ud.a aVar = ud.a.f68411a;
        EventManager.W0(eventManager, "subscribe_expire_popup", null, null, aVar.p(), null, null, 54, null);
        EventManager.Y0(eventManager, "subscribe_expire_popup", null, null, false, aVar.p(), 14, null);
        EventManager.e1(eventManager, "SubsProExpiredDialog", this.f46465j, this.f46466k, aVar.p(), false, null, null, 96, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G() - (fk.z.f51786a.p() * 2);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46466k;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            dismiss();
        }
    }

    public final void u0(@Nullable BaseEpisode baseEpisode) {
        this.f46466k = baseEpisode;
    }

    public final void v0(int i10) {
        this.f46464i = i10;
    }
}
