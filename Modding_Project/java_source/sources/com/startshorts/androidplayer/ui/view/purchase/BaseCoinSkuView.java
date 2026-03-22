package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseCoinSkuView.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseCoinSkuView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47541b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ViewStub f47542c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f47543d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47544e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ViewStub f47545f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BaseTextView f47546g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private View f47547h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CustomFrescoView f47548i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private CoinSku f47549j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseCoinSkuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final BaseTextView getMBonusTV() {
        return this.f47543d;
    }

    @Nullable
    public final CoinSku getMCoinSku() {
        return this.f47549j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final BaseTextView getMLabelTV() {
        return this.f47546g;
    }

    protected final void setMBonusTV(@Nullable BaseTextView baseTextView) {
        this.f47543d = baseTextView;
    }

    public final void setMCoinSku(@Nullable CoinSku coinSku) {
        this.f47549j = coinSku;
    }

    protected final void setMLabelTV(@Nullable BaseTextView baseTextView) {
        this.f47546g = baseTextView;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        View view;
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47541b = (BaseTextView) findViewById(R$id.coin_tv);
        this.f47543d = (BaseTextView) findViewById(R$id.bonus_tv);
        this.f47542c = (ViewStub) findViewById(R$id.bonus_viewstub);
        this.f47544e = (BaseTextView) findViewById(R$id.price_tv);
        ViewStub viewStub = (ViewStub) findViewById(R$id.label_viewstub);
        this.f47545f = viewStub;
        if (viewStub == null) {
            this.f47546g = (BaseTextView) findViewById(R$id.label_tv);
        }
        ViewStub viewStub2 = (ViewStub) findViewById(R$id.third_label_viewstub);
        if (viewStub2 != null) {
            view = viewStub2.inflate();
        } else {
            view = null;
        }
        this.f47547h = view;
    }

    /* JADX WARN: Removed duplicated region for block: B:165:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0137  */
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.CoinSku r10) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView.v(com.startshorts.androidplayer.bean.purchase.CoinSku):void");
    }

    public final void w(@NotNull CoinSku sku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        try {
            v(sku);
        } catch (Exception e10) {
            r("initSafely exception -> " + e10.getMessage());
        }
    }
}
