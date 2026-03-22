package com.startshorts.androidplayer.adapter.purchase;

import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.purchase.BlackFridayCoinSkuAdapter;
import com.startshorts.androidplayer.bean.purchase.BlackFridayCoinSku;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuExpiredBinding;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuTitleBinding;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuUnusedBinding;
import com.startshorts.androidplayer.databinding.ItemBlackFridayCoinSkuUsedBinding;
import com.startshorts.androidplayer.databinding.ItemDiscountCoinSkuPurchasedBinding;
import com.startshorts.androidplayer.databinding.ItemDiscountCoinSkuRefundBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BlackFridayCoinSkuAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBlackFridayCoinSkuAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlackFridayCoinSkuAdapter.kt\ncom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1863#2,2:199\n*S KotlinDebug\n*F\n+ 1 BlackFridayCoinSkuAdapter.kt\ncom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter\n*L\n187#1:199,2\n*E\n"})
/* loaded from: classes6.dex */
public final class BlackFridayCoinSkuAdapter extends BaseAdapter<BlackFridayCoinSku> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final b f37771q = new b(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final i f37772o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private BlackFridayCoinSkuView.b f37773p;

    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<BlackFridayCoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemBlackFridayCoinSkuUsedBinding f37774g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ BlackFridayCoinSkuAdapter f37775h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter, ItemBlackFridayCoinSkuUsedBinding binding) {
            super(blackFridayCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37775h = blackFridayCoinSkuAdapter;
            this.f37774g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemBlackFridayCoinSkuUsedBinding c() {
            return this.f37774g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BlackFridayCoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            BlackFridayCoinSkuView blackFridayCoinSkuView = c().f39747a;
            blackFridayCoinSkuView.w(item);
            blackFridayCoinSkuView.A();
            c().f39748b.setText(TimeUtil.e(TimeUtil.f48175a, item.getUseTime(), DeviceUtil.f48146a.e(), null, 4, null));
        }
    }

    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<BlackFridayCoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscountCoinSkuPurchasedBinding f37776g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ BlackFridayCoinSkuAdapter f37777h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter, ItemDiscountCoinSkuPurchasedBinding binding) {
            super(blackFridayCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37777h = blackFridayCoinSkuAdapter;
            this.f37776g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscountCoinSkuPurchasedBinding c() {
            return this.f37776g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BlackFridayCoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f39919d.setText(item.getSubscript());
            c().f39916a.setText(item.getShortPlayName());
            c().f39918c.setText(TimeUtil.e(TimeUtil.f48175a, item.getUseTime(), DeviceUtil.f48146a.e(), null, 4, null));
            c().f39917b.setText(item.getPriceText());
        }
    }

    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<BlackFridayCoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscountCoinSkuRefundBinding f37778g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ BlackFridayCoinSkuAdapter f37779h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter, ItemDiscountCoinSkuRefundBinding binding) {
            super(blackFridayCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37779h = blackFridayCoinSkuAdapter;
            this.f37778g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemDiscountCoinSkuRefundBinding c() {
            return this.f37778g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BlackFridayCoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f39927d.setText(item.getSubscript());
            c().f39924a.setText(item.getShortPlayName());
            c().f39926c.setText(TimeUtil.e(TimeUtil.f48175a, item.getUseTime(), DeviceUtil.f48146a.e(), null, 4, null));
            c().f39925b.setText(item.getPriceText());
        }
    }

    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<BlackFridayCoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemBlackFridayCoinSkuExpiredBinding f37780g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ BlackFridayCoinSkuAdapter f37781h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter, ItemBlackFridayCoinSkuExpiredBinding binding) {
            super(blackFridayCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37781h = blackFridayCoinSkuAdapter;
            this.f37780g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemBlackFridayCoinSkuExpiredBinding c() {
            return this.f37780g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BlackFridayCoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            BlackFridayCoinSkuView blackFridayCoinSkuView = c().f39733a;
            blackFridayCoinSkuView.w(item);
            blackFridayCoinSkuView.A();
            c().f39734b.setText(TimeUtil.e(TimeUtil.f48175a, item.getExpirationTime(), DeviceUtil.f48146a.e(), null, 4, null));
        }
    }

    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class f extends BaseAdapter<BlackFridayCoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemBlackFridayCoinSkuTitleBinding f37782g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ BlackFridayCoinSkuAdapter f37783h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter, ItemBlackFridayCoinSkuTitleBinding binding) {
            super(blackFridayCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37783h = blackFridayCoinSkuAdapter;
            this.f37782g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemBlackFridayCoinSkuTitleBinding c() {
            return this.f37782g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BlackFridayCoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f39739a.setText(item.getSubscript());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BlackFridayCoinSkuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class g extends BaseAdapter<BlackFridayCoinSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemBlackFridayCoinSkuUnusedBinding f37784g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ BlackFridayCoinSkuAdapter f37785h;

        /* compiled from: BlackFridayCoinSkuAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a implements BlackFridayCoinSkuView.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BlackFridayCoinSkuAdapter f37786a;

            a(BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter) {
                this.f37786a = blackFridayCoinSkuAdapter;
            }

            @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView.b
            public void onExpired() {
                BlackFridayCoinSkuView.b F = this.f37786a.F();
                if (F != null) {
                    F.onExpired();
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter, ItemBlackFridayCoinSkuUnusedBinding binding) {
            super(blackFridayCoinSkuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37785h = blackFridayCoinSkuAdapter;
            this.f37784g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemBlackFridayCoinSkuUnusedBinding c() {
            return this.f37784g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BlackFridayCoinSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            EventManager.O0(EventManager.f42463a, "my_wallet_discount", item, null, null, null, null, null, 124, null);
            BlackFridayCoinSkuView blackFridayCoinSkuView = c().f39743a;
            BlackFridayCoinSkuAdapter blackFridayCoinSkuAdapter = this.f37785h;
            blackFridayCoinSkuView.w(item);
            blackFridayCoinSkuView.setMListener(new a(blackFridayCoinSkuAdapter));
        }
    }

    public BlackFridayCoinSkuAdapter() {
        super(0L, 1, null);
        this.f37772o = kotlin.c.b(new Function0() { // from class: nd.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                HashMap H;
                H = BlackFridayCoinSkuAdapter.H();
                return H;
            }
        });
    }

    private final HashMap<Integer, WeakReference<g>> G() {
        return (HashMap) this.f37772o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap H() {
        return new HashMap();
    }

    @Nullable
    public final BlackFridayCoinSkuView.b F() {
        return this.f37773p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: I */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<BlackFridayCoinSku>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof g) {
            g gVar = (g) holder;
            G().put(Integer.valueOf(gVar.e()), new WeakReference<>(holder));
            gVar.c().f39743a.B();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: J */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<BlackFridayCoinSku>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof g) {
            g gVar = (g) holder;
            G().put(Integer.valueOf(gVar.e()), null);
            gVar.c().f39743a.z();
        }
    }

    public final void K(@Nullable BlackFridayCoinSkuView.b bVar) {
        this.f37773p = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        BlackFridayCoinSku item = getItem(i10);
        if (item == null) {
            return 5;
        }
        if (item.getSkuProductId().length() == 0) {
            return 0;
        }
        if (item.getRecordType() == 1) {
            if (item.isExpiration()) {
                return 5;
            }
            if (!item.isConsume()) {
                return 1;
            }
            return 2;
        } else if (item.getStatus() != 3) {
            return 3;
        } else {
            return 4;
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "BlackFridayCoinSkuAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<BlackFridayCoinSku>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return new e(this, (ItemBlackFridayCoinSkuExpiredBinding) s(parent, R$layout.item_black_friday_coin_sku_expired));
                        }
                        return new d(this, (ItemDiscountCoinSkuRefundBinding) s(parent, R$layout.item_discount_coin_sku_refund));
                    }
                    return new c(this, (ItemDiscountCoinSkuPurchasedBinding) s(parent, R$layout.item_discount_coin_sku_purchased));
                }
                return new a(this, (ItemBlackFridayCoinSkuUsedBinding) s(parent, R$layout.item_black_friday_coin_sku_used));
            }
            return new g(this, (ItemBlackFridayCoinSkuUnusedBinding) s(parent, R$layout.item_black_friday_coin_sku_unused));
        }
        return new f(this, (ItemBlackFridayCoinSkuTitleBinding) s(parent, R$layout.item_black_friday_coin_sku_title));
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public void z() {
        g gVar;
        ItemBlackFridayCoinSkuUnusedBinding c10;
        BlackFridayCoinSkuView blackFridayCoinSkuView;
        super.z();
        Collection<WeakReference<g>> values = G().values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        Iterator<T> it = values.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (weakReference != null && (gVar = (g) weakReference.get()) != null && (c10 = gVar.c()) != null && (blackFridayCoinSkuView = c10.f39743a) != null) {
                blackFridayCoinSkuView.z();
            }
        }
        G().values().clear();
    }
}
