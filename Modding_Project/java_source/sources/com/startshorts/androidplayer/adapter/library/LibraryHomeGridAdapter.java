package com.startshorts.androidplayer.adapter.library;

import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.adapter.library.LibraryHomeGridAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemGridLibraryBinding;
import com.startshorts.androidplayer.databinding.PullUpLoadEndBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import fk.v;
import java.util.Iterator;
import java.util.List;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryHomeGridAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LibraryHomeGridAdapter extends FixLoadMoreAdapter<BaseShorts> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f37718p = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private final int f37719m;

    /* renamed from: n  reason: collision with root package name */
    private final int f37720n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private DiscoverModuleAdapter.n f37721o;

    /* compiled from: LibraryHomeGridAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LibraryHomeGridAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLibraryHomeGridAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryHomeGridAdapter.kt\ncom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$RegionViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n1863#2,2:186\n*S KotlinDebug\n*F\n+ 1 LibraryHomeGridAdapter.kt\ncom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$RegionViewHolder\n*L\n90#1:186,2\n*E\n"})
    /* loaded from: classes6.dex */
    private final class c extends SimpleViewHolder<BaseShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemGridLibraryBinding f37724i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private final i f37725j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ LibraryHomeGridAdapter f37726k;

        /* compiled from: LibraryHomeGridAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ LibraryHomeGridAdapter f37727e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<ShortsLabel> f37728f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(LibraryHomeGridAdapter libraryHomeGridAdapter, Ref.ObjectRef<ShortsLabel> objectRef) {
                super(0L, 1, null);
                this.f37727e = libraryHomeGridAdapter;
                this.f37728f = objectRef;
            }

            @Override // yd.d
            public void a(View v10) {
                Integer num;
                Intrinsics.checkNotNullParameter(v10, "v");
                DiscoverModuleAdapter.n q10 = this.f37727e.q();
                if (q10 != null) {
                    ShortsLabel shortsLabel = this.f37728f.element;
                    if (shortsLabel != null) {
                        num = shortsLabel.getRankingId();
                    } else {
                        num = null;
                    }
                    q10.a("ranking_list_zi", num);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull LibraryHomeGridAdapter libraryHomeGridAdapter, ItemGridLibraryBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37726k = libraryHomeGridAdapter;
            this.f37724i = binding;
            this.f37725j = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.library.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float i10;
                    i10 = LibraryHomeGridAdapter.c.i();
                    return Float.valueOf(i10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float i() {
            return g.a(6.0f);
        }

        private final float j() {
            return ((Number) this.f37725j.getValue()).floatValue();
        }

        private final void k(TextView textView) {
            textView.setPadding(g.a(4.0f), 0, g.a(4.0f), 0);
        }

        private final void l(TextView textView) {
            if (v.f51778a.b()) {
                textView.setPadding(g.a(4.0f), 0, 0, 0);
            } else {
                textView.setPadding(0, 0, g.a(4.0f), 0);
            }
            textView.setCompoundDrawablePadding(g.a(2.0f));
        }

        /* JADX WARN: Type inference failed for: r2v15, types: [com.startshorts.androidplayer.bean.shorts.ShortsLabel, T] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v20 */
        /* JADX WARN: Type inference failed for: r7v3, types: [com.startshorts.androidplayer.bean.shorts.ShortsLabel, T] */
        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: h */
        public void e(int i10, @Nullable BaseShorts baseShorts) {
            int i11;
            ?? r72;
            if (baseShorts == null) {
                return;
            }
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = this.f37724i.f40415b;
            FrescoConfig frescoConfig = new FrescoConfig();
            LibraryHomeGridAdapter libraryHomeGridAdapter = this.f37726k;
            frescoConfig.setUrl(baseShorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(libraryHomeGridAdapter.f37719m);
            frescoConfig.setResizeHeight(libraryHomeGridAdapter.f37720n);
            frescoConfig.setCornerRadius(j());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            this.f37724i.f40418e.setText(baseShorts.getShortPlayName());
            BaseTextView tvLabelStyle = this.f37724i.f40419f;
            Intrinsics.checkNotNullExpressionValue(tvLabelStyle, "tvLabelStyle");
            m(tvLabelStyle, baseShorts.getCornerLabelStyle(), baseShorts.getCornerLabelText());
            DiscoverModuleAdapter.C.i(this.f37724i.f40420g, baseShorts.getPlayNum());
            this.f37724i.f40414a.setVisibility(4);
            List<ShortsLabel> labelList = baseShorts.getLabelList();
            if (labelList != null) {
                i11 = labelList.size();
            } else {
                i11 = 0;
            }
            if (i11 > 0) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                List<ShortsLabel> labelList2 = baseShorts.getLabelList();
                if (labelList2 != null) {
                    Iterator<T> it = labelList2.iterator();
                    while (it.hasNext()) {
                        ?? r22 = (ShortsLabel) it.next();
                        if (r22.getRankingId() != null) {
                            Integer rankingId = r22.getRankingId();
                            Intrinsics.checkNotNull(rankingId);
                            if (rankingId.intValue() > 0) {
                                objectRef.element = r22;
                            }
                        }
                    }
                }
                T t10 = objectRef.element;
                String str = null;
                if (t10 != 0) {
                    TextView textView = this.f37724i.f40417d;
                    ShortsLabel shortsLabel = (ShortsLabel) t10;
                    if (shortsLabel != null) {
                        str = shortsLabel.getLabelName();
                    }
                    textView.setText(str);
                    this.f37724i.f40417d.setTextColor(u.f51776a.a(R$color.color_drama_tag_more));
                    this.f37724i.f40414a.setBackgroundResource(R$drawable.bg_drama_tag_more);
                    this.f37724i.f40416c.setVisibility(0);
                    this.f37724i.f40417d.setOnClickListener(new a(this.f37726k, objectRef));
                    this.f37724i.f40414a.setVisibility(0);
                    return;
                }
                List<ShortsLabel> labelList3 = baseShorts.getLabelList();
                if (labelList3 != null) {
                    r72 = labelList3.get(0);
                } else {
                    r72 = 0;
                }
                objectRef.element = r72;
                if (r72 != 0) {
                    TextView textView2 = this.f37724i.f40417d;
                    if (r72 != 0) {
                        str = r72.getLabelName();
                    }
                    textView2.setText(str);
                    this.f37724i.f40417d.setTextColor(u.f51776a.a(R$color.color_drama_tag_more_normal));
                    this.f37724i.f40414a.setBackgroundResource(R$drawable.bg_drama_tag2);
                    this.f37724i.f40416c.setVisibility(8);
                    this.f37724i.f40414a.setVisibility(0);
                }
            }
        }

        public final void m(@NotNull TextView view, int i10, @Nullable String str) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 5) {
                        if (i10 == 6) {
                            view.setTextColor(view.getContext().getColor(R$color.drama_member_only_label));
                            view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_member_only_label), (Drawable) null, (Drawable) null, (Drawable) null);
                            l(view);
                            view.setBackgroundResource(R$drawable.bg_label_style_member_only);
                        }
                    } else {
                        view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                        k(view);
                        view.setBackgroundResource(R$drawable.bg_label_style_new);
                    }
                } else {
                    view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                    k(view);
                    view.setBackgroundResource(R$drawable.bg_label_style_hot);
                }
            } else {
                view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_excusive_label), (Drawable) null, (Drawable) null, (Drawable) null);
                l(view);
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

    public LibraryHomeGridAdapter() {
        int c10 = bt.a.c((DeviceUtil.f48146a.G() - g.b(56.0f)) / 3);
        this.f37719m = c10;
        this.f37720n = bt.a.c(c10 * 1.34f);
    }

    @Override // com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter
    public int i(int i10) {
        return getItem(i10).getItemType();
    }

    @Override // com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter
    @NotNull
    public SimpleViewHolder<BaseShorts> l(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 0) {
            ItemGridLibraryBinding b10 = ItemGridLibraryBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            return new c(this, b10);
        }
        PullUpLoadEndBinding b11 = PullUpLoadEndBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
        return new b(this, b11);
    }

    @Nullable
    public final DiscoverModuleAdapter.n q() {
        return this.f37721o;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public void onViewAttachedToWindow(@NotNull SimpleViewHolder<BaseShorts> holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseShorts baseShorts = holder.f37202e;
        if (baseShorts != null) {
            ag.a.f(ag.a.f646a, "discover_library", holder.f37201d, baseShorts.getShortPlayCode(), 0, baseShorts.getUpack(), null, 40, null);
        }
    }

    public final void s(@Nullable DiscoverModuleAdapter.n nVar) {
        this.f37721o = nVar;
    }

    /* compiled from: LibraryHomeGridAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends SimpleViewHolder<BaseShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final PullUpLoadEndBinding f37722i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ LibraryHomeGridAdapter f37723j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull LibraryHomeGridAdapter libraryHomeGridAdapter, PullUpLoadEndBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37723j = libraryHomeGridAdapter;
            this.f37722i = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        /* renamed from: g */
        public void e(int i10, @Nullable BaseShorts baseShorts) {
        }
    }
}
