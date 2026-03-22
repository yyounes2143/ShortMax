package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BlackFridayCoinSkuView7.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BlackFridayCoinSkuView7 extends BlackFridayCoinSkuView {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f47556r = new a(null);
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private View f47557q;

    /* compiled from: BlackFridayCoinSkuView7.kt */
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
    public BlackFridayCoinSkuView7(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coin_sku_black_friday_7;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "BlackFridayCoinSkuView2";
    }

    public final void setSelect(boolean z10) {
        int i10;
        View view = this.f47557q;
        if (view != null) {
            if (z10) {
                i10 = R$drawable.bg_sku_coin_7_selected;
            } else {
                i10 = R$drawable.bg_sku_coin_7;
            }
            view.setBackgroundResource(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BlackFridayCoinSkuView, com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47557q = findViewById(R$id.body_view);
        BaseTextView mLabelTV = getMLabelTV();
        if (mLabelTV != null) {
            mLabelTV.setSelected(true);
        }
    }
}
