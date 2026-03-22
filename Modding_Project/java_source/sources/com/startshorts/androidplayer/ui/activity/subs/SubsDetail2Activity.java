package com.startshorts.androidplayer.ui.activity.subs;

import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import at.n;
import com.huawei.hms.framework.common.ContainerUtils;
import com.shorttv.aar.billing.core.SubscriptionUpdateMode;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.adapter.tab.SubsDetail2TabAdapter;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.databinding.ActivitySubsDetail2Binding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.base.TabView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.subs.SubsType2View;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.subs.SubsViewModel;
import com.startshorts.androidplayer.viewmodel.subs.a;
import com.startshorts.androidplayer.viewmodel.subs.b;
import fk.s;
import fk.u;
import gi.d;
import gi.e;
import java.util.Iterator;
import java.util.List;
import jk.b0;
import jk.l;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
/* compiled from: SubsDetail2Activity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsDetail2Activity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsDetail2Activity.kt\ncom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,948:1\n470#2:949\n470#2:950\n470#2:951\n470#2:952\n470#2:953\n470#2:954\n470#2:955\n470#2:956\n360#3,7:957\n360#3,7:964\n*S KotlinDebug\n*F\n+ 1 SubsDetail2Activity.kt\ncom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity\n*L\n519#1:949\n521#1:950\n530#1:951\n540#1:952\n542#1:953\n552#1:954\n560#1:955\n562#1:956\n189#1:957,7\n472#1:964,7\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsDetail2Activity extends PageStateActivity<ActivitySubsDetail2Binding> {
    @NotNull
    public static final a L = new a(null);
    @Nullable
    private SubsSku A;
    @Nullable
    private SubsSku B;
    @Nullable
    private String C;
    private boolean F;
    @Nullable
    private hi.b I;
    private long J;
    private long K;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f45499r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private String f45500s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f45501t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private BaseEpisode f45502u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f45503v;

    /* renamed from: w  reason: collision with root package name */
    private int f45504w;

    /* renamed from: x  reason: collision with root package name */
    private int f45505x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private tj.a f45506y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private Integer f45507z;
    @NotNull
    private final ms.i D = kotlin.c.b(new Function0() { // from class: ci.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider a12;
            a12 = SubsDetail2Activity.a1(SubsDetail2Activity.this);
            return a12;
        }
    });
    @NotNull
    private final ms.i E = kotlin.c.b(new Function0() { // from class: ci.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SubsViewModel X0;
            X0 = SubsDetail2Activity.X0(SubsDetail2Activity.this);
            return X0;
        }
    });
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: ci.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel V0;
            V0 = SubsDetail2Activity.V0(SubsDetail2Activity.this);
            return V0;
        }
    });
    @NotNull
    private final SubsDetail2Activity$mPropertyObserver$1 H = new SubsDetail2Activity$mPropertyObserver$1(this);

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements e.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubsUpdateMode f45508a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SubsDetail2Activity f45509b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b.d f45510c;

        b(SubsUpdateMode subsUpdateMode, SubsDetail2Activity subsDetail2Activity, b.d dVar) {
            this.f45508a = subsUpdateMode;
            this.f45509b = subsDetail2Activity;
            this.f45510c = dVar;
        }

        @Override // gi.e.b
        public void a() {
            if (TextUtils.isEmpty(this.f45508a.getOldToken())) {
                u.j(u.f51776a, R$string.billing_unavailable_tip_dialog_content, 0, 2, null);
                return;
            }
            String oldToken = this.f45508a.getOldToken();
            if (oldToken == null) {
                oldToken = "";
            }
            zc.k kVar = new zc.k(oldToken, this.f45508a.getSubscriptionReplacementMode());
            BillingViewModel z02 = this.f45509b.z0();
            String C0 = this.f45509b.C0();
            SubsSku a10 = this.f45510c.a();
            BaseEpisode baseEpisode = this.f45509b.f45502u;
            String obfuscatedExternalAccountId = this.f45508a.getObfuscatedExternalAccountId();
            int changeMode = this.f45508a.getChangeMode();
            String oldToken2 = this.f45508a.getOldToken();
            SubsSku b10 = this.f45510c.b();
            String str = this.f45509b.f45500s;
            z02.W(new a.j(C0, this.f45509b, a10, baseEpisode, obfuscatedExternalAccountId, changeMode, kVar, oldToken2, b10, this.f45509b.f45499r, str, null, 2048, null));
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            SubsDetail2Activity subsDetail2Activity = SubsDetail2Activity.this;
            String string = subsDetail2Activity.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(subsDetail2Activity, string);
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            SubsDetail2Activity subsDetail2Activity = SubsDetail2Activity.this;
            String string = subsDetail2Activity.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(subsDetail2Activity, string);
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsDetail2Activity.this.onBackPressed();
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            long L = DeviceUtil.f48146a.L();
            if (L - SubsDetail2Activity.this.J >= 5000) {
                SubsDetail2Activity.this.J = L;
                SubsDetail2Activity.o1(SubsDetail2Activity.this, null, 1, null);
            } else if (L - SubsDetail2Activity.this.K >= 1000) {
                SubsDetail2Activity.this.K = L;
                SubsDetail2Activity.this.x(R$string.common_duplicate_op_tip);
            }
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements SelectableAdapter.d<SubsSku> {
        g() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, SubsSku d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            SubsDetail2Activity.l0(SubsDetail2Activity.this).C.setCurrentItem(i10, true, true);
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements a.b {
        h() {
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            SubsDetail2Activity.this.z0().W(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
            a.b.C0634a.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45517a;

        i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45517a = function;
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
            return this.f45517a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45517a.invoke(obj);
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j implements com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a {
        j() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void a(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            SubsDetail2Activity.this.f45507z = Integer.valueOf(i10);
            EventManager.i0(EventManager.f42463a, 1, subsSku, SubsDetail2Activity.this.f45502u, aVar.p(), 0, 99, SubsDetail2Activity.this.f45499r, SubsDetail2Activity.this.C, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void b(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            SubsDetail2Activity.this.f45507z = Integer.valueOf(i10);
            EventManager.i0(EventManager.f42463a, 4, subsSku, SubsDetail2Activity.this.f45502u, aVar.p(), 0, 99, SubsDetail2Activity.this.f45499r, SubsDetail2Activity.this.C, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void c(int i10, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(false);
            if (subsSku != null) {
                SubsDetail2Activity.this.c1(subsSku, subsSku2);
            }
            EventManager.i0(EventManager.f42463a, 3, subsSku, SubsDetail2Activity.this.f45502u, aVar.p(), 0, Integer.valueOf(qf.e.f65327a.a()), SubsDetail2Activity.this.f45499r, SubsDetail2Activity.this.C, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
        }
    }

    /* compiled from: SubsDetail2Activity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k implements d.b {
        k() {
        }

        @Override // gi.d.b
        public void a() {
            SubsDetail2Activity.this.n1("retry_pop");
        }
    }

    private final SubsViewModel A0() {
        return (SubsViewModel) this.E.getValue();
    }

    private final ViewModelProvider B0() {
        return (ViewModelProvider) this.D.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String C0() {
        return "subscribe";
    }

    private final void D0(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str2 = null;
        if (!StringsKt.b0(str, "?", false, 2, null)) {
            sb2.append("?");
        } else {
            sb2.append(ContainerUtils.FIELD_DELIMITER);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("version=");
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        sb3.append(deviceUtil.V());
        sb2.append(sb3.toString());
        sb2.append("&language=" + deviceUtil.s());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("&userCode=");
        AccountRepo accountRepo = AccountRepo.f43052a;
        Account a02 = accountRepo.a0();
        if (a02 != null) {
            str2 = a02.getUserCode();
        }
        sb4.append(str2);
        sb2.append(sb4.toString());
        String r02 = accountRepo.r0();
        if (r02 != null && r02.length() != 0) {
            sb2.append("&token=" + v.b(r02));
        }
        s sVar = s.f51749a;
        String sb5 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb5, "toString(...)");
        sVar.j(sb5);
        EventManager.s0(EventManager.f42463a, "subscription_detail_cancel_button_click", null, 0L, 6, null);
    }

    private final void E0(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        int i11;
        BaseEpisode baseEpisode;
        if (i10 == 2) {
            i11 = R$string.subscription_detail_activity_subs_success;
        } else {
            i11 = R$string.subscription_detail_activity_subs_update_success;
        }
        x(i11);
        DiscountSubscribeManager.f42447a.u(str2);
        A0().N(new a.b(C0(), str, str2, gPayPriceInfo, this.f45502u, i10));
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.i1() && this.f45503v && (baseEpisode = this.f45502u) != null) {
            au.c.d().l(new EpisodeListUnlockedEvent(4, CollectionsKt.t(baseEpisode), true, false, null, 24, null));
        }
        if (accountRepo.z0() && !ae.a.f627a.f()) {
            finish();
        } else {
            h1();
        }
    }

    private final void F0(List<? extends Object> list) {
        A0().N(new a.C0692a(list));
    }

    private final void G0(b.d dVar) {
        SubsUpdateMode c10 = dVar.c();
        if (c10.getSubscriptionReplacementMode() == SubscriptionUpdateMode.NULL) {
            z0().W(new a.j(C0(), this, dVar.a(), this.f45502u, null, 0, null, null, null, this.f45499r, this.f45500s, null, 2544, null));
        } else {
            SubsSku b10 = dVar.b();
            if (b10 != null) {
                new gi.e(this, b10, dVar.a(), dVar.c(), new b(c10, this, dVar)).show();
            }
        }
    }

    private final void H0() {
        hi.b bVar = this.I;
        if (bVar != null) {
            bVar.cancel();
        }
        this.I = null;
    }

    private final void I0() {
        ((ActivitySubsDetail2Binding) E()).f38511y.setOnClickListener(new c());
        ((ActivitySubsDetail2Binding) E()).L.setOnClickListener(new d());
    }

    private final void J0() {
        int i10;
        if (i0.f68447a.b()) {
            i10 = R$string.subscription_detail_activity_pro_desc_content_2;
        } else {
            i10 = R$string.subscription_detail_activity_pro_desc_content;
        }
        String string = getString(i10, "Google Play");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        ((ActivitySubsDetail2Binding) E()).f38489c.setText(string);
    }

    private final void K0() {
        ((ActivitySubsDetail2Binding) E()).f38509w.setOnClickListener(new e());
    }

    private final void L0() {
        ((ActivitySubsDetail2Binding) E()).A.setOnClickListener(new f());
    }

    private final void M0(final List<SubsSku> list) {
        List<SubsSku> list2 = list;
        ViewGroup.LayoutParams layoutParams = null;
        if (list2 != null && !list2.isEmpty()) {
            if (this.f45506y == null) {
                tj.b bVar = tj.b.f67381a;
                ViewStubProxy stubPaymentMethod = ((ActivitySubsDetail2Binding) E()).B;
                Intrinsics.checkNotNullExpressionValue(stubPaymentMethod, "stubPaymentMethod");
                this.f45506y = bVar.a(stubPaymentMethod);
            }
            tj.a aVar = this.f45506y;
            int i10 = 0;
            if (aVar != null) {
                aVar.setBtnVisibility(0);
            }
            ((ActivitySubsDetail2Binding) E()).f38488b.setVisibility(0);
            this.f45505x = 0;
            this.f45504w = 0;
            TabView tabView = ((ActivitySubsDetail2Binding) E()).D;
            SubsDetail2TabAdapter subsDetail2TabAdapter = new SubsDetail2TabAdapter();
            subsDetail2TabAdapter.K(true);
            subsDetail2TabAdapter.J(new g());
            tabView.a(list, subsDetail2TabAdapter, null, new CatchExceptionLinearLayoutManager(this, 0, false));
            tabView.setSelectedIndex(this.f45504w);
            if (list2.isEmpty()) {
                i10 = 8;
            }
            tabView.setVisibility(i10);
            SubsType2View subsType2View = ((ActivitySubsDetail2Binding) E()).C;
            subsType2View.O(8, 0.843f);
            SubsType2View.setSubsSkus$default(subsType2View, null, C0(), this.f45504w, list, null, null, new Function2() { // from class: ci.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit N0;
                    N0 = SubsDetail2Activity.N0(list, this, (SubsSku) obj, (SubsSku) obj2);
                    return N0;
                }
            }, new n() { // from class: ci.j
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit O0;
                    O0 = SubsDetail2Activity.O0(SubsDetail2Activity.this, ((Integer) obj).intValue(), (SubsSku) obj2, (SubsSku) obj3);
                    return O0;
                }
            }, new Function0() { // from class: ci.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit P0;
                    P0 = SubsDetail2Activity.P0(SubsDetail2Activity.this);
                    return P0;
                }
            }, 49, null);
            return;
        }
        tj.a aVar2 = this.f45506y;
        if (aVar2 != null) {
            aVar2.setBtnVisibility(8);
        }
        ((ActivitySubsDetail2Binding) E()).f38488b.setVisibility(8);
        Space space = ((ActivitySubsDetail2Binding) E()).M;
        ViewGroup.LayoutParams layoutParams2 = ((ActivitySubsDetail2Binding) E()).M.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = jk.g.a(20.0f);
            layoutParams = layoutParams2;
        }
        space.setLayoutParams(layoutParams);
        ((ActivitySubsDetail2Binding) E()).M.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(List list, SubsDetail2Activity subsDetail2Activity, SubsSku clickedSku, SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
        Iterator it = list.iterator();
        int i10 = 0;
        while (true) {
            if (it.hasNext()) {
                if (Intrinsics.areEqual(((SubsSku) it.next()).getSkuId(), clickedSku.getSkuId())) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).D.setSelectedIndex(i10);
        ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).C.setCurrentItem(i10, true, true);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O0(SubsDetail2Activity subsDetail2Activity, int i10, SubsSku subsSku, SubsSku subsSku2) {
        subsDetail2Activity.A = subsSku;
        if (subsSku != null) {
            subsDetail2Activity.f45504w = i10;
            ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).D.setSelectedIndex(i10);
        }
        subsDetail2Activity.i1(subsDetail2Activity.A, subsDetail2Activity.B);
        ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).C.e0(subsDetail2Activity.f45505x, i10);
        subsDetail2Activity.f45505x = i10;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P0(SubsDetail2Activity subsDetail2Activity) {
        subsDetail2Activity.h1();
        return Unit.f60915a;
    }

    private final void Q0() {
        View toolbarView = ((ActivitySubsDetail2Binding) E()).F;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
    }

    private final void R0() {
        final String str = (String) ng.e.f62912a.i("unsubscriptionUrl", "");
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null) {
            if (a02.getDisplayThirdUnsubscribe()) {
                b0.l(((ActivitySubsDetail2Binding) E()).I);
            } else {
                b0.d(((ActivitySubsDetail2Binding) E()).I);
            }
        }
        ((ActivitySubsDetail2Binding) E()).I.setBackgroundDrawable(xd.a.a(this, 100.0f, R$color.color_common_cover_placeholder));
        BaseTextView tvUnsubscribe = ((ActivitySubsDetail2Binding) E()).I;
        Intrinsics.checkNotNullExpressionValue(tvUnsubscribe, "tvUnsubscribe");
        b0.c(tvUnsubscribe, 0L, new Function1() { // from class: ci.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit S0;
                S0 = SubsDetail2Activity.S0(SubsDetail2Activity.this, str, (View) obj);
                return S0;
            }
        }, 1, null);
        gt.g.d(LifecycleOwnerKt.getLifecycleScope(this), null, null, new SubsDetail2Activity$initUnSubscribe$3(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(SubsDetail2Activity subsDetail2Activity, String str, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        subsDetail2Activity.D0(str);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0() {
        String str;
        String string;
        AccountRepo accountRepo = AccountRepo.f43052a;
        Account a02 = accountRepo.a0();
        if (a02 != null) {
            str = a02.getHeadPic();
        } else {
            str = null;
        }
        int a10 = jk.g.a(28.0f);
        kk.f fVar = kk.f.f60747a;
        CustomFrescoView customFrescoView = ((ActivitySubsDetail2Binding) E()).f38500n;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        frescoConfig.setOssWidth(a10);
        frescoConfig.setOssHeight(a10);
        frescoConfig.setResizeWidth(a10);
        frescoConfig.setResizeHeight(a10);
        frescoConfig.setCircleCrop(true);
        frescoConfig.setPlaceholderResId(R$drawable.ic_subscription_detail2_avatar);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        if (a02 != null) {
            string = a02.getFormatNickname(this);
        } else {
            string = getString(R$string.profile_fragment_guest, "");
        }
        boolean C0 = accountRepo.C0();
        int q02 = accountRepo.q0();
        long o02 = accountRepo.o0();
        boolean z02 = accountRepo.z0();
        boolean M0 = accountRepo.M0();
        boolean G0 = accountRepo.G0();
        ((ActivitySubsDetail2Binding) E()).K.setText(string);
        if (M0) {
            ((ActivitySubsDetail2Binding) E()).f38501o.setAlpha(0.4f);
            ((ActivitySubsDetail2Binding) E()).f38505s.setAlpha(0.4f);
            ((ActivitySubsDetail2Binding) E()).f38507u.setBackgroundResource(R$drawable.bg_subsdetail2_user_info);
            ((ActivitySubsDetail2Binding) E()).K.setTextColor(Color.parseColor("#FFFFFF"));
            ((ActivitySubsDetail2Binding) E()).f38503q.setVisibility(8);
            ((ActivitySubsDetail2Binding) E()).J.setTextColor(Color.parseColor("#828386"));
            ((ActivitySubsDetail2Binding) E()).J.setText(u.f51776a.d(R$string.subscription_detail_activity_membership_has_expired));
            ((ActivitySubsDetail2Binding) E()).f38487a.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).f38502p.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).f38505s.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).f38487a.setImageResource(R$drawable.bg_subsdetail2_user_info_vip_mark_2);
            ((ActivitySubsDetail2Binding) E()).f38502p.setImageResource(R$drawable.ic_template_subs_vip_gray);
            ((ActivitySubsDetail2Binding) E()).f38501o.setImageResource(R$drawable.ic_subscribe_vip_no);
            ((ActivitySubsDetail2Binding) E()).H.setColor(Color.parseColor("#99FFEACB"), Color.parseColor("#99F3AD63"));
            p1(q02, C0, G0);
        } else if (z02) {
            ((ActivitySubsDetail2Binding) E()).f38501o.setAlpha(1.0f);
            ((ActivitySubsDetail2Binding) E()).f38505s.setAlpha(1.0f);
            ((ActivitySubsDetail2Binding) E()).f38507u.setBackgroundResource(R$drawable.bg_subsdetail2_user_info_vip);
            ((ActivitySubsDetail2Binding) E()).K.setTextColor(Color.parseColor("#FEDAA4"));
            ((ActivitySubsDetail2Binding) E()).f38503q.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).J.setTextColor(Color.parseColor("#99FEDAA4"));
            ((ActivitySubsDetail2Binding) E()).J.setText(u.f51776a.e(R$string.profile_subscription_view_expire_time, TimeUtil.e(TimeUtil.f48175a, o02, DeviceUtil.f48146a.e(), null, 4, null)));
            ((ActivitySubsDetail2Binding) E()).f38487a.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).f38502p.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).f38487a.setImageResource(R$drawable.bg_subsdetail2_user_info_vip_mark);
            ((ActivitySubsDetail2Binding) E()).f38502p.setImageResource(R$drawable.ic_subscribe_vip_no);
            ((ActivitySubsDetail2Binding) E()).f38501o.setImageResource(R$drawable.ic_subscribe_vip_no);
            ((ActivitySubsDetail2Binding) E()).f38505s.setVisibility(0);
            ((ActivitySubsDetail2Binding) E()).H.setColor(Color.parseColor("#FFEACB"), Color.parseColor("#F3AD63"));
            p1(q02, C0, G0);
        } else {
            ((ActivitySubsDetail2Binding) E()).f38507u.setBackgroundResource(R$drawable.bg_subsdetail2_user_info);
            ((ActivitySubsDetail2Binding) E()).K.setTextColor(Color.parseColor("#FFFFFF"));
            ((ActivitySubsDetail2Binding) E()).f38503q.setVisibility(8);
            ((ActivitySubsDetail2Binding) E()).J.setTextColor(Color.parseColor("#828386"));
            ((ActivitySubsDetail2Binding) E()).J.setText(u.f51776a.d(R$string.profile_subscription_desc));
            ((ActivitySubsDetail2Binding) E()).f38487a.setVisibility(8);
            ((ActivitySubsDetail2Binding) E()).f38502p.setVisibility(8);
            ((ActivitySubsDetail2Binding) E()).f38505s.setVisibility(8);
        }
    }

    private final void U0(String str) {
        EventManager eventManager = EventManager.f42463a;
        SubsSku subsSku = this.A;
        EventManager.i1(eventManager, (subsSku == null || (r1 = subsSku.getSkuId()) == null) ? "" : "", str, null, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel V0(final SubsDetail2Activity subsDetail2Activity) {
        BillingViewModel billingViewModel = (BillingViewModel) subsDetail2Activity.B0().get(BillingViewModel.class);
        billingViewModel.Q().observe(subsDetail2Activity, new i(new Function1() { // from class: ci.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit W0;
                W0 = SubsDetail2Activity.W0(SubsDetail2Activity.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return W0;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(SubsDetail2Activity subsDetail2Activity, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            subsDetail2Activity.f1();
        } else {
            boolean z10 = false;
            if (bVar instanceof b.m) {
                b.m mVar = (b.m) bVar;
                List<Object> a10 = mVar.a();
                if (a10 == null || a10.isEmpty()) {
                    z10 = true;
                }
                subsDetail2Activity.F = !z10;
                if (((ActivitySubsDetail2Binding) subsDetail2Activity.E()).C.b0()) {
                    subsDetail2Activity.F0(mVar.a());
                }
            } else if (bVar instanceof b.u) {
                subsDetail2Activity.x(R$string.common_user_canceled);
            } else if (bVar instanceof b.l) {
                subsDetail2Activity.y(subsDetail2Activity.getString(R$string.common_google_pay_not_support, ae.a.f627a.a()));
            } else if (bVar instanceof b.f) {
                subsDetail2Activity.y("Item already owned");
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
            } else if (bVar instanceof b.e) {
                b.e eVar = (b.e) bVar;
                subsDetail2Activity.E0(2, eVar.a(), eVar.b(), eVar.c());
            } else if (bVar instanceof b.d) {
                subsDetail2Activity.k1();
            } else if (bVar instanceof b.t) {
                b.t tVar = (b.t) bVar;
                subsDetail2Activity.E0(tVar.d(), tVar.a(), tVar.b(), tVar.c());
            } else if (bVar instanceof b.s) {
                subsDetail2Activity.k1();
            } else if (bVar instanceof b.h) {
                subsDetail2Activity.H0();
                b.h hVar = (b.h) bVar;
                if (hVar.a().hasAcknowledged()) {
                    hVar.a().showTip();
                    if (hVar.a().containsSubs()) {
                        subsDetail2Activity.h1();
                    }
                }
            } else if (bVar instanceof b.j) {
                subsDetail2Activity.H0();
                subsDetail2Activity.x(R$string.top_up_fragment_not_find_lost_order_tip);
            } else if (bVar instanceof b.k) {
                new gi.f(subsDetail2Activity, ((b.k) bVar).a()).show();
            } else if (bVar instanceof b.o) {
                b.o oVar = (b.o) bVar;
                Integer orderStatus = oVar.a().getOrderStatus();
                if (subsDetail2Activity.f45507z != null) {
                    if (orderStatus != null && orderStatus.intValue() == 1) {
                        subsDetail2Activity.x(R$string.subscription_detail_activity_subs_success);
                        subsDetail2Activity.h1();
                        AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                        subsDetail2Activity.U0("success");
                        bf.e.f2616a.i().i();
                        MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
                        String currencyCode = oVar.a().getCurrencyCode();
                        String str = "";
                        if (currencyCode == null) {
                            currencyCode = "";
                        }
                        String price = oVar.a().getPrice();
                        if (price == null) {
                            price = "";
                        }
                        String orderNo = oVar.a().getOrderNo();
                        if (orderNo != null) {
                            str = orderNo;
                        }
                        matchEventUtil.h(currencyCode, price, str);
                    } else {
                        subsDetail2Activity.x(R$string.payment_failure);
                        subsDetail2Activity.U0("failure");
                    }
                }
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubsViewModel X0(final SubsDetail2Activity subsDetail2Activity) {
        final SubsViewModel subsViewModel = (SubsViewModel) subsDetail2Activity.B0().get(SubsViewModel.class);
        subsViewModel.H().observe(subsDetail2Activity, new i(new Function1() { // from class: ci.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Y0;
                Y0 = SubsDetail2Activity.Y0(SubsViewModel.this, subsDetail2Activity, (com.startshorts.androidplayer.viewmodel.subs.b) obj);
                return Y0;
            }
        }));
        return subsViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(final SubsViewModel subsViewModel, final SubsDetail2Activity subsDetail2Activity, com.startshorts.androidplayer.viewmodel.subs.b bVar) {
        String str;
        int i10 = 0;
        if (bVar instanceof b.C0693b) {
            SubsSku p10 = DiscountSubscribeManager.f42447a.p();
            if (p10 != null) {
                Logger.f41511a.h("SubsDetail2Activity", "addDiscountSubsSku discountSubs != null");
                subsDetail2Activity.f45504w = subsViewModel.E(p10);
            }
            SubsExpansionManager.f42751a.u(false, subsViewModel.G(), new n() { // from class: ci.i
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit Z0;
                    Z0 = SubsDetail2Activity.Z0(SubsViewModel.this, subsDetail2Activity, ((Integer) obj).intValue(), (SubsSku) obj2, (List) obj3);
                    return Z0;
                }
            });
            if (((b.C0693b) bVar).a()) {
                ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).C.setVisibility(8);
                ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).f38504r.setVisibility(8);
                ud.a.f68411a.M0(null);
                subsDetail2Activity.O();
            } else {
                ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).C.setVisibility(0);
                ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).f38504r.setVisibility(0);
                subsDetail2Activity.y0();
            }
        } else if (bVar instanceof b.c) {
            subsDetail2Activity.e1(((b.c) bVar).a());
        } else if (bVar instanceof b.g) {
            if (subsDetail2Activity.f45504w == -1) {
                b.g gVar = (b.g) bVar;
                List<SubsSku> b10 = gVar.b();
                if (b10 != null && !b10.isEmpty() && (str = subsDetail2Activity.f45501t) != null && str.length() != 0) {
                    Iterator<SubsSku> it = gVar.b().iterator();
                    int i11 = 0;
                    while (true) {
                        if (it.hasNext()) {
                            if (Intrinsics.areEqual(it.next().getProductId(), subsDetail2Activity.f45501t)) {
                                break;
                            }
                            i11++;
                        } else {
                            i11 = -1;
                            break;
                        }
                    }
                    if (i11 != -1) {
                        i10 = i11;
                    }
                }
                subsDetail2Activity.f45504w = i10;
            }
            b.g gVar2 = (b.g) bVar;
            subsDetail2Activity.B = gVar2.a();
            ud.a.f68411a.M0(gVar2.b());
            subsDetail2Activity.M0(gVar2.b());
            subsDetail2Activity.P();
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.a().getState() == 1) {
                subsDetail2Activity.V();
            } else {
                subsDetail2Activity.W(aVar.a().getMsg());
            }
        } else if (bVar instanceof b.d) {
            subsDetail2Activity.G0((b.d) bVar);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(SubsViewModel subsViewModel, SubsDetail2Activity subsDetail2Activity, int i10, SubsSku subsSku, List replacedList) {
        Intrinsics.checkNotNullParameter(replacedList, "replacedList");
        subsViewModel.S(replacedList);
        if (i10 > -1) {
            subsDetail2Activity.f45504w = i10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider a1(SubsDetail2Activity subsDetail2Activity) {
        return new ViewModelProvider(subsDetail2Activity);
    }

    private final void b1() {
        AccountRepo.f43052a.O(this.H);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c1(SubsSku subsSku, SubsSku subsSku2) {
        if (this.F) {
            A0().N(new a.g(this, subsSku, subsSku2));
        } else {
            new gi.a(this).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(SubsDetail2Activity subsDetail2Activity) {
        subsDetail2Activity.f45500s = "current_membership_upgrade";
        subsDetail2Activity.h1();
        return Unit.f60915a;
    }

    private final void e1(List<zc.g> list) {
        z0().W(new a.h(list));
    }

    private final void f1() {
        A0().N(a.e.f49429a);
    }

    private final void g1() {
        A0().N(new a.f(this.f45502u));
    }

    private final void h1() {
        if (A0().F()) {
            s("reloadSubsSkuList");
            this.f45501t = null;
            SubsType2View subsType2View = ((ActivitySubsDetail2Binding) E()).C;
            subsType2View.O(8, 0.843f);
            SubsType2View.setSubsSkus$default(subsType2View, null, C0(), 0, null, null, null, null, null, null, 501, null);
            M0(null);
            ((ActivitySubsDetail2Binding) E()).D.setVisibility(8);
            U();
            g1();
        }
    }

    private final void i1(SubsSku subsSku, SubsSku subsSku2) {
        boolean z10;
        j jVar = new j();
        EventManager.C0(EventManager.f42463a, C0(), subsSku, this.f45502u, null, 0, null, null, this.f45499r, this.C, null, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME, null);
        tj.a aVar = this.f45506y;
        if (aVar != null) {
            aVar.n(C0(), subsSku, ve.h.f68906a.m(), null, jVar, this.C, subsSku2);
        }
        tj.a aVar2 = this.f45506y;
        if (aVar2 != null) {
            z10 = aVar2.p();
        } else {
            z10 = false;
        }
        ViewGroup.LayoutParams layoutParams = null;
        final View view = null;
        if (z10) {
            tj.a aVar3 = this.f45506y;
            if (aVar3 instanceof View) {
                view = (View) aVar3;
            }
            if (view != null) {
                view.post(new Runnable() { // from class: ci.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubsDetail2Activity.j1(view, this);
                    }
                });
                return;
            }
            return;
        }
        ((ActivitySubsDetail2Binding) E()).f38488b.setVisibility(8);
        Space space = ((ActivitySubsDetail2Binding) E()).M;
        ViewGroup.LayoutParams layoutParams2 = ((ActivitySubsDetail2Binding) E()).M.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = jk.g.a(20.0f);
            layoutParams = layoutParams2;
        }
        space.setLayoutParams(layoutParams);
        ((ActivitySubsDetail2Binding) E()).M.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(View view, SubsDetail2Activity subsDetail2Activity) {
        int measuredHeight = view.getMeasuredHeight();
        int a10 = jk.g.a(20.0f) + measuredHeight;
        int a11 = measuredHeight + jk.g.a(15.0f);
        Space space = ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).M;
        ViewGroup.LayoutParams layoutParams = ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).M.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = null;
        if (layoutParams != null) {
            layoutParams.height = a10;
        } else {
            layoutParams = null;
        }
        space.setLayoutParams(layoutParams);
        ImageView imageView = ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).f38488b;
        ViewGroup.LayoutParams layoutParams3 = ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).f38488b.getLayoutParams();
        if (layoutParams3 != null) {
            layoutParams3.height = a11;
            layoutParams2 = layoutParams3;
        }
        imageView.setLayoutParams(layoutParams2);
        ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).M.requestLayout();
        ((ActivitySubsDetail2Binding) subsDetail2Activity.E()).f38488b.requestLayout();
    }

    private final void k1() {
        gi.d dVar = new gi.d(this);
        dVar.x(new k());
        dVar.show();
    }

    public static final /* synthetic */ ActivitySubsDetail2Binding l0(SubsDetail2Activity subsDetail2Activity) {
        return (ActivitySubsDetail2Binding) subsDetail2Activity.E();
    }

    private final void l1() {
        H0();
        hi.b bVar = new hi.b(this);
        bVar.setCancelable(false);
        bVar.show();
        this.I = bVar;
    }

    private final void m1() {
        SubsExpansionManager.f42751a.h(this, "subscribe");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n1(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", C0());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", bundle, 0L, 4, null);
        l1();
        z0().W(new a.g(str));
    }

    static /* synthetic */ void o1(SubsDetail2Activity subsDetail2Activity, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "subscribe";
        }
        subsDetail2Activity.n1(str);
    }

    private final void p1(int i10, boolean z10, boolean z11) {
        if (z11) {
            ((ActivitySubsDetail2Binding) E()).H.setText(u.f51776a.d(R$string.profile_subscription_view_shortmax_member));
        } else if (i10 == 5 && z10) {
            ((ActivitySubsDetail2Binding) E()).H.setText(u.f51776a.d(R$string.profile_subscription_view_weekly_pro_trial_card));
        } else {
            ((ActivitySubsDetail2Binding) E()).H.setText(SubsSku.Companion.getCardName(i10));
        }
    }

    private final void y0() {
        z0().W(new a.c("subs"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel z0() {
        return (BillingViewModel) this.G.getValue();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public int M() {
        return R$layout.viewstub_page_state_network_error_mini;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public int N() {
        return R$layout.viewstub_page_state_other_error_mini;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void S() {
        if (!A0().F()) {
            g1();
        } else {
            y0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_subs_detail2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        BaseEpisode baseEpisode;
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        this.f45499r = getIntent().getStringExtra("from");
        this.f45500s = getIntent().getStringExtra("second_from");
        this.f45501t = getIntent().getStringExtra("subs_sku_product_id");
        String stringExtra = getIntent().getStringExtra("episode");
        if (stringExtra != null) {
            baseEpisode = (BaseEpisode) l.b(stringExtra, BaseEpisode.class);
        } else {
            baseEpisode = null;
        }
        this.f45502u = baseEpisode;
        this.f45503v = getIntent().getBooleanExtra("unlock_episode", false);
        Q0();
        K0();
        T0();
        J0();
        I0();
        L0();
        m1();
        g1();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("from", this.f45499r);
        bundle2.putString("second_from", this.f45500s);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "subscribe_show", bundle2, 0L, 4, null);
        b1();
        AccountManager.f41533a.v();
        DiscountSubscribeManager.f42447a.k(this, new Function0() { // from class: ci.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit d12;
                d12 = SubsDetail2Activity.d1(SubsDetail2Activity.this);
                return d12;
            }
        });
        if (ABTestFactory.f42224a.w1().isEnable().invoke().booleanValue()) {
            R0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AccountRepo.f43052a.d1(this.H);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (z0().S()) {
            h1();
        }
        z0().W(new a.C0653a(this));
        ud.a aVar = ud.a.f68411a;
        if (aVar.O()) {
            aVar.p0(false);
            new com.startshorts.androidplayer.ui.dialog.immersion.a(this, new h()).show();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "SubsDetail2Activity";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        s("receive AcknowledgePurchaseResult -> " + result);
        if (result.containsSubs()) {
            h1();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive ttppmentResultEvent");
        z0().W(new a.i(event.getOrderNo(), event.getOrderType()));
    }
}
