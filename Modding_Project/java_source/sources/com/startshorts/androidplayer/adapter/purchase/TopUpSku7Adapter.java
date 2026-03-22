package com.startshorts.androidplayer.adapter.purchase;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentCoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupBlackFriday7Binding;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupExpansion7Binding;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupMain7Binding;
import com.startshorts.androidplayer.databinding.ItemCoinSkuTopupNormal7Binding;
import com.startshorts.androidplayer.databinding.ItemLowSkuTemplateNotificationBinding;
import com.startshorts.androidplayer.databinding.ItemSubsTypeNormal7Binding;
import com.startshorts.androidplayer.databinding.ItemSubsTypePro7Binding;
import com.startshorts.androidplayer.databinding.ItemThirdPartyPaymentBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView;
import com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView7;
import com.startshorts.androidplayer.ui.view.purchase.CoinSkuView7;
import com.startshorts.androidplayer.ui.view.purchase.ExpansionCoinSkuView;
import com.startshorts.androidplayer.ui.view.purchase.ExpansionCoinSkuView7;
import com.startshorts.androidplayer.ui.view.purchase.MainCoinSkuView3;
import com.startshorts.androidplayer.ui.view.purchase.ThirdPartyPaymentSkuView;
import com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView7;
import com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView7;
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
/* compiled from: TopUpSku7Adapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TopUpSku7Adapter extends BaseAdapter<SelectableItem> {
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final b f37810x = new b(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private RecyclerView f37811o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private c f37812p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private a f37813q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private String f37814r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private String f37815s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private BaseEpisode f37816t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private String f37817u;

    /* renamed from: v  reason: collision with root package name */
    private int f37818v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Function0<Unit> f37819w;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class a extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupBlackFriday7Binding f37820g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37821h;

        /* compiled from: TopUpSku7Adapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0611a implements BlackFridayCoinSkuView.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TopUpSku7Adapter f37822a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ SelectableItem f37823b;

            C0611a(TopUpSku7Adapter topUpSku7Adapter, SelectableItem selectableItem) {
                this.f37822a = topUpSku7Adapter;
                this.f37823b = selectableItem;
            }

            @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView.b
            public void onExpired() {
                this.f37822a.O((CoinSku) this.f37823b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemCoinSkuTopupBlackFriday7Binding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37821h = topUpSku7Adapter;
            this.f37820g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupBlackFriday7Binding c() {
            return this.f37820g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof CoinSku) {
                BlackFridayCoinSkuView7 blackFridayCoinSkuView7 = c().f39836a;
                TopUpSku7Adapter topUpSku7Adapter = this.f37821h;
                if (topUpSku7Adapter.L() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                blackFridayCoinSkuView7.setSelect(z10);
                CoinSku coinSku = (CoinSku) item;
                blackFridayCoinSkuView7.w(coinSku);
                blackFridayCoinSkuView7.setMListener(new C0611a(topUpSku7Adapter, item));
                EventManager.O0(EventManager.f42463a, this.f37821h.J(), coinSku, null, null, null, null, null, 124, null);
            }
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
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
    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class c extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupExpansion7Binding f37824g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37825h;

        /* compiled from: TopUpSku7Adapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements ExpansionCoinSkuView.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TopUpSku7Adapter f37826a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ SelectableItem f37827b;

            a(TopUpSku7Adapter topUpSku7Adapter, SelectableItem selectableItem) {
                this.f37826a = topUpSku7Adapter;
                this.f37827b = selectableItem;
            }

            @Override // com.startshorts.androidplayer.ui.view.purchase.ExpansionCoinSkuView.a
            public void onExpired() {
                this.f37826a.O((CoinSku) this.f37827b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemCoinSkuTopupExpansion7Binding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37825h = topUpSku7Adapter;
            this.f37824g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupExpansion7Binding c() {
            return this.f37824g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof CoinSku) {
                ExpansionCoinSkuView7 expansionCoinSkuView7 = c().f39844a;
                TopUpSku7Adapter topUpSku7Adapter = this.f37825h;
                if (topUpSku7Adapter.L() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                expansionCoinSkuView7.setSelect(z10);
                CoinSku coinSku = (CoinSku) item;
                expansionCoinSkuView7.w(coinSku);
                expansionCoinSkuView7.setMListener(new a(topUpSku7Adapter, item));
                EventManager.O0(EventManager.f42463a, this.f37825h.J(), coinSku, null, null, null, null, null, 124, null);
            }
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemLowSkuTemplateNotificationBinding f37828g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37829h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemLowSkuTemplateNotificationBinding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37829h = topUpSku7Adapter;
            this.f37828g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemLowSkuTemplateNotificationBinding c() {
            return this.f37828g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40486b.setSelected(true);
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupMain7Binding f37830g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37831h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemCoinSkuTopupMain7Binding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37831h = topUpSku7Adapter;
            this.f37830g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupMain7Binding c() {
            return this.f37830g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            if (item instanceof CoinSku) {
                super.f(i10, item);
                MainCoinSkuView3 mainCoinSkuView3 = c().f39852a;
                if (this.f37831h.L() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                mainCoinSkuView3.setSelect(z10);
                CoinSku coinSku = (CoinSku) item;
                c().f39852a.w(coinSku);
                EventManager.O0(EventManager.f42463a, this.f37831h.J(), coinSku, null, null, null, null, null, 124, null);
            }
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class f extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCoinSkuTopupNormal7Binding f37832g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37833h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemCoinSkuTopupNormal7Binding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37833h = topUpSku7Adapter;
            this.f37832g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCoinSkuTopupNormal7Binding c() {
            return this.f37832g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            if (item instanceof CoinSku) {
                super.f(i10, item);
                CoinSkuView7 coinSkuView7 = c().f39860a;
                if (this.f37833h.L() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                coinSkuView7.setSelect(z10);
                CoinSku coinSku = (CoinSku) item;
                c().f39860a.w(coinSku);
                EventManager.O0(EventManager.f42463a, this.f37833h.J(), coinSku, null, null, null, null, null, 124, null);
            }
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class g extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSubsTypeNormal7Binding f37834g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37835h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemSubsTypeNormal7Binding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37835h = topUpSku7Adapter;
            this.f37834g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSubsTypeNormal7Binding c() {
            return this.f37834g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof SubsSku) {
                SubsNormalOldStyleView7 subsNormalOldStyleView7 = c().f40950a;
                if (this.f37835h.L() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                subsNormalOldStyleView7.setSelect(z10);
                SubsSku subsSku = (SubsSku) item;
                c().f40950a.setSku(this.f37835h.I(), subsSku, this.f37835h.H(), true);
                EventManager.P0(EventManager.f42463a, this.f37835h.J(), subsSku, this.f37835h.H(), null, this.f37835h.G(), null, null, 104, null);
            }
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class h extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSubsTypePro7Binding f37836g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37837h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemSubsTypePro7Binding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37837h = topUpSku7Adapter;
            this.f37836g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSubsTypePro7Binding c() {
            return this.f37836g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item instanceof SubsSku) {
                SubsProOldStyleView7 subsProOldStyleView7 = c().f40954a;
                if (this.f37837h.L() == i10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                subsProOldStyleView7.setSelect(z10);
                SubsSku subsSku = (SubsSku) item;
                c().f40954a.setSku(this.f37837h.I(), subsSku, this.f37837h.H(), true, this.f37837h.K());
                EventManager.P0(EventManager.f42463a, this.f37837h.J(), subsSku, this.f37837h.H(), null, this.f37837h.G(), null, null, 104, null);
            }
        }
    }

    /* compiled from: TopUpSku7Adapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class i extends BaseAdapter<SelectableItem>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemThirdPartyPaymentBinding f37838g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TopUpSku7Adapter f37839h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull TopUpSku7Adapter topUpSku7Adapter, ItemThirdPartyPaymentBinding binding) {
            super(topUpSku7Adapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37839h = topUpSku7Adapter;
            this.f37838g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemThirdPartyPaymentBinding c() {
            return this.f37838g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SelectableItem item) {
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

    public TopUpSku7Adapter() {
        super(0L, 1, null);
        this.f37814r = "";
        this.f37815s = "";
        this.f37817u = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(final CoinSku coinSku) {
        RecyclerView recyclerView = this.f37811o;
        if (recyclerView != null) {
            t.b(recyclerView, new Function0() { // from class: nd.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit P;
                    P = TopUpSku7Adapter.P(TopUpSku7Adapter.this, coinSku);
                    return P;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(TopUpSku7Adapter topUpSku7Adapter, CoinSku coinSku) {
        BaseAdapter.j(topUpSku7Adapter, coinSku, null, 2, null);
        return Unit.f60915a;
    }

    @NotNull
    public final String G() {
        return this.f37815s;
    }

    @Nullable
    public final BaseEpisode H() {
        return this.f37816t;
    }

    @NotNull
    public final String I() {
        return this.f37817u;
    }

    @NotNull
    public final String J() {
        return this.f37814r;
    }

    @Nullable
    public final Function0<Unit> K() {
        return this.f37819w;
    }

    public final int L() {
        return this.f37818v;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: M */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<SelectableItem>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c) {
            c cVar = (c) holder;
            this.f37812p = cVar;
            cVar.c().f39844a.A();
        } else if (holder instanceof a) {
            a aVar = (a) holder;
            this.f37813q = aVar;
            aVar.c().f39836a.B();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: N */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<SelectableItem>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c) {
            this.f37812p = null;
            ((c) holder).c().f39844a.z();
        } else if (holder instanceof a) {
            this.f37813q = null;
            ((a) holder).c().f39836a.z();
        }
    }

    public final void Q(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f37815s = str;
    }

    public final void R(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f37814r = str;
    }

    public final void S(@Nullable Function0<Unit> function0) {
        this.f37819w = function0;
    }

    public final void T(int i10) {
        this.f37818v = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        SelectableItem item = getItem(i10);
        if (item instanceof SubsSku) {
            if (((SubsSku) item).isPro()) {
                return 1112;
            }
            return 1111;
        } else if (item instanceof CoinSku) {
            return ((CoinSku) item).getSkuType();
        } else {
            return -1;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f37811o = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f37811o = null;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "TopUpSku7Adapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<SelectableItem>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 0) {
            if (i10 != 7) {
                if (i10 != 8) {
                    if (i10 != 999) {
                        if (i10 != 1000) {
                            if (i10 != 1111) {
                                if (i10 != 1112) {
                                    return new f(this, (ItemCoinSkuTopupNormal7Binding) s(parent, R$layout.item_coin_sku_topup_normal_7));
                                }
                                return new h(this, (ItemSubsTypePro7Binding) s(parent, R$layout.item_subs_type_pro_7));
                            }
                            return new g(this, (ItemSubsTypeNormal7Binding) s(parent, R$layout.item_subs_type_normal_7));
                        }
                        return new d(this, (ItemLowSkuTemplateNotificationBinding) s(parent, R$layout.item_low_sku_template_notification));
                    }
                    return new i(this, (ItemThirdPartyPaymentBinding) s(parent, R$layout.item_third_party_payment));
                }
                return new a(this, (ItemCoinSkuTopupBlackFriday7Binding) s(parent, R$layout.item_coin_sku_topup_black_friday_7));
            }
            return new c(this, (ItemCoinSkuTopupExpansion7Binding) s(parent, R$layout.item_coin_sku_topup_expansion_7));
        }
        return new e(this, (ItemCoinSkuTopupMain7Binding) s(parent, R$layout.item_coin_sku_topup_main_7));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        ItemCoinSkuTopupBlackFriday7Binding c10;
        BlackFridayCoinSkuView7 blackFridayCoinSkuView7;
        ItemCoinSkuTopupExpansion7Binding c11;
        ExpansionCoinSkuView7 expansionCoinSkuView7;
        super.z();
        c cVar = this.f37812p;
        if (cVar != null && (c11 = cVar.c()) != null && (expansionCoinSkuView7 = c11.f39844a) != null) {
            expansionCoinSkuView7.z();
        }
        a aVar = this.f37813q;
        if (aVar != null && (c10 = aVar.c()) != null && (blackFridayCoinSkuView7 = c10.f39836a) != null) {
            blackFridayCoinSkuView7.z();
        }
    }
}
