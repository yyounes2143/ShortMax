package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverMain1Row2ColumnXAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverMain1Row2ColumnContainerBinding;
import com.startshorts.androidplayer.databinding.ItemDiscoverModuleMain1Row2ColumnXRowPartBinding;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.base.CatchExceptionLinearLayoutManager;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMain1Row2ColumnXAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverMain1Row2ColumnXAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1872#2,3:174\n*S KotlinDebug\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter\n*L\n162#1:174,3\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverMain1Row2ColumnXAdapter extends BaseAdapter<List<? extends DiscoverShorts>> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f37351t = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final DiscoverModule f37352o;

    /* renamed from: p  reason: collision with root package name */
    private final int f37353p;

    /* renamed from: q  reason: collision with root package name */
    private final int f37354q;

    /* renamed from: r  reason: collision with root package name */
    private final float f37355r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private Function2<? super Integer, ? super DiscoverShorts, Unit> f37356s;

    /* compiled from: DiscoverMain1Row2ColumnXAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverMain1Row2ColumnXAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverMain1Row2ColumnXAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$DoubleRowViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,173:1\n1872#2,2:174\n1874#2:178\n256#3,2:176\n*S KotlinDebug\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$DoubleRowViewHolder\n*L\n63#1:174,2\n63#1:178\n88#1:176,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<List<? extends DiscoverShorts>>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemDiscoverMain1Row2ColumnContainerBinding f37357g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ DiscoverMain1Row2ColumnXAdapter f37358h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverMain1Row2ColumnXAdapter discoverMain1Row2ColumnXAdapter, ItemDiscoverMain1Row2ColumnContainerBinding binding) {
            super(discoverMain1Row2ColumnXAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37358h = discoverMain1Row2ColumnXAdapter;
            this.f37357g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(DiscoverMain1Row2ColumnXAdapter discoverMain1Row2ColumnXAdapter, int i10, int i11, DiscoverShorts discoverShorts, View view) {
            discoverMain1Row2ColumnXAdapter.J().invoke(Integer.valueOf((i10 * discoverMain1Row2ColumnXAdapter.O()) + i11 + 1), discoverShorts);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemDiscoverMain1Row2ColumnContainerBinding c() {
            return this.f37357g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(final int i10, @NotNull List<? extends DiscoverShorts> item) {
            boolean z10;
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40054a.removeAllViews();
            final DiscoverMain1Row2ColumnXAdapter discoverMain1Row2ColumnXAdapter = this.f37358h;
            boolean z11 = false;
            final int i12 = 0;
            for (Object obj : item) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.y();
                }
                final DiscoverShorts discoverShorts = (DiscoverShorts) obj;
                View inflate = LayoutInflater.from(c().getRoot().getContext()).inflate(R$layout.item_discover_main_1_row_2_column_container_item, (ViewGroup) null, z11);
                c().f40054a.addView(inflate);
                CustomFrescoView customFrescoView = (CustomFrescoView) inflate.findViewById(R$id.cover_iv);
                customFrescoView.setContentDescription(discoverShorts.getShortPlayName() + ' ' + i10 + ' ' + discoverShorts.getId());
                kk.f fVar = kk.f.f60747a;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(discoverShorts.getPicUrl());
                id.c cVar = id.c.f53397a;
                frescoConfig.setOssWidth(cVar.b());
                frescoConfig.setOssHeight(cVar.a());
                frescoConfig.setResizeWidth(discoverMain1Row2ColumnXAdapter.f37353p);
                frescoConfig.setResizeHeight(discoverMain1Row2ColumnXAdapter.f37354q);
                frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
                frescoConfig.setCornerTransform(true);
                frescoConfig.setCornerRadius(discoverMain1Row2ColumnXAdapter.f37355r);
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                DiscoverModuleAdapter.C.i((TextView) inflate.findViewById(R$id.tvPlayCount), discoverShorts.getPlayNum());
                ((TextView) inflate.findViewById(R$id.shorts_name_tv)).setText(discoverShorts.getShortPlayName());
                ((TextView) inflate.findViewById(R$id.shorts_label_tv)).setText(discoverShorts.getLevel1CategoryName());
                View findViewById = inflate.findViewById(R$id.shorts_label_iv);
                Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
                String level1CategoryName = discoverShorts.getLevel1CategoryName();
                if (level1CategoryName != null && level1CategoryName.length() != 0) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (!z10) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                findViewById.setVisibility(i11);
                inflate.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.discover.j
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DiscoverMain1Row2ColumnXAdapter.b.m(DiscoverMain1Row2ColumnXAdapter.this, i10, i12, discoverShorts, view);
                    }
                });
                i12 = i13;
                z11 = false;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverMain1Row2ColumnXAdapter(@NotNull DiscoverModule module) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(module, "module");
        this.f37352o = module;
        this.f37353p = jk.g.a(72.0f);
        this.f37354q = jk.g.a(99.0f);
        this.f37355r = fk.z.f51786a.r();
        this.f37356s = new Function2() { // from class: com.startshorts.androidplayer.adapter.discover.i
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit L;
                L = DiscoverMain1Row2ColumnXAdapter.L(((Integer) obj).intValue(), (DiscoverShorts) obj2);
                return L;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(int i10, DiscoverShorts discoverShorts) {
        Intrinsics.checkNotNullParameter(discoverShorts, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int O() {
        int i10;
        List<DiscoverShorts> shortPlayResponseList = this.f37352o.getShortPlayResponseList();
        if (shortPlayResponseList != null) {
            i10 = shortPlayResponseList.size();
        } else {
            i10 = 0;
        }
        if (i10 > 2) {
            return 2;
        }
        return 1;
    }

    @NotNull
    public final Function2<Integer, DiscoverShorts, Unit> J() {
        return this.f37356s;
    }

    public final void K(@Nullable RecyclerView.LayoutManager layoutManager, @NotNull Context context, @NotNull DiscoverModule discoverModule) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return;
        }
        List<DiscoverShorts> shortPlayResponseList = this.f37352o.getShortPlayResponseList();
        if (shortPlayResponseList == null) {
            shortPlayResponseList = new ArrayList<>();
        }
        List<DiscoverShorts> list = shortPlayResponseList;
        if (list.isEmpty()) {
            return;
        }
        CoroutineUtil.f48072a.j("logReelShow", true, new DiscoverMain1Row2ColumnXAdapter$logReelShow$1(layoutManager, list, O(), context, discoverModule, null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: M */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<List<DiscoverShorts>>.ViewHolder holder) {
        MainActivity mainActivity;
        DiscoverTabFragment f02;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Context context = holder.itemView.getContext();
        DiscoverTab discoverTab = null;
        if (context instanceof MainActivity) {
            mainActivity = (MainActivity) context;
        } else {
            mainActivity = null;
        }
        if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
            discoverTab = f02.H0();
        }
        List<DiscoverShorts> d10 = holder.d();
        if (d10 != null) {
            int i10 = 0;
            for (Object obj : d10) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                ag.a.c(ag.a.f646a, (DiscoverShorts) obj, (holder.getLayoutPosition() * O()) + i10 + 1, 0, discoverTab, null, null, null, null, 244, null);
                i10 = i11;
            }
        }
    }

    public final void N(@NotNull DiscoverModule item, @NotNull ItemDiscoverModuleMain1Row2ColumnXRowPartBinding binding) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(binding, "binding");
        List<DiscoverShorts> shortPlayResponseList = item.getShortPlayResponseList();
        if (shortPlayResponseList == null) {
            return;
        }
        RecyclerView.ItemDecoration itemDecoration = new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.adapter.discover.DiscoverMain1Row2ColumnXAdapter$renderViewHolder$itemDecoration$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                if (parent.getChildLayoutPosition(view) == 0) {
                    fk.z zVar = fk.z.f51786a;
                    jk.r.a(outRect, zVar.d(), 0, zVar.a(), 0);
                    return;
                }
                jk.r.a(outRect, 0, 0, fk.z.f51786a.a(), 0);
            }
        };
        RecyclerView recyclerView = binding.f40138a;
        recyclerView.setAdapter(this);
        recyclerView.setHasFixedSize(true);
        Context context = binding.getRoot().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        recyclerView.setLayoutManager(new CatchExceptionLinearLayoutManager(context, 0, false));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(itemDecoration);
        }
        BaseAdapter.D(this, CollectionsKt.g1(CollectionsKt.f0(shortPlayResponseList, O())), false, 2, null);
    }

    public final void P(@NotNull Function2<? super Integer, ? super DiscoverShorts, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f37356s = function2;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "DiscoverMain1Row2ColumnXAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<List<? extends DiscoverShorts>>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemDiscoverMain1Row2ColumnContainerBinding) s(parent, R$layout.item_discover_main_1_row_2_column_container));
    }
}
