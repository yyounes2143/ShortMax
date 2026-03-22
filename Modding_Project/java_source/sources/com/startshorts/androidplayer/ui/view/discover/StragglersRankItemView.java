package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRankShortItemBinding;
import com.startshorts.androidplayer.ui.view.discover.StragglersRankItemView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import java.util.List;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StragglersRankItemView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StragglersRankItemView extends ConstraintLayout {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f47243b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<Integer> f47244c = CollectionsKt.t(Integer.valueOf(R$drawable.ic_rank_mark1), Integer.valueOf(R$drawable.ic_rank_mark2), Integer.valueOf(R$drawable.ic_rank_mark3), Integer.valueOf(R$drawable.ic_rank_mark4), Integer.valueOf(R$drawable.ic_rank_mark5), Integer.valueOf(R$drawable.ic_rank_mark6), Integer.valueOf(R$drawable.ic_rank_mark7), Integer.valueOf(R$drawable.ic_rank_mark8), Integer.valueOf(R$drawable.ic_rank_mark9), Integer.valueOf(R$drawable.ic_rank_mark10), Integer.valueOf(R$drawable.ic_rank_mark11), Integer.valueOf(R$drawable.ic_rank_mark12), Integer.valueOf(R$drawable.ic_rank_mark13), Integer.valueOf(R$drawable.ic_rank_mark14), Integer.valueOf(R$drawable.ic_rank_mark15), Integer.valueOf(R$drawable.ic_rank_mark16), Integer.valueOf(R$drawable.ic_rank_mark17), Integer.valueOf(R$drawable.ic_rank_mark18), Integer.valueOf(R$drawable.ic_rank_mark19), Integer.valueOf(R$drawable.ic_rank_mark20));

    /* renamed from: a  reason: collision with root package name */
    public ItemDiscoverStaggeredRankShortItemBinding f47245a;

    /* compiled from: StragglersRankItemView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StragglersRankItemView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(Function2 function2, DiscoverShorts discoverShorts, int i10, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function2.invoke(discoverShorts, Integer.valueOf(i10));
        return Unit.f60915a;
    }

    @NotNull
    public final ItemDiscoverStaggeredRankShortItemBinding getBinding() {
        ItemDiscoverStaggeredRankShortItemBinding itemDiscoverStaggeredRankShortItemBinding = this.f47245a;
        if (itemDiscoverStaggeredRankShortItemBinding != null) {
            return itemDiscoverStaggeredRankShortItemBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void r(@NotNull final DiscoverShorts item, final int i10, @NotNull final Function2<? super DiscoverShorts, ? super Integer, Unit> onClickItem) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(onClickItem, "onClickItem");
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = getBinding().f40293a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(item.getPicUrl());
        frescoConfig.setOssWidth(g.a(37.0f));
        frescoConfig.setOssHeight(g.a(48.0f));
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(g.a(4.0f));
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        getBinding().f40297e.setText(item.getShortPlayName());
        String hotScore = item.getHotScore();
        if (hotScore != null && hotScore.length() != 0) {
            getBinding().f40296d.setText(item.getHotScore());
            b0.l(getBinding().f40296d);
            b0.l(getBinding().f40295c);
        } else {
            b0.d(getBinding().f40296d);
            b0.d(getBinding().f40295c);
        }
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: gj.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit s10;
                s10 = StragglersRankItemView.s(Function2.this, item, i10, (View) obj);
                return s10;
            }
        }, 1, null);
        Integer num = (Integer) CollectionsKt.t0(f47244c, i10);
        if (num != null) {
            int intValue = num.intValue();
            b0.l(getBinding().f40294b);
            getBinding().f40294b.setImageResource(intValue);
            return;
        }
        b0.d(getBinding().f40294b);
    }

    public final void setBinding(@NotNull ItemDiscoverStaggeredRankShortItemBinding itemDiscoverStaggeredRankShortItemBinding) {
        Intrinsics.checkNotNullParameter(itemDiscoverStaggeredRankShortItemBinding, "<set-?>");
        this.f47245a = itemDiscoverStaggeredRankShortItemBinding;
    }

    public final void t(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ItemDiscoverStaggeredRankShortItemBinding.b(LayoutInflater.from(context), this, true));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StragglersRankItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StragglersRankItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        t(context);
    }
}
