package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoinSkuView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CoinSkuView extends BaseCoinSkuView {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f47579k = new a(null);

    /* compiled from: CoinSkuView.kt */
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
    public CoinSkuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coin_sku;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "CoinSkuView";
    }
}
