package com.startshorts.androidplayer.adapter.tag;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import com.google.android.flexbox.FlexboxLayout;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.adapter.tag.TagDrawerAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemGridTagDrawerBinding;
import com.startshorts.androidplayer.databinding.PullUpLoadEndBinding;
import com.startshorts.androidplayer.databinding.ViewDiscoverTaglistTagBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.v;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagDrawerAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TagDrawerAdapter extends FixLoadMoreAdapter<DiscoverShorts> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f38093o = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private final int f38094m;

    /* renamed from: n  reason: collision with root package name */
    private final int f38095n;

    /* compiled from: TagDrawerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: TagDrawerAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTagDrawerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagDrawerAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$RegionViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,196:1\n774#2:197\n865#2,2:198\n1872#2,3:200\n46#3:203\n1328#4,3:204\n*S KotlinDebug\n*F\n+ 1 TagDrawerAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$RegionViewHolder\n*L\n92#1:197\n92#1:198,2\n99#1:200,3\n110#1:203\n115#1:204,3\n*E\n"})
    /* loaded from: classes6.dex */
    private final class c extends SimpleViewHolder<DiscoverShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemGridTagDrawerBinding f38098i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private final i f38099j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ TagDrawerAdapter f38100k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull TagDrawerAdapter tagDrawerAdapter, ItemGridTagDrawerBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38100k = tagDrawerAdapter;
            this.f38098i = binding;
            this.f38099j = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.tag.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float k10;
                    k10 = TagDrawerAdapter.c.k();
                    return Float.valueOf(k10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(FlexboxLayout flexboxLayout) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final float k() {
            return g.a(6.0f);
        }

        private final float l() {
            return ((Number) this.f38099j.getValue()).floatValue();
        }

        private final void m(TextView textView) {
            textView.setPadding(g.a(4.0f), 0, g.a(4.0f), 0);
        }

        private final void n(TextView textView) {
            if (v.f51778a.b()) {
                textView.setPadding(g.a(4.0f), 0, 0, 0);
            } else {
                textView.setPadding(0, 0, g.a(4.0f), 0);
            }
            textView.setCompoundDrawablePadding(g.a(2.0f));
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        /* renamed from: i */
        public void e(int i10, @Nullable DiscoverShorts discoverShorts) {
            ArrayList arrayList;
            boolean z10;
            if (discoverShorts == null) {
                return;
            }
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = this.f38098i.f40426b;
            FrescoConfig frescoConfig = new FrescoConfig();
            TagDrawerAdapter tagDrawerAdapter = this.f38100k;
            frescoConfig.setUrl(discoverShorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(tagDrawerAdapter.f38094m);
            frescoConfig.setResizeHeight(tagDrawerAdapter.f38095n);
            frescoConfig.setCornerRadius(l());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            this.f38098i.f40427c.setText(discoverShorts.getShortPlayName());
            BaseTextView tvLabelStyle = this.f38098i.f40428d;
            Intrinsics.checkNotNullExpressionValue(tvLabelStyle, "tvLabelStyle");
            o(tvLabelStyle, discoverShorts.getCornerLabelStyle(), discoverShorts.getCornerLabelText());
            DiscoverModuleAdapter.C.i(this.f38098i.f40429e, discoverShorts.getPlayNum());
            final FlexboxLayout flexboxLayout = this.f38098i.f40425a;
            flexboxLayout.removeAllViews();
            LayoutInflater from = LayoutInflater.from(flexboxLayout.getContext());
            List<ShortsLabel> labelList = discoverShorts.getLabelList();
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
                int i11 = 0;
                for (Object obj2 : arrayList) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.y();
                    }
                    ShortsLabel shortsLabel = (ShortsLabel) obj2;
                    ViewDiscoverTaglistTagBinding b10 = ViewDiscoverTaglistTagBinding.b(from, flexboxLayout, true);
                    Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                    if (i11 == 0) {
                        ViewGroup.LayoutParams layoutParams = b10.f41220a.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        marginLayoutParams.setMarginStart(0);
                        b10.f41220a.setLayoutParams(marginLayoutParams);
                    }
                    b10.f41220a.setText(shortsLabel.getLabelName());
                    i11 = i12;
                }
                flexboxLayout.post(new Runnable() { // from class: com.startshorts.androidplayer.adapter.tag.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        TagDrawerAdapter.c.j(FlexboxLayout.this);
                    }
                });
                return;
            }
            b0.d(flexboxLayout);
        }

        public final void o(@NotNull TextView view, int i10, @Nullable String str) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 5) {
                        if (i10 == 6) {
                            view.setTextColor(view.getContext().getColor(R$color.drama_member_only_label));
                            view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_member_only_label), (Drawable) null, (Drawable) null, (Drawable) null);
                            n(view);
                            view.setBackgroundResource(R$drawable.bg_label_style_member_only);
                        }
                    } else {
                        view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                        m(view);
                        view.setBackgroundResource(R$drawable.bg_label_style_new);
                    }
                } else {
                    view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                    m(view);
                    view.setBackgroundResource(R$drawable.bg_label_style_hot);
                }
            } else {
                view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_excusive_label), (Drawable) null, (Drawable) null, (Drawable) null);
                n(view);
                view.setBackgroundResource(R$drawable.bg_label_style_exclusive);
            }
            if (str != null && str.length() != 0) {
                view.setText(str);
                view.setVisibility(0);
                return;
            }
            view.setVisibility(4);
        }
    }

    public TagDrawerAdapter() {
        int c10 = bt.a.c((DeviceUtil.f48146a.G() - g.b(56.0f)) / 3);
        this.f38094m = c10;
        this.f38095n = bt.a.c(c10 * 1.34f);
    }

    @Override // com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter
    public int i(int i10) {
        return getItem(i10).getItemType();
    }

    @Override // com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter
    @NotNull
    public SimpleViewHolder<DiscoverShorts> l(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 0) {
            ItemGridTagDrawerBinding b10 = ItemGridTagDrawerBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            return new c(this, b10);
        }
        PullUpLoadEndBinding b11 = PullUpLoadEndBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
        return new b(this, b11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: q */
    public void onViewAttachedToWindow(@NotNull SimpleViewHolder<DiscoverShorts> holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        DiscoverShorts discoverShorts = holder.f37202e;
        if (discoverShorts != null) {
            ag.a.f(ag.a.f646a, "tag_drawer_page", holder.getLayoutPosition(), discoverShorts.getShortPlayCode(), 0, discoverShorts.getUpack(), null, 40, null);
        }
    }

    /* compiled from: TagDrawerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends SimpleViewHolder<DiscoverShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final PullUpLoadEndBinding f38096i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ TagDrawerAdapter f38097j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull TagDrawerAdapter tagDrawerAdapter, PullUpLoadEndBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38097j = tagDrawerAdapter;
            this.f38096i = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        /* renamed from: g */
        public void e(int i10, @Nullable DiscoverShorts discoverShorts) {
        }
    }
}
