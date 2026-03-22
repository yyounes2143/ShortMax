package com.startshorts.androidplayer.adapter.library;

import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.library.LibraryGridAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.databinding.ItemGridLibraryBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.v;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryGridAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LibraryGridAdapter extends FixLoadMoreAdapter<BaseShorts> {

    /* renamed from: m  reason: collision with root package name */
    private final int f37705m;

    /* renamed from: n  reason: collision with root package name */
    private final int f37706n;

    /* compiled from: LibraryGridAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends SimpleViewHolder<BaseShorts> {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final ItemGridLibraryBinding f37707i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private final i f37708j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ LibraryGridAdapter f37709k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull LibraryGridAdapter libraryGridAdapter, ItemGridLibraryBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37709k = libraryGridAdapter;
            this.f37707i = binding;
            this.f37708j = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.library.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    float i10;
                    i10 = LibraryGridAdapter.a.i();
                    return Float.valueOf(i10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float i() {
            return g.a(6.0f);
        }

        private final float j() {
            return ((Number) this.f37708j.getValue()).floatValue();
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

        @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: h */
        public void e(int i10, @Nullable BaseShorts baseShorts) {
            if (baseShorts == null) {
                return;
            }
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = this.f37707i.f40415b;
            FrescoConfig frescoConfig = new FrescoConfig();
            LibraryGridAdapter libraryGridAdapter = this.f37709k;
            frescoConfig.setUrl(baseShorts.getPicUrl());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(libraryGridAdapter.f37705m);
            frescoConfig.setResizeHeight(libraryGridAdapter.f37706n);
            frescoConfig.setCornerRadius(j());
            frescoConfig.setCornerTransform(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            this.f37707i.f40418e.setText(baseShorts.getShortPlayName());
            BaseTextView tvLabelStyle = this.f37707i.f40419f;
            Intrinsics.checkNotNullExpressionValue(tvLabelStyle, "tvLabelStyle");
            m(tvLabelStyle, baseShorts.getCornerLabelStyle(), baseShorts.getCornerLabelText());
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

    public LibraryGridAdapter() {
        int c10 = bt.a.c((DeviceUtil.f48146a.G() - g.b(56.0f)) / 3);
        this.f37705m = c10;
        this.f37706n = bt.a.c(c10 * 1.34f);
    }

    @Override // com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter
    @NotNull
    public SimpleViewHolder<BaseShorts> l(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemGridLibraryBinding b10 = ItemGridLibraryBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return new a(this, b10);
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
}
