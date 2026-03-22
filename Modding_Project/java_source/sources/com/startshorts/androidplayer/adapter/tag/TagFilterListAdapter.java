package com.startshorts.androidplayer.adapter.tag;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.adapter.tag.TagFilterListAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemTagListShortsBinding;
import com.startshorts.androidplayer.databinding.ViewDiscoverTaglistTagBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: TagFilterListAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TagFilterListAdapter extends BaseAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f38101r = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f38102o;

    /* renamed from: p  reason: collision with root package name */
    private final int f38103p;

    /* renamed from: q  reason: collision with root package name */
    private final float f38104q;

    /* compiled from: TagFilterListAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: TagFilterListAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTagFilterListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagFilterListAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$ShortsViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,139:1\n774#2:140\n865#2,2:141\n1872#2,3:143\n46#3:146\n1328#4,3:147\n*S KotlinDebug\n*F\n+ 1 TagFilterListAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$ShortsViewHolder\n*L\n89#1:140\n89#1:141,2\n95#1:143,3\n106#1:146\n111#1:147,3\n*E\n"})
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<DiscoverShorts>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemTagListShortsBinding f38105g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ TagFilterListAdapter f38106h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull TagFilterListAdapter tagFilterListAdapter, ItemTagListShortsBinding binding) {
            super(tagFilterListAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38106h = tagFilterListAdapter;
            this.f38105g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(FlexboxLayout flexboxLayout) {
            boolean z10;
            Intrinsics.checkNotNull(flexboxLayout);
            if (flexboxLayout.getChildCount() == 0) {
                b0.d(flexboxLayout);
                return;
            }
            int top = flexboxLayout.getChildAt(0).getTop();
            int i10 = 0;
            for (View view : ViewGroupKt.getChildren(flexboxLayout)) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                View view2 = view;
                BaseTextView baseTextView = (BaseTextView) view2.findViewById(R$id.tv_tag);
                boolean z11 = true;
                if (view2.getTop() > top) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = (baseTextView == null || !baseTextView.c()) ? false : false;
                if (!z10 && !z11) {
                    b0.l(view2);
                } else if (i10 == 0) {
                    b0.d(flexboxLayout);
                    return;
                } else {
                    b0.d(view2);
                }
                i10 = i11;
            }
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: k */
        public ItemTagListShortsBinding c() {
            return this.f38105g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void f(int i10, @NotNull DiscoverShorts item) {
            int i11;
            ArrayList arrayList;
            boolean z10;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            CustomFrescoView coverIv = c().f40996b;
            Intrinsics.checkNotNullExpressionValue(coverIv, "coverIv");
            if (i10 == 0) {
                i11 = g.a(15.0f);
            } else {
                i11 = 0;
            }
            b0.i(coverIv, 0, i11, 0, g.a(8.0f), 5, null);
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = c().f40996b;
            FrescoConfig frescoConfig = new FrescoConfig();
            TagFilterListAdapter tagFilterListAdapter = this.f38106h;
            frescoConfig.setUrl(item.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(tagFilterListAdapter.f38102o);
            frescoConfig.setResizeHeight(tagFilterListAdapter.f38103p);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(tagFilterListAdapter.f38104q);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            DiscoverModuleAdapter.f fVar2 = DiscoverModuleAdapter.C;
            fVar2.i(c().f41001g, item.getPlayNum());
            BaseTextView tvLabelStyle = c().f41000f;
            Intrinsics.checkNotNullExpressionValue(tvLabelStyle, "tvLabelStyle");
            int cornerLabelStyle = item.getCornerLabelStyle();
            String cornerLabelText = item.getCornerLabelText();
            if (cornerLabelText == null) {
                cornerLabelText = "";
            }
            fVar2.h(tvLabelStyle, cornerLabelStyle, cornerLabelText);
            c().f40998d.setText(item.getShortPlayName());
            c().f40995a.setText(item.getSummary());
            if (item.getEpisodeNum() >= 0 && item.getTotalEpisodes() > 0) {
                c().f40999e.setText(c().f40999e.getContext().getString(R$string.common_total_ep, String.valueOf(item.getTotalEpisodes())));
            }
            final FlexboxLayout flexboxLayout = c().f40997c;
            flexboxLayout.removeAllViews();
            LayoutInflater from = LayoutInflater.from(flexboxLayout.getContext());
            List<ShortsLabel> labelList = item.getLabelList();
            if (labelList != null) {
                arrayList = new ArrayList();
                for (Object obj : labelList) {
                    String labelName = ((ShortsLabel) obj).getLabelName();
                    if (labelName != null && !StringsKt.t0(labelName)) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    if (!z10) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                b0.l(flexboxLayout);
                int i12 = 0;
                for (Object obj2 : arrayList) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.y();
                    }
                    ShortsLabel shortsLabel = (ShortsLabel) obj2;
                    ViewDiscoverTaglistTagBinding b10 = ViewDiscoverTaglistTagBinding.b(from, flexboxLayout, true);
                    Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                    if (i12 == 0) {
                        ViewGroup.LayoutParams layoutParams = b10.f41220a.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams.setMarginStart(0);
                        b10.f41220a.setLayoutParams(marginLayoutParams);
                    }
                    b10.f41220a.setText(shortsLabel.getLabelName());
                    i12 = i13;
                }
                flexboxLayout.post(new Runnable() { // from class: com.startshorts.androidplayer.adapter.tag.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        TagFilterListAdapter.b.m(FlexboxLayout.this);
                    }
                });
                return;
            }
            b0.d(flexboxLayout);
        }
    }

    public TagFilterListAdapter() {
        super(0L, 1, null);
        this.f38102o = g.a(109.0f);
        this.f38103p = g.a(145.0f);
        this.f38104q = z.f51786a.r();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: H */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<DiscoverShorts>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        DiscoverShorts d10 = holder.d();
        if (d10 != null) {
            ag.a.f(ag.a.f646a, "tag_fullscreen_page", holder.getLayoutPosition(), d10.getShortPlayCode(), 0, d10.getUpack(), null, 40, null);
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "TagFilterListAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<DiscoverShorts>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemTagListShortsBinding) s(parent, R$layout.item_tag_list_shorts));
    }
}
