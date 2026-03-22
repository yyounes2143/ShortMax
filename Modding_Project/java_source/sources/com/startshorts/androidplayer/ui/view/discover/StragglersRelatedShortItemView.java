package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredRelatedShortItemBinding;
import com.startshorts.androidplayer.ui.view.discover.StragglersRelatedShortItemView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StragglersRelatedShortItemView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StragglersRelatedShortItemView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    public ItemDiscoverStaggeredRelatedShortItemBinding f47246a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StragglersRelatedShortItemView(@NotNull Context context) {
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
    public final ItemDiscoverStaggeredRelatedShortItemBinding getBinding() {
        ItemDiscoverStaggeredRelatedShortItemBinding itemDiscoverStaggeredRelatedShortItemBinding = this.f47246a;
        if (itemDiscoverStaggeredRelatedShortItemBinding != null) {
            return itemDiscoverStaggeredRelatedShortItemBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void r(@NotNull final DiscoverShorts item, final int i10, @NotNull final Function2<? super DiscoverShorts, ? super Integer, Unit> onClickItem) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(onClickItem, "onClickItem");
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = getBinding().f40302a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(item.getPicUrl());
        frescoConfig.setOssWidth(g.a(37.0f));
        frescoConfig.setOssHeight(g.a(48.0f));
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(g.a(6.0f));
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        getBinding().f40303b.setText(item.getShortPlayName());
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: gj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit s10;
                s10 = StragglersRelatedShortItemView.s(Function2.this, item, i10, (View) obj);
                return s10;
            }
        }, 1, null);
    }

    public final void setBinding(@NotNull ItemDiscoverStaggeredRelatedShortItemBinding itemDiscoverStaggeredRelatedShortItemBinding) {
        Intrinsics.checkNotNullParameter(itemDiscoverStaggeredRelatedShortItemBinding, "<set-?>");
        this.f47246a = itemDiscoverStaggeredRelatedShortItemBinding;
    }

    public final void t(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ItemDiscoverStaggeredRelatedShortItemBinding.b(LayoutInflater.from(context), this, true));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StragglersRelatedShortItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StragglersRelatedShortItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        t(context);
    }
}
