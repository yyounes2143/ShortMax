package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoinSkuView7.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CoinSkuView7 extends BaseCoinSkuView {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f47580l = new a(null);
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private View f47581k;

    /* compiled from: CoinSkuView7.kt */
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
    public CoinSkuView7(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coin_sku_7;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "CoinSkuView";
    }

    public final void setSelect(boolean z10) {
        int i10;
        View view = this.f47581k;
        if (view != null) {
            if (z10) {
                i10 = R$drawable.bg_sku_coin_7_selected;
            } else {
                i10 = R$drawable.bg_sku_coin_7;
            }
            view.setBackgroundResource(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47581k = findViewById(R$id.bg_view);
    }
}
