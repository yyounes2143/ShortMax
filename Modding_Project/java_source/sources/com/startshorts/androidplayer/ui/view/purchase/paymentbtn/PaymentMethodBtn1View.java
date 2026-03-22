package com.startshorts.androidplayer.ui.view.purchase.paymentbtn;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtn1Binding;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn1View;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ng.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: PaymentMethodBtn1View.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PaymentMethodBtn1View extends ConstraintLayout {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f47658h = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f47659a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47660b;

    /* renamed from: c  reason: collision with root package name */
    public ViewPaymentMethodBtn1Binding f47661c;

    /* renamed from: d  reason: collision with root package name */
    private int f47662d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private SubsSku f47663e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private CoinSku f47664f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private SkuPaymentMethod f47665g;

    /* compiled from: PaymentMethodBtn1View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PaymentMethodBtn1View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
    }

    /* compiled from: PaymentMethodBtn1View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PaymentMethodBtn1View paymentMethodBtn1View = PaymentMethodBtn1View.this;
            paymentMethodBtn1View.f47659a = !paymentMethodBtn1View.f47659a;
            PaymentMethodBtn1View.this.y();
            PaymentMethodBtn1View.s(PaymentMethodBtn1View.this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtn1View(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static final /* synthetic */ b s(PaymentMethodBtn1View paymentMethodBtn1View) {
        paymentMethodBtn1View.getClass();
        return null;
    }

    private final void v() {
        String str = (String) e.f62912a.i("rememberMyPayType", "");
        if (str.length() == 0) {
            str = getContext().getString(R$string.remember_my_paypal);
        }
        getBinding().f41295h.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(PaymentMethodBtn1View paymentMethodBtn1View, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        int i10 = paymentMethodBtn1View.f47662d;
        if (i10 != 1) {
            if (i10 == 2) {
                SubsSku subsSku = paymentMethodBtn1View.f47663e;
            }
        } else {
            CoinSku coinSku = paymentMethodBtn1View.f47664f;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        if (!this.f47660b) {
            if (this.f47659a) {
                getBinding().f41289b.setImageResource(R$drawable.remenber_paypal_selected);
            } else {
                getBinding().f41289b.setImageResource(R$drawable.remenber_paypal_unselected);
            }
        }
    }

    @NotNull
    public final ViewPaymentMethodBtn1Binding getBinding() {
        ViewPaymentMethodBtn1Binding viewPaymentMethodBtn1Binding = this.f47661c;
        if (viewPaymentMethodBtn1Binding != null) {
            return viewPaymentMethodBtn1Binding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final CoinSku getMCoinDate() {
        return this.f47664f;
    }

    @Nullable
    public final SubsSku getMSkuDate() {
        return this.f47663e;
    }

    @Nullable
    public final SkuPaymentMethod getMSkuPaymentMethod() {
        return this.f47665g;
    }

    public final void setBinding(@NotNull ViewPaymentMethodBtn1Binding viewPaymentMethodBtn1Binding) {
        Intrinsics.checkNotNullParameter(viewPaymentMethodBtn1Binding, "<set-?>");
        this.f47661c = viewPaymentMethodBtn1Binding;
    }

    public final void setCoinData(@NotNull CoinSku sku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        this.f47663e = null;
        this.f47664f = sku;
        this.f47662d = 1;
    }

    public final void setMCoinDate(@Nullable CoinSku coinSku) {
        this.f47664f = coinSku;
    }

    public final void setMSkuDate(@Nullable SubsSku subsSku) {
        this.f47663e = subsSku;
    }

    public final void setMSkuPaymentMethod(@Nullable SkuPaymentMethod skuPaymentMethod) {
        this.f47665g = skuPaymentMethod;
    }

    public final void setSkuData(@NotNull SubsSku sku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        this.f47663e = sku;
        this.f47664f = null;
        this.f47662d = 2;
    }

    public final void w(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        boolean z10;
        Boolean supportOneTouchPayment;
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ViewPaymentMethodBtn1Binding.b(LayoutInflater.from(context), this, true));
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null && (supportOneTouchPayment = a02.getSupportOneTouchPayment()) != null) {
            z10 = supportOneTouchPayment.booleanValue();
        } else {
            z10 = false;
        }
        this.f47660b = z10;
        v();
        y();
        getBinding().f41290c.setOnClickListener(new c());
        ConstraintLayout clPayBtn = getBinding().f41288a;
        Intrinsics.checkNotNullExpressionValue(clPayBtn, "clPayBtn");
        b0.c(clPayBtn, 0L, new Function1() { // from class: tj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x10;
                x10 = PaymentMethodBtn1View.x(PaymentMethodBtn1View.this, (View) obj);
                return x10;
            }
        }, 1, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtn1View(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtn1View(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47659a = true;
        this.f47662d = 2;
        w(context, attributeSet, i10);
    }
}
