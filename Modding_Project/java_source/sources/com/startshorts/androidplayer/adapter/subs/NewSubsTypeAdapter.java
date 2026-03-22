package com.startshorts.androidplayer.adapter.subs;

import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.ItemSubsTypeProMainBinding;
import com.startshorts.androidplayer.databinding.ItemSubsTypeProNormalBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewSubsTypeAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NewSubsTypeAdapter extends BaseAdapter<SubsSku> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f38072q = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final String f38073o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final BaseEpisode f38074p;

    /* compiled from: NewSubsTypeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NewSubsTypeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class b extends BaseAdapter<SubsSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSubsTypeProMainBinding f38075g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ NewSubsTypeAdapter f38076h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull NewSubsTypeAdapter newSubsTypeAdapter, ItemSubsTypeProMainBinding binding) {
            super(newSubsTypeAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38076h = newSubsTypeAdapter;
            this.f38075g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSubsTypeProMainBinding c() {
            return this.f38075g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SubsSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40958a.setSku(item);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NewSubsTypeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class c extends BaseAdapter<SubsSku>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSubsTypeProNormalBinding f38077g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ NewSubsTypeAdapter f38078h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull NewSubsTypeAdapter newSubsTypeAdapter, ItemSubsTypeProNormalBinding binding) {
            super(newSubsTypeAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38078h = newSubsTypeAdapter;
            this.f38077g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSubsTypeProNormalBinding c() {
            return this.f38077g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SubsSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40962a.setSku(item);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewAttachedToWindow(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.adapter.base.BaseAdapter<com.startshorts.androidplayer.bean.subs.SubsSku>.ViewHolder r13) {
        /*
            r12 = this;
            java.lang.String r0 = "holder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            super.onViewAttachedToWindow(r13)
            boolean r0 = r13 instanceof com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter.b
            r1 = 0
            if (r0 == 0) goto L17
            com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter$b r13 = (com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter.b) r13
            java.lang.Object r13 = r13.d()
            com.startshorts.androidplayer.bean.subs.SubsSku r13 = (com.startshorts.androidplayer.bean.subs.SubsSku) r13
        L15:
            r4 = r13
            goto L25
        L17:
            boolean r0 = r13 instanceof com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter.c
            if (r0 == 0) goto L24
            com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter$c r13 = (com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter.c) r13
            java.lang.Object r13 = r13.d()
            com.startshorts.androidplayer.bean.subs.SubsSku r13 = (com.startshorts.androidplayer.bean.subs.SubsSku) r13
            goto L15
        L24:
            r4 = r1
        L25:
            if (r4 == 0) goto L4e
            com.startshorts.androidplayer.manager.event.EventManager r2 = com.startshorts.androidplayer.manager.event.EventManager.f42463a
            java.lang.String r13 = "subscribe"
            r2.g1(r13, r4)
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r5 = r12.f38074p
            java.lang.String r13 = r12.f38073o
            java.lang.String r0 = "coin_popup"
            boolean r13 = kotlin.jvm.internal.Intrinsics.areEqual(r13, r0)
            if (r13 == 0) goto L41
            ud.a r13 = ud.a.f68411a
            com.startshorts.androidplayer.bean.act.ActResource r1 = r13.p()
        L41:
            r6 = r1
            r10 = 112(0x70, float:1.57E-43)
            r11 = 0
            java.lang.String r3 = "subscribe"
            r7 = 0
            r8 = 0
            r9 = 0
            com.startshorts.androidplayer.manager.event.EventManager.P0(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.adapter.subs.NewSubsTypeAdapter.onViewAttachedToWindow(com.startshorts.androidplayer.adapter.base.BaseAdapter$ViewHolder):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        SubsSku item = getItem(i10);
        if (item == null || item.getInSubscription() || i10 != 0) {
            return 1;
        }
        return 0;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "NewSubsTypeAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<SubsSku>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 0) {
            return new b(this, (ItemSubsTypeProMainBinding) s(parent, R$layout.item_subs_type_pro_main));
        }
        return new c(this, (ItemSubsTypeProNormalBinding) s(parent, R$layout.item_subs_type_pro_normal));
    }
}
