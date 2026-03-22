package com.startshorts.androidplayer.adapter.library;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.library.LibraryHomeAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.databinding.ItemLibraryBinding;
import com.startshorts.androidplayer.databinding.PullUpLoadEndBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryHomeAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLibraryHomeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryHomeAdapter.kt\ncom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n360#2,7:96\n*S KotlinDebug\n*F\n+ 1 LibraryHomeAdapter.kt\ncom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter\n*L\n33#1:96,7\n*E\n"})
/* loaded from: classes6.dex */
public final class LibraryHomeAdapter extends FixLoadMoreAdapter<BaseShorts> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f37710o = new a(null);

    /* renamed from: m  reason: collision with root package name */
    private final int f37711m;

    /* renamed from: n  reason: collision with root package name */
    private final int f37712n;

    /* compiled from: LibraryHomeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LibraryHomeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends SimpleViewHolder<BaseShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemLibraryBinding f37715i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private final i f37716j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ LibraryHomeAdapter f37717k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull LibraryHomeAdapter libraryHomeAdapter, ItemLibraryBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37717k = libraryHomeAdapter;
            this.f37715i = binding;
            this.f37716j = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.library.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float i10;
                    i10 = LibraryHomeAdapter.c.i();
                    return Float.valueOf(i10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float i() {
            return g.a(5.0f);
        }

        private final float j() {
            return ((Number) this.f37716j.getValue()).floatValue();
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: h */
        public void e(int i10, @Nullable BaseShorts baseShorts) {
            if (baseShorts == null) {
                return;
            }
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = this.f37715i.f40467c;
            FrescoConfig frescoConfig = new FrescoConfig();
            LibraryHomeAdapter libraryHomeAdapter = this.f37717k;
            frescoConfig.setUrl(baseShorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(libraryHomeAdapter.f37711m);
            frescoConfig.setResizeHeight(libraryHomeAdapter.f37712n);
            frescoConfig.setCornerRadius(j());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            this.f37715i.f40469e.setText(baseShorts.getShortPlayName());
            this.f37715i.f40468d.setText(baseShorts.getSummary());
            String string = this.f37715i.getRoot().getResources().getString(R$string.common_current_ep, String.valueOf(baseShorts.getEpisodeNum()));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = this.f37715i.getRoot().getResources().getString(R$string.common_total_ep, String.valueOf(baseShorts.getTotalEpisodes()));
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            BaseTextView baseTextView = this.f37715i.f40466b;
            baseTextView.setText(string + " / " + string2);
        }
    }

    public LibraryHomeAdapter() {
        int c10 = bt.a.c(((DeviceUtil.f48146a.G() - g.b(16.0f)) - g.b(24.0f)) * 0.289f);
        this.f37711m = c10;
        this.f37712n = bt.a.c(c10 * 1.32f);
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
            ItemLibraryBinding b10 = ItemLibraryBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            return new c(this, b10);
        }
        PullUpLoadEndBinding b11 = PullUpLoadEndBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
        return new b(this, b11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: q */
    public void onViewAttachedToWindow(@NotNull SimpleViewHolder<BaseShorts> holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseShorts baseShorts = holder.f37202e;
        if (baseShorts != null) {
            ag.a.f(ag.a.f646a, "discover_library", holder.f37201d, baseShorts.getShortPlayCode(), 0, baseShorts.getUpack(), null, 40, null);
        }
    }

    public final void r(int i10, int i11) {
        ArrayList<BaseShorts> d10 = d();
        Intrinsics.checkNotNullExpressionValue(d10, "getAll(...)");
        Iterator<BaseShorts> it = d10.iterator();
        int i12 = 0;
        while (true) {
            if (it.hasNext()) {
                if (it.next().getId() == i10) {
                    break;
                }
                i12++;
            } else {
                i12 = -1;
                break;
            }
        }
        if (-1 != i12 && d().get(i12).getEpisodeNum() != i11) {
            d().get(i12).setEpisodeNum(i11);
            notifyItemChanged(i12);
        }
    }

    /* compiled from: LibraryHomeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends SimpleViewHolder<BaseShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final PullUpLoadEndBinding f37713i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ LibraryHomeAdapter f37714j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull LibraryHomeAdapter libraryHomeAdapter, PullUpLoadEndBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37714j = libraryHomeAdapter;
            this.f37713i = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        /* renamed from: g */
        public void e(int i10, @Nullable BaseShorts baseShorts) {
        }
    }
}
