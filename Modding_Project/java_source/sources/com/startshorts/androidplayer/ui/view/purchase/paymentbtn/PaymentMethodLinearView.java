package com.startshorts.androidplayer.ui.view.purchase.paymentbtn;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.drake.brv.BindingAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.databinding.ItemPaymentMethodLinearBinding;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBarLinearBinding;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodLinearView;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import o1.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.e;
/* compiled from: PaymentMethodLinearView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPaymentMethodLinearView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodLinearView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n+ 5 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n*L\n1#1,138:1\n295#2,2:139\n1863#2,2:141\n2632#2,3:143\n295#2,2:146\n1872#2,3:149\n1#3:148\n1160#4,7:152\n243#5,6:159\n*S KotlinDebug\n*F\n+ 1 PaymentMethodLinearView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView\n*L\n96#1:139,2\n100#1:141,2\n104#1:143,3\n118#1:146,2\n73#1:149,3\n50#1:152,7\n47#1:159,6\n*E\n"})
/* loaded from: classes7.dex */
public final class PaymentMethodLinearView extends ConstraintLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private List<SkuPaymentMethod> f47743a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47744b;

    /* renamed from: c  reason: collision with root package name */
    private int f47745c;

    /* renamed from: d  reason: collision with root package name */
    private int f47746d;

    /* renamed from: e  reason: collision with root package name */
    public ViewPaymentMethodBarLinearBinding f47747e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodLinearView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(final PaymentMethodLinearView paymentMethodLinearView, BindingAdapter setup, RecyclerView it) {
        Intrinsics.checkNotNullParameter(setup, "$this$setup");
        Intrinsics.checkNotNullParameter(it, "it");
        final int i10 = R$layout.item_payment_method_linear;
        if (Modifier.isInterface(SkuPaymentMethod.class.getModifiers())) {
            setup.q().put(Reflection.typeOf(SkuPaymentMethod.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodLinearView$initView$lambda$4$$inlined$addType$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i11) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i10);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        } else {
            setup.y().put(Reflection.typeOf(SkuPaymentMethod.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodLinearView$initView$lambda$4$$inlined$addType$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i11) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i10);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        }
        setup.D(new Function1() { // from class: tj.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit v10;
                v10 = PaymentMethodLinearView.v(PaymentMethodLinearView.this, (BindingAdapter.BindingViewHolder) obj);
                return v10;
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(final PaymentMethodLinearView paymentMethodLinearView, final BindingAdapter.BindingViewHolder onBind) {
        ItemPaymentMethodLinearBinding itemPaymentMethodLinearBinding;
        int i10;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        final SkuPaymentMethod skuPaymentMethod = (SkuPaymentMethod) onBind.j();
        if (onBind.l() == null) {
            Object invoke = ItemPaymentMethodLinearBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
            if (invoke != null) {
                itemPaymentMethodLinearBinding = (ItemPaymentMethodLinearBinding) invoke;
                onBind.n(itemPaymentMethodLinearBinding);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemPaymentMethodLinearBinding");
            }
        } else {
            ViewBinding l10 = onBind.l();
            if (l10 != null) {
                itemPaymentMethodLinearBinding = (ItemPaymentMethodLinearBinding) l10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemPaymentMethodLinearBinding");
            }
        }
        Integer discountPercent = skuPaymentMethod.getDiscountPercent();
        boolean z10 = false;
        if (discountPercent != null) {
            i10 = discountPercent.intValue();
        } else {
            i10 = 0;
        }
        if (i10 > 0) {
            if (paymentMethodLinearView.f47746d == 2) {
                itemPaymentMethodLinearBinding.f40549c.setText(paymentMethodLinearView.getBinding().f41284c.getContext().getString(R$string.payment_discount_coins_label, String.valueOf(skuPaymentMethod.getDiscountPercent())));
            } else {
                itemPaymentMethodLinearBinding.f40549c.setText(paymentMethodLinearView.getBinding().f41284c.getContext().getString(R$string.discount_label_off, String.valueOf(skuPaymentMethod.getDiscountPercent())));
            }
            b0.l(itemPaymentMethodLinearBinding.f40549c);
        } else {
            b0.e(itemPaymentMethodLinearBinding.f40549c);
        }
        itemPaymentMethodLinearBinding.f40550d.setText(skuPaymentMethod.getPayTypeName());
        String logoIcon = skuPaymentMethod.getLogoIcon();
        if (!((logoIcon == null || logoIcon.length() == 0) ? true : true)) {
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = itemPaymentMethodLinearBinding.f40547a;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(skuPaymentMethod.getLogoIcon());
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
        }
        if (skuPaymentMethod.isSelected()) {
            itemPaymentMethodLinearBinding.f40548b.setImageResource(R$drawable.iv_pay_type_selected);
        } else {
            itemPaymentMethodLinearBinding.f40548b.setImageResource(R$drawable.iv_pay_type_unselected);
        }
        View root = itemPaymentMethodLinearBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: tj.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit w10;
                w10 = PaymentMethodLinearView.w(SkuPaymentMethod.this, paymentMethodLinearView, onBind, (View) obj);
                return w10;
            }
        }, 1, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(SkuPaymentMethod skuPaymentMethod, PaymentMethodLinearView paymentMethodLinearView, BindingAdapter.BindingViewHolder bindingViewHolder, View it) {
        int a10;
        Intrinsics.checkNotNullParameter(it, "it");
        skuPaymentMethod.setSelected(true);
        int i10 = 0;
        for (Object obj : paymentMethodLinearView.f47743a) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            SkuPaymentMethod skuPaymentMethod2 = (SkuPaymentMethod) obj;
            if (i10 == bindingViewHolder.getPosition()) {
                skuPaymentMethod2.setSelected(true);
            } else {
                skuPaymentMethod2.setSelected(false);
            }
            i10 = i11;
        }
        Integer payType = skuPaymentMethod.getPayType();
        if (payType != null) {
            a10 = payType.intValue();
        } else {
            a10 = e.f65327a.a();
        }
        paymentMethodLinearView.f47745c = a10;
        RecyclerView rvPaymentMethod = paymentMethodLinearView.getBinding().f41283b;
        Intrinsics.checkNotNullExpressionValue(rvPaymentMethod, "rvPaymentMethod");
        b.f(rvPaymentMethod, paymentMethodLinearView.f47743a);
        return Unit.f60915a;
    }

    @NotNull
    public final ViewPaymentMethodBarLinearBinding getBinding() {
        ViewPaymentMethodBarLinearBinding viewPaymentMethodBarLinearBinding = this.f47747e;
        if (viewPaymentMethodBarLinearBinding != null) {
            return viewPaymentMethodBarLinearBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final int getPayType() {
        Integer valueOf = Integer.valueOf(this.f47745c);
        if (valueOf.intValue() == -1) {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return e.f65327a.a();
    }

    public final void setBinding(@NotNull ViewPaymentMethodBarLinearBinding viewPaymentMethodBarLinearBinding) {
        Intrinsics.checkNotNullParameter(viewPaymentMethodBarLinearBinding, "<set-?>");
        this.f47747e = viewPaymentMethodBarLinearBinding;
    }

    public final void t(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        boolean z10;
        Boolean supportOneTouchPayment;
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ViewPaymentMethodBarLinearBinding.b(LayoutInflater.from(context), this, true));
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null && (supportOneTouchPayment = a02.getSupportOneTouchPayment()) != null) {
            z10 = supportOneTouchPayment.booleanValue();
        } else {
            z10 = false;
        }
        this.f47744b = z10;
        RecyclerView rvPaymentMethod = getBinding().f41283b;
        Intrinsics.checkNotNullExpressionValue(rvPaymentMethod, "rvPaymentMethod");
        b.g(b.e(rvPaymentMethod, 0, false, false, false, 15, null), new Function2() { // from class: tj.g
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit u10;
                u10 = PaymentMethodLinearView.u(PaymentMethodLinearView.this, (BindingAdapter) obj, (RecyclerView) obj2);
                return u10;
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodLinearView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodLinearView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47743a = new ArrayList();
        this.f47745c = -1;
        this.f47746d = 1;
        t(context, attributeSet, i10);
    }
}
