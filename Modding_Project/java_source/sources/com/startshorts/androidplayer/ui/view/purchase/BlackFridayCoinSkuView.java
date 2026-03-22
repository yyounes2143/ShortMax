package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BlackFridayCoinSkuView.kt */
@Metadata
/* loaded from: classes7.dex */
public class BlackFridayCoinSkuView extends BaseCoinSkuView {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f47550p = new a(null);
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseTextView f47551k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private r f47552l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private b f47553m;

    /* renamed from: n  reason: collision with root package name */
    private long f47554n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private BaseTextView f47555o;

    /* compiled from: BlackFridayCoinSkuView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BlackFridayCoinSkuView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void onExpired();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlackFridayCoinSkuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47554n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(BlackFridayCoinSkuView blackFridayCoinSkuView, int i10) {
        CoinSku mCoinSku = blackFridayCoinSkuView.getMCoinSku();
        if (mCoinSku != null) {
            mCoinSku.setRetentionSeconds(i10);
        }
        BaseTextView baseTextView = blackFridayCoinSkuView.f47551k;
        if (baseTextView != null) {
            baseTextView.setText(TimeUtil.f48175a.c(i10, true));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(BlackFridayCoinSkuView blackFridayCoinSkuView) {
        b bVar = blackFridayCoinSkuView.f47553m;
        if (bVar != null) {
            bVar.onExpired();
        }
        return Unit.f60915a;
    }

    public final void A() {
        BaseTextView baseTextView = this.f47551k;
        if (baseTextView != null) {
            baseTextView.setVisibility(8);
        }
    }

    public final void B() {
        long j10;
        z();
        long K = DeviceUtil.f48146a.K();
        long j11 = this.f47554n;
        if (j11 == -1) {
            CoinSku mCoinSku = getMCoinSku();
            if (mCoinSku != null) {
                j10 = mCoinSku.getRetentionSeconds();
            } else {
                j10 = 0;
            }
            this.f47554n = (K / 1000) + j10;
        } else {
            j10 = j11 - (K / 1000);
        }
        s("startCountDownJob -> " + j10 + 's');
        if (j10 <= 0) {
            b bVar = this.f47553m;
            if (bVar != null) {
                bVar.onExpired();
                return;
            }
            return;
        }
        this.f47552l = CoroutineUtil.f48072a.d((int) j10, new Function1() { // from class: com.startshorts.androidplayer.ui.view.purchase.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C;
                C = BlackFridayCoinSkuView.C(BlackFridayCoinSkuView.this, ((Integer) obj).intValue());
                return C;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.view.purchase.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit D;
                D = BlackFridayCoinSkuView.D(BlackFridayCoinSkuView.this);
                return D;
            }
        });
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coin_sku_black_friday;
    }

    @Nullable
    public final b getMListener() {
        return this.f47553m;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "BlackFridayCoinSkuView";
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47553m = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47551k = (BaseTextView) findViewById(R$id.count_down_tv);
        this.f47555o = (BaseTextView) findViewById(R$id.origin_price_tv);
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView
    public void v(@NotNull CoinSku sku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        super.v(sku);
        BaseTextView baseTextView = this.f47555o;
        if (baseTextView != null) {
            y.i(baseTextView, true);
            baseTextView.setText(sku.getOriginPriceText());
        }
    }

    public final void z() {
        r rVar = this.f47552l;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            s("cancelCountDownJob");
        }
        this.f47552l = null;
    }
}
