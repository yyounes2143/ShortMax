package com.startshorts.androidplayer.adapter.purchase;

import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.databinding.ItemPaymentMethodBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PaymentMethodBarAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PaymentMethodBarAdapter extends BaseAdapter<SkuPaymentMethod> {

    /* compiled from: PaymentMethodBarAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPaymentMethodBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBarAdapter.kt\ncom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$PaymentMethodViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"})
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<SkuPaymentMethod>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemPaymentMethodBinding f37787g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ PaymentMethodBarAdapter f37788h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull PaymentMethodBarAdapter paymentMethodBarAdapter, ItemPaymentMethodBinding binding) {
            super(paymentMethodBarAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37788h = paymentMethodBarAdapter;
            this.f37787g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemPaymentMethodBinding c() {
            return this.f37787g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SkuPaymentMethod item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            Integer labelDiscountPercent = item.getLabelDiscountPercent();
            boolean z10 = false;
            if (labelDiscountPercent != null) {
                i11 = labelDiscountPercent.intValue();
            } else {
                i11 = 0;
            }
            if (i11 > 0) {
                Integer labelSkuType = item.getLabelSkuType();
                if (labelSkuType != null && labelSkuType.intValue() == 2) {
                    c().f40543d.setText(c().f40543d.getContext().getString(R$string.payment_discount_coins_label, String.valueOf(item.getLabelDiscountPercent())));
                } else {
                    c().f40543d.setText(c().f40543d.getContext().getString(R$string.discount_label_off, String.valueOf(item.getLabelDiscountPercent())));
                }
                c().f40543d.setVisibility(0);
            } else {
                c().f40543d.setVisibility(8);
            }
            String logoIcon = item.getLogoIcon();
            if (logoIcon == null || logoIcon.length() == 0) {
                z10 = true;
            }
            if (!z10) {
                f fVar = f.f60747a;
                CustomFrescoView customFrescoView = c().f40542c;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(item.getLogoIcon());
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
            }
            if (item.isSelected()) {
                c().f40540a.setBackgroundResource(R$drawable.bg_payment_method_item_selected);
            } else {
                c().f40540a.setBackgroundResource(R$drawable.bg_payment_method_item);
            }
            ViewGroup.LayoutParams layoutParams = c().f40540a.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            if (this.f37788h.getItemCount() <= 4) {
                ((ViewGroup.MarginLayoutParams) layoutParams2).width = ((DeviceUtil.f48146a.G() - g.a(32.0f)) - ((this.f37788h.getItemCount() - 1) * g.a(8.0f))) / this.f37788h.getItemCount();
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams2).width = g.a(80.0f);
            }
            c().f40540a.setLayoutParams(layoutParams2);
        }
    }

    public PaymentMethodBarAdapter() {
        super(0L, 1, null);
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<SkuPaymentMethod>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a(this, (ItemPaymentMethodBinding) s(parent, R$layout.item_payment_method));
    }
}
