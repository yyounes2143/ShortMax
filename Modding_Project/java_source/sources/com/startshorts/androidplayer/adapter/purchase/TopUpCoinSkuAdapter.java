package com.startshorts.androidplayer.adapter.purchase;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.purchase.TopUpCoinSkuAdapter;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentCoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupBlackFridayBinding;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupExpansionBinding;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupMainBinding;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupNormalBinding;
import com.startshorts.androidplayer.databinding.ItemLowSkuTemplateNotificationBinding;
import com.startshorts.androidplayer.databinding.ItemThirdPartyPaymentBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView;
import com.startshorts.androidplayer.ui.view.purchase.ExpansionCoinSkuView;
import com.startshorts.androidplayer.ui.view.purchase.ThirdPartyPaymentSkuView;
import fk.z;
import jk.b0;
import jk.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TopUpCoinSkuAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TopUpCoinSkuAdapter extends BaseAdapter<CoinSku> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final b f37789s = new b(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private RecyclerView f37790o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private c f37791p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private a f37792q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private String f37793r;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class a extends BaseAdapter<CoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupBlackFridayBinding f37794g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpCoinSkuAdapter f37795h;

        /* compiled from: TopUpCoinSkuAdapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.purchase.TopUpCoinSkuAdapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0610a implements BlackFridayCoinSkuView.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TopUpCoinSkuAdapter f37796a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CoinSku f37797b;

            C0610a(TopUpCoinSkuAdapter topUpCoinSkuAdapter, CoinSku coinSku) {
                this.f37796a = topUpCoinSkuAdapter;
                this.f37797b = coinSku;
            }

            @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView.b
            public void onExpired() {
                this.f37796a.J(this.f37797b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull TopUpCoinSkuAdapter topUpCoinSkuAdapter, ItemCoinSkuTopupBlackFridayBinding binding) {
            super(topUpCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37795h = topUpCoinSkuAdapter;
            this.f37794g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupBlackFridayBinding c() {
            return this.f37794g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            BlackFridayCoinSkuView blackFridayCoinSkuView = c().f39840a;
            TopUpCoinSkuAdapter topUpCoinSkuAdapter = this.f37795h;
            blackFridayCoinSkuView.w(item);
            blackFridayCoinSkuView.setMListener(new C0610a(topUpCoinSkuAdapter, item));
            EventManager.O0(EventManager.f42463a, this.f37795h.G(), item, null, null, null, null, null, 124, null);
        }
    }

    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class c extends BaseAdapter<CoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupExpansionBinding f37798g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpCoinSkuAdapter f37799h;

        /* compiled from: TopUpCoinSkuAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements ExpansionCoinSkuView.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TopUpCoinSkuAdapter f37800a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CoinSku f37801b;

            a(TopUpCoinSkuAdapter topUpCoinSkuAdapter, CoinSku coinSku) {
                this.f37800a = topUpCoinSkuAdapter;
                this.f37801b = coinSku;
            }

            @Override // com.startshorts.androidplayer.ui.view.purchase.ExpansionCoinSkuView.a
            public void onExpired() {
                this.f37800a.J(this.f37801b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull TopUpCoinSkuAdapter topUpCoinSkuAdapter, ItemCoinSkuTopupExpansionBinding binding) {
            super(topUpCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37799h = topUpCoinSkuAdapter;
            this.f37798g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupExpansionBinding c() {
            return this.f37798g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ExpansionCoinSkuView expansionCoinSkuView = c().f39848a;
            TopUpCoinSkuAdapter topUpCoinSkuAdapter = this.f37799h;
            expansionCoinSkuView.w(item);
            expansionCoinSkuView.setMListener(new a(topUpCoinSkuAdapter, item));
            EventManager.O0(EventManager.f42463a, this.f37799h.G(), item, null, null, null, null, null, 124, null);
        }
    }

    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<CoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemLowSkuTemplateNotificationBinding f37802g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpCoinSkuAdapter f37803h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull TopUpCoinSkuAdapter topUpCoinSkuAdapter, ItemLowSkuTemplateNotificationBinding binding) {
            super(topUpCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37803h = topUpCoinSkuAdapter;
            this.f37802g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemLowSkuTemplateNotificationBinding c() {
            return this.f37802g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40486b.setSelected(true);
        }
    }

    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<CoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupMainBinding f37804g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpCoinSkuAdapter f37805h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull TopUpCoinSkuAdapter topUpCoinSkuAdapter, ItemCoinSkuTopupMainBinding binding) {
            super(topUpCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37805h = topUpCoinSkuAdapter;
            this.f37804g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupMainBinding c() {
            return this.f37804g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f39856a.w(item);
            EventManager.O0(EventManager.f42463a, this.f37805h.G(), item, null, null, null, null, null, 124, null);
        }
    }

    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class f extends BaseAdapter<CoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupNormalBinding f37806g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpCoinSkuAdapter f37807h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull TopUpCoinSkuAdapter topUpCoinSkuAdapter, ItemCoinSkuTopupNormalBinding binding) {
            super(topUpCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37807h = topUpCoinSkuAdapter;
            this.f37806g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupNormalBinding c() {
            return this.f37806g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f39864a.w(item);
            EventManager.O0(EventManager.f42463a, this.f37807h.G(), item, null, null, null, null, null, 124, null);
        }
    }

    /* compiled from: TopUpCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class g extends BaseAdapter<CoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemThirdPartyPaymentBinding f37808g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpCoinSkuAdapter f37809h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull TopUpCoinSkuAdapter topUpCoinSkuAdapter, ItemThirdPartyPaymentBinding binding) {
            super(topUpCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37809h = topUpCoinSkuAdapter;
            this.f37808g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemThirdPartyPaymentBinding c() {
            return this.f37808g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull CoinSku item) {
            ThirdPartyPaymentCoinSku thirdPartyPaymentCoinSku;
            ThirdPartyPaymentSkuResult result;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            View view = null;
            if (item instanceof ThirdPartyPaymentCoinSku) {
                thirdPartyPaymentCoinSku = (ThirdPartyPaymentCoinSku) item;
            } else {
                thirdPartyPaymentCoinSku = null;
            }
            if (thirdPartyPaymentCoinSku != null && (result = thirdPartyPaymentCoinSku.getResult()) != null) {
                ThirdPartyPaymentSkuView thirdPartyPaymentSkuView = c().f41023a;
                ViewParent parent = thirdPartyPaymentSkuView.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                }
                if (view != null) {
                    z zVar = z.f51786a;
                    view.setPaddingRelative(zVar.d(), 0, zVar.d(), 0);
                }
                if (i10 != 0) {
                    Intrinsics.checkNotNull(thirdPartyPaymentSkuView);
                    b0.g(thirdPartyPaymentSkuView, 0);
                }
                thirdPartyPaymentSkuView.v(result);
            }
        }
    }

    public TopUpCoinSkuAdapter() {
        super(0L, 1, null);
        this.f37793r = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J(final CoinSku coinSku) {
        RecyclerView recyclerView = this.f37790o;
        if (recyclerView != null) {
            t.b(recyclerView, new Function0() { // from class: nd.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit K;
                    K = TopUpCoinSkuAdapter.K(TopUpCoinSkuAdapter.this, coinSku);
                    return K;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(TopUpCoinSkuAdapter topUpCoinSkuAdapter, CoinSku coinSku) {
        BaseAdapter.j(topUpCoinSkuAdapter, coinSku, null, 2, null);
        return Unit.f60915a;
    }

    @NotNull
    public final String G() {
        return this.f37793r;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: H */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<CoinSku>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c) {
            c cVar = (c) holder;
            this.f37791p = cVar;
            cVar.c().f39848a.A();
        } else if (holder instanceof a) {
            a aVar = (a) holder;
            this.f37792q = aVar;
            aVar.c().f39840a.B();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: I */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<CoinSku>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c) {
            this.f37791p = null;
            ((c) holder).c().f39848a.z();
        } else if (holder instanceof a) {
            this.f37792q = null;
            ((a) holder).c().f39840a.z();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        CoinSku item = getItem(i10);
        if (item != null) {
            return item.getSkuType();
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f37790o = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f37790o = null;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "TopUpCoinSkuAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<CoinSku>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 0) {
            if (i10 != 7) {
                if (i10 != 8) {
                    if (i10 != 999) {
                        if (i10 != 1000) {
                            return new f(this, (ItemCoinSkuTopupNormalBinding) s(parent, R$layout.item_coin_sku_topup_normal));
                        }
                        return new d(this, (ItemLowSkuTemplateNotificationBinding) s(parent, R$layout.item_low_sku_template_notification));
                    }
                    return new g(this, (ItemThirdPartyPaymentBinding) s(parent, R$layout.item_third_party_payment));
                }
                return new a(this, (ItemCoinSkuTopupBlackFridayBinding) s(parent, R$layout.item_coin_sku_topup_black_friday));
            }
            return new c(this, (ItemCoinSkuTopupExpansionBinding) s(parent, R$layout.item_coin_sku_topup_expansion));
        }
        return new e(this, (ItemCoinSkuTopupMainBinding) s(parent, R$layout.item_coin_sku_topup_main));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        ItemCoinSkuTopupBlackFridayBinding c10;
        BlackFridayCoinSkuView blackFridayCoinSkuView;
        ItemCoinSkuTopupExpansionBinding c11;
        ExpansionCoinSkuView expansionCoinSkuView;
        super.z();
        c cVar = this.f37791p;
        if (cVar != null && (c11 = cVar.c()) != null && (expansionCoinSkuView = c11.f39848a) != null) {
            expansionCoinSkuView.z();
        }
        a aVar = this.f37792q;
        if (aVar != null && (c10 = aVar.c()) != null && (blackFridayCoinSkuView = c10.f39840a) != null) {
            blackFridayCoinSkuView.z();
        }
    }
}
