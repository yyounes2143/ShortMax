package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MainCoinSkuView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MainCoinSkuView extends BaseCoinSkuView {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f47589k = new a(null);

    /* compiled from: MainCoinSkuView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainCoinSkuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coin_sku_main;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "MainCoinSkuView";
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView
    public void v(@NotNull CoinSku sku) {
        BaseTextView mBonusTV;
        ConstraintLayout.LayoutParams layoutParams;
        int i10;
        Intrinsics.checkNotNullParameter(sku, "sku");
        super.v(sku);
        String subscript = sku.getSubscript();
        if (subscript != null && subscript.length() != 0 && (mBonusTV = getMBonusTV()) != null) {
            ViewGroup.LayoutParams layoutParams2 = mBonusTV.getLayoutParams();
            ConstraintLayout.LayoutParams layoutParams3 = null;
            if (layoutParams2 instanceof ConstraintLayout.LayoutParams) {
                layoutParams = (ConstraintLayout.LayoutParams) layoutParams2;
            } else {
                layoutParams = null;
            }
            if (layoutParams != null) {
                BaseTextView mLabelTV = getMLabelTV();
                if (mLabelTV != null) {
                    i10 = mLabelTV.getId();
                } else {
                    i10 = -1;
                }
                layoutParams.topToTop = i10;
                layoutParams3 = layoutParams;
            }
            mBonusTV.setLayoutParams(layoutParams3);
        }
    }
}
