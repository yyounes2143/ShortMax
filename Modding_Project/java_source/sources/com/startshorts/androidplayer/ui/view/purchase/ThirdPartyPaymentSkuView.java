package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThirdPartyPaymentSkuView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ThirdPartyPaymentSkuView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f47634c = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private TextView f47635b;

    /* compiled from: ThirdPartyPaymentSkuView.kt */
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
    public ThirdPartyPaymentSkuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_third_party_payment_sku;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ThirdPartyPaymentSkuView";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47635b = (TextView) findViewById(R$id.title_tv);
    }

    public final void v(@NotNull ThirdPartyPaymentSkuResult data) {
        Intrinsics.checkNotNullParameter(data, "data");
        TextView textView = this.f47635b;
        if (textView != null) {
            textView.setText(data.getTitle());
        }
    }
}
