package com.startshorts.androidplayer.adapter.mylist;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.databinding.ItemCollectionHorizontalBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import java.util.List;
import jk.b0;
import jk.e0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyCollectionHorizontalAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMyCollectionHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n1863#2,2:161\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 MyCollectionHorizontalAdapter.kt\ncom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter\n*L\n51#1:161,2\n63#1:163,2\n*E\n"})
/* loaded from: classes6.dex */
public final class MyCollectionHorizontalAdapter extends BaseAdapter<MyCollection> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37736t = new a(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final String f37737o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37738p;

    /* renamed from: q  reason: collision with root package name */
    private final int f37739q;

    /* renamed from: r  reason: collision with root package name */
    private final float f37740r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37741s;

    /* compiled from: MyCollectionHorizontalAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyCollectionHorizontalAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<MyCollection>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemCollectionHorizontalBinding f37742g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ MyCollectionHorizontalAdapter f37743h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull MyCollectionHorizontalAdapter myCollectionHorizontalAdapter, ItemCollectionHorizontalBinding binding) {
            super(myCollectionHorizontalAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37743h = myCollectionHorizontalAdapter;
            this.f37742g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemCollectionHorizontalBinding c() {
            return this.f37742g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull MyCollection item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            h(item);
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = c().f39880b;
            FrescoConfig frescoConfig = new FrescoConfig();
            MyCollectionHorizontalAdapter myCollectionHorizontalAdapter = this.f37743h;
            frescoConfig.setUrl(item.getCoverId());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(myCollectionHorizontalAdapter.f37738p);
            frescoConfig.setResizeHeight(myCollectionHorizontalAdapter.f37739q);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(myCollectionHorizontalAdapter.f37740r);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f39881c.setText(item.getShortPlayName());
            if (item.getContentTag() == 1 && !this.f37743h.J()) {
                b0.l(c().f39883e);
                c().f39883e.setText(item.getContentTagText());
            } else {
                b0.d(c().f39883e);
            }
            this.f37743h.O(c());
            this.f37743h.L(c(), item.isSelected());
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void g(int i10, @Nullable MyCollection myCollection, @NotNull List<Object> payloads) {
            boolean z10;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (myCollection != null && !payloads.contains("ignore_refresh")) {
                boolean z11 = false;
                if (payloads.contains("update_checkbox")) {
                    this.f37743h.O(c());
                    this.f37743h.L(c(), myCollection.isSelected());
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (payloads.contains("delete_item")) {
                    i(i10);
                    h(myCollection);
                    super.f(i10, myCollection);
                    this.f37743h.L(c(), myCollection.isSelected());
                } else {
                    z11 = z10;
                }
                if (z11) {
                    f(i10, myCollection);
                }
            }
        }
    }

    public MyCollectionHorizontalAdapter() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(ItemCollectionHorizontalBinding itemCollectionHorizontalBinding, boolean z10) {
        int i10;
        ImageView imageView = null;
        if (this.f37741s) {
            ViewStubProxy viewStubProxy = itemCollectionHorizontalBinding.f39879a;
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
        ViewStubProxy checkBoxViewstub = itemCollectionHorizontalBinding.f39879a;
        Intrinsics.checkNotNullExpressionValue(checkBoxViewstub, "checkBoxViewstub");
        e0.b(checkBoxViewstub, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(ItemCollectionHorizontalBinding itemCollectionHorizontalBinding) {
        if (this.f37741s) {
            ViewStubProxy topBgViewstub = itemCollectionHorizontalBinding.f39882d;
            Intrinsics.checkNotNullExpressionValue(topBgViewstub, "topBgViewstub");
            e0.g(topBgViewstub);
            return;
        }
        ViewStubProxy topBgViewstub2 = itemCollectionHorizontalBinding.f39882d;
        Intrinsics.checkNotNullExpressionValue(topBgViewstub2, "topBgViewstub");
        e0.b(topBgViewstub2, 0, 1, null);
    }

    public final boolean J() {
        return this.f37741s;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: K */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<MyCollection>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        MyCollection d10 = holder.d();
        if (d10 != null) {
            ag.a aVar = ag.a.f646a;
            String str = this.f37737o;
            if (str == null) {
                str = "collections";
            }
            ag.a.d(aVar, str, d10.getShortPlayCode(), null, 0, null, null, null, null, null, 508, null);
        }
    }

    public final void M(boolean z10) {
        if (this.f37741s != z10) {
            r("updateEnterEditMode -> mEditMode(" + z10 + ')');
            this.f37741s = z10;
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

    public final void N(boolean z10) {
        r("updateSelectAllItems -> selectAll(" + z10 + ')');
        if (this.f37741s) {
            for (MyCollection myCollection : CollectionsKt.V0(m(), Math.min(24, m().size()))) {
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
        return "MyCollectionHorizontalAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<MyCollection>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemCollectionHorizontalBinding) s(parent, R$layout.item_collection_horizontal));
    }

    public MyCollectionHorizontalAdapter(@Nullable String str) {
        super(0L, 1, null);
        this.f37737o = str;
        int c10 = bt.a.c((DeviceUtil.f48146a.G() - g.a(56.0f)) / 3.0f);
        this.f37738p = c10;
        this.f37739q = bt.a.c(c10 * 1.3396f);
        this.f37740r = z.f51786a.r();
    }

    public /* synthetic */ MyCollectionHorizontalAdapter(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
