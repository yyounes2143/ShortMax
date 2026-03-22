package com.startshorts.androidplayer.adapter.mylist;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.mylist.MyCollectionAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.databinding.ItemMyCollectionBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.h0;
import fk.z;
import java.util.List;
import jk.e0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyCollectionAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMyCollectionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1863#2,2:151\n1863#2,2:153\n*S KotlinDebug\n*F\n+ 1 MyCollectionAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter\n*L\n46#1:151,2\n58#1:153,2\n*E\n"})
/* loaded from: classes6.dex */
public final class MyCollectionAdapter extends BaseAdapter<MyCollection> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final b f37729s = new b(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37730o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37731p;

    /* renamed from: q  reason: collision with root package name */
    private final float f37732q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f37733r;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MyCollectionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class a extends BaseAdapter<MyCollection>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemMyCollectionBinding f37734g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ MyCollectionAdapter f37735h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull MyCollectionAdapter myCollectionAdapter, ItemMyCollectionBinding binding) {
            super(myCollectionAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37735h = myCollectionAdapter;
            this.f37734g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(a aVar) {
            aVar.c().f40493d.setSelected(true);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemMyCollectionBinding c() {
            return this.f37734g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull MyCollection item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            h(item);
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = c().f40491b;
            FrescoConfig frescoConfig = new FrescoConfig();
            MyCollectionAdapter myCollectionAdapter = this.f37735h;
            frescoConfig.setUrl(item.getCoverId());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(myCollectionAdapter.f37730o);
            frescoConfig.setResizeHeight(myCollectionAdapter.f37731p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(myCollectionAdapter.f37732q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f40500k.setText(item.getShortPlayName());
            c().f40492c.setText(c().f40492c.getContext().getString(R$string.common_current_ep, String.valueOf(item.getEpisodeNum())));
            c().f40501l.setText(c().f40492c.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            ImageView imageView = c().f40499j;
            int i12 = 8;
            if (item.getShowRedPoint()) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            imageView.setVisibility(i11);
            this.f37735h.K(c(), item.isSelected());
            BaseTextView baseTextView = c().f40493d;
            if (item.isWholeBuy()) {
                i12 = 0;
            }
            baseTextView.setVisibility(i12);
            if (item.isWholeBuy()) {
                h0.f51735a.d(new Runnable() { // from class: com.startshorts.androidplayer.adapter.mylist.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyCollectionAdapter.a.n(MyCollectionAdapter.a.this);
                    }
                }, 500L);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: m */
        public void g(int i10, @Nullable MyCollection myCollection, @NotNull List<Object> payloads) {
            boolean z10;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (myCollection != null && !payloads.contains("ignore_refresh")) {
                boolean z11 = false;
                if (payloads.contains("update_checkbox")) {
                    this.f37735h.K(c(), myCollection.isSelected());
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (payloads.contains("update_episode_num")) {
                    c().f40492c.setText(c().f40492c.getContext().getString(R$string.common_current_ep, String.valueOf(myCollection.getEpisodeNum())));
                    z10 = false;
                }
                if (payloads.contains("delete_item")) {
                    i(i10);
                    h(myCollection);
                    super.f(i10, myCollection);
                    this.f37735h.K(c(), myCollection.isSelected());
                } else {
                    z11 = z10;
                }
                if (z11) {
                    f(i10, myCollection);
                }
            }
        }
    }

    /* compiled from: MyCollectionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public MyCollectionAdapter() {
        super(0L, 1, null);
        this.f37730o = g.a(80.0f);
        this.f37731p = g.a(106.0f);
        this.f37732q = z.f51786a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(ItemMyCollectionBinding itemMyCollectionBinding, boolean z10) {
        int i10;
        ImageView imageView = null;
        if (this.f37733r) {
            ViewStubProxy viewStubProxy = itemMyCollectionBinding.f40490a;
            Intrinsics.checkNotNull(viewStubProxy);
            e0.h(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root instanceof ImageView) {
                imageView = (ImageView) root;
            }
            if (imageView != null) {
                if (z10) {
                    i10 = R$drawable.ic_checkbox_selected;
                } else {
                    i10 = R$drawable.ic_checkbox_unselected;
                }
                imageView.setImageResource(i10);
            }
            Intrinsics.checkNotNull(viewStubProxy);
            return;
        }
        ViewStubProxy checkBoxViewstub = itemMyCollectionBinding.f40490a;
        Intrinsics.checkNotNullExpressionValue(checkBoxViewstub, "checkBoxViewstub");
        e0.b(checkBoxViewstub, 0, 1, null);
    }

    public final boolean I() {
        return this.f37733r;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: J */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<MyCollection>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        MyCollection d10 = holder.d();
        if (d10 != null) {
            ag.a.d(ag.a.f646a, "collections", d10.getShortPlayCode(), null, 0, null, null, null, null, null, 508, null);
        }
    }

    public final void L(boolean z10) {
        if (this.f37733r != z10) {
            r("updateEnterEditMode -> enterEditMode(" + z10 + ')');
            this.f37733r = z10;
            if (!t()) {
                if (!z10) {
                    for (MyCollection myCollection : m()) {
                        myCollection.setSelected(false);
                    }
                }
                notifyItemRangeChanged(0, getItemCount(), "update_checkbox");
            }
        }
    }

    public final void M(boolean z10) {
        r("updateSelectAllItems -> mEditMode(" + this.f37733r + ") selectAll(" + z10 + ')');
        if (this.f37733r) {
            for (MyCollection myCollection : m()) {
                myCollection.setSelected(z10);
            }
            notifyItemRangeChanged(0, getItemCount(), "update_checkbox");
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "MyCollectionAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<MyCollection>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a(this, (ItemMyCollectionBinding) s(parent, R$layout.item_my_collection));
    }
}
