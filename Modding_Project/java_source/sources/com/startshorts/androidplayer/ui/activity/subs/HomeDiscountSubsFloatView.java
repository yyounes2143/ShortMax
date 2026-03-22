package com.startshorts.androidplayer.ui.activity.subs;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.ViewPacketFloatBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.subs.HomeDiscountSubsFloatView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.tencent.mmkv.MMKV;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HomeDiscountSubsFloatView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class HomeDiscountSubsFloatView extends ConstraintLayout {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f45488h = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private SubsSku f45489a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private String f45490b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private String f45491c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Function2<? super String, ? super SubsSku, Unit> f45492d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Function1<? super Boolean, Unit> f45493e;

    /* renamed from: f  reason: collision with root package name */
    public ViewPacketFloatBinding f45494f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f45495g;

    /* compiled from: HomeDiscountSubsFloatView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HomeDiscountSubsFloatView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        long j10;
        String valueOf;
        String valueOf2;
        String valueOf3;
        try {
            SubsSku subsSku = this.f45489a;
            if (subsSku != null) {
                j10 = subsSku.getExpireTime();
            } else {
                j10 = 0;
            }
            long K = (j10 - DeviceUtil.f48146a.K()) / 1000;
            if (K < 0) {
                K = 0;
            }
            long j11 = (long) MMKV.ExpireInHour;
            long j12 = K / j11;
            long j13 = 60;
            long j14 = (K % j11) / j13;
            long j15 = K % j13;
            BaseTextView baseTextView = getBinding().f41278c;
            StringBuilder sb2 = new StringBuilder();
            if (j12 < 10) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append('0');
                sb3.append(j12);
                valueOf = sb3.toString();
            } else {
                valueOf = String.valueOf(j12);
            }
            sb2.append(valueOf);
            sb2.append(':');
            if (j14 < 10) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append('0');
                sb4.append(j14);
                valueOf2 = sb4.toString();
            } else {
                valueOf2 = String.valueOf(j14);
            }
            sb2.append(valueOf2);
            sb2.append(':');
            if (j15 < 10) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append('0');
                sb5.append(j15);
                valueOf3 = sb5.toString();
            } else {
                valueOf3 = String.valueOf(j15);
            }
            sb2.append(valueOf3);
            baseTextView.setText(sb2.toString());
            if (K > 0) {
                E();
                return;
            }
            getBinding().getRoot().removeCallbacks(this.f45495g);
            b0.d(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(final HomeDiscountSubsFloatView homeDiscountSubsFloatView, final SubsSku subsSku, final SubsSku subsSku2) {
        homeDiscountSubsFloatView.post(new Runnable() { // from class: ci.e
            @Override // java.lang.Runnable
            public final void run() {
                HomeDiscountSubsFloatView.D(SubsSku.this, homeDiscountSubsFloatView, subsSku);
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(SubsSku subsSku, HomeDiscountSubsFloatView homeDiscountSubsFloatView, SubsSku subsSku2) {
        String str;
        if (subsSku != null && subsSku.enableDiscount() && homeDiscountSubsFloatView.y()) {
            homeDiscountSubsFloatView.f45489a = subsSku;
            b0.l(homeDiscountSubsFloatView);
            homeDiscountSubsFloatView.A();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", "discover");
            if (subsSku2.isLowestSku()) {
                str = "active_nosub_floating";
            } else {
                str = "subscription_retention_floating";
            }
            bundle.putString("type", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discount_pop_show", bundle, 0L, 4, null);
            return;
        }
        b0.d(homeDiscountSubsFloatView);
    }

    private final void E() {
        getBinding().getRoot().postDelayed(this.f45495g, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(HomeDiscountSubsFloatView homeDiscountSubsFloatView) {
        homeDiscountSubsFloatView.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(HomeDiscountSubsFloatView homeDiscountSubsFloatView, View it) {
        String str;
        Intrinsics.checkNotNullParameter(it, "it");
        homeDiscountSubsFloatView.f45492d.invoke(homeDiscountSubsFloatView.f45490b, homeDiscountSubsFloatView.f45489a);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", "discover");
        SubsSku subsSku = homeDiscountSubsFloatView.f45489a;
        if (subsSku != null && subsSku.isLowestSku()) {
            str = "active_nosub_floating";
        } else {
            str = "subscription_retention_floating";
        }
        bundle.putString("type", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discount_pop_click", bundle, 0L, 4, null);
        return Unit.f60915a;
    }

    private final boolean y() {
        return Intrinsics.areEqual(this.f45491c, "DISCOVER");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z(String type, SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(type, "type");
        return Unit.f60915a;
    }

    public final void B(@NotNull String tabName) {
        String str;
        int i10;
        Intrinsics.checkNotNullParameter(tabName, "tabName");
        this.f45491c = tabName;
        SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
        final SubsSku m10 = subsExpansionManager.m();
        if (AccountRepo.f43052a.H0() && m10 != null && y()) {
            if (m10.isLowestSku() && HomeRetainDiscountSubsPresent.f42741a.h() <= 0) {
                b0.d(this);
                return;
            }
            if (!m10.isLowestSku()) {
                str = "retainer_subs_sku";
            } else {
                str = "lowest_subs_sku";
            }
            this.f45490b = str;
            ImageView imageView = getBinding().f41277b;
            if (Intrinsics.areEqual(this.f45490b, "retainer_subs_sku")) {
                i10 = R$drawable.icon_welfare_packet;
            } else {
                i10 = R$drawable.icon_packet_home;
            }
            imageView.setImageResource(i10);
            subsExpansionManager.k(m10, new Function1() { // from class: ci.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit C;
                    C = HomeDiscountSubsFloatView.C(HomeDiscountSubsFloatView.this, m10, (SubsSku) obj);
                    return C;
                }
            });
            return;
        }
        b0.d(this);
    }

    @NotNull
    public final ViewPacketFloatBinding getBinding() {
        ViewPacketFloatBinding viewPacketFloatBinding = this.f45494f;
        if (viewPacketFloatBinding != null) {
            return viewPacketFloatBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final SubsSku getMSku() {
        return this.f45489a;
    }

    @NotNull
    public final String getMType() {
        return this.f45490b;
    }

    @NotNull
    public final Function2<String, SubsSku, Unit> getOnViewClick() {
        return this.f45492d;
    }

    @Nullable
    public final Function1<Boolean, Unit> getOnViewHidden() {
        return this.f45493e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getBinding().getRoot().removeCallbacks(this.f45495g);
    }

    public final void setBinding(@NotNull ViewPacketFloatBinding viewPacketFloatBinding) {
        Intrinsics.checkNotNullParameter(viewPacketFloatBinding, "<set-?>");
        this.f45494f = viewPacketFloatBinding;
    }

    public final void setMSku(@Nullable SubsSku subsSku) {
        this.f45489a = subsSku;
    }

    public final void setMType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f45490b = str;
    }

    public final void setOnViewClick(@NotNull Function2<? super String, ? super SubsSku, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f45492d = function2;
    }

    public final void setOnViewHidden(@Nullable Function1<? super Boolean, Unit> function1) {
        this.f45493e = function1;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z10;
        super.setVisibility(i10);
        Function1<? super Boolean, Unit> function1 = this.f45493e;
        if (function1 != null) {
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    public final void w(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ViewPacketFloatBinding.b(LayoutInflater.from(context), this, true));
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: ci.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x10;
                x10 = HomeDiscountSubsFloatView.x(HomeDiscountSubsFloatView.this, (View) obj);
                return x10;
            }
        }, 1, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HomeDiscountSubsFloatView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeDiscountSubsFloatView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f45490b = "";
        this.f45491c = "";
        this.f45492d = new Function2() { // from class: ci.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit z10;
                z10 = HomeDiscountSubsFloatView.z((String) obj, (SubsSku) obj2);
                return z10;
            }
        };
        this.f45495g = new Runnable() { // from class: ci.c
            @Override // java.lang.Runnable
            public final void run() {
                HomeDiscountSubsFloatView.v(HomeDiscountSubsFloatView.this);
            }
        };
        w(context, attributeSet, i10);
    }
}
