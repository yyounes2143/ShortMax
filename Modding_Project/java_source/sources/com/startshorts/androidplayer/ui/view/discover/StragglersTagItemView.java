package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemDiscoverStaggeredTagItemBinding;
import com.startshorts.androidplayer.ui.view.discover.StragglersTagItemView;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StragglersTagItemView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StragglersTagItemView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    public ItemDiscoverStaggeredTagItemBinding f47247a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StragglersTagItemView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(Function2 function2, ShortsLabel shortsLabel, int i10, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        function2.invoke(shortsLabel, Integer.valueOf(i10));
        return Unit.f60915a;
    }

    @NotNull
    public final ItemDiscoverStaggeredTagItemBinding getBinding() {
        ItemDiscoverStaggeredTagItemBinding itemDiscoverStaggeredTagItemBinding = this.f47247a;
        if (itemDiscoverStaggeredTagItemBinding != null) {
            return itemDiscoverStaggeredTagItemBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void r(@NotNull final ShortsLabel item, final int i10, @NotNull final Function2<? super ShortsLabel, ? super Integer, Unit> onClickItem) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(onClickItem, "onClickItem");
        getBinding().f40315a.setText(item.getLabelName());
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: gj.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit s10;
                s10 = StragglersTagItemView.s(Function2.this, item, i10, (View) obj);
                return s10;
            }
        }, 1, null);
    }

    public final void setBinding(@NotNull ItemDiscoverStaggeredTagItemBinding itemDiscoverStaggeredTagItemBinding) {
        Intrinsics.checkNotNullParameter(itemDiscoverStaggeredTagItemBinding, "<set-?>");
        this.f47247a = itemDiscoverStaggeredTagItemBinding;
    }

    public final void t(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ItemDiscoverStaggeredTagItemBinding.b(LayoutInflater.from(context), this, true));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StragglersTagItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StragglersTagItemView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        t(context);
    }
}
