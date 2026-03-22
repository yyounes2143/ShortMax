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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExpansionCoinSkuView.kt */
@Metadata
/* loaded from: classes7.dex */
public class ExpansionCoinSkuView extends BaseCoinSkuView {
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseTextView f47582k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private r f47583l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private a f47584m;

    /* renamed from: n  reason: collision with root package name */
    private long f47585n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final String f47586o;

    /* compiled from: ExpansionCoinSkuView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void onExpired();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpansionCoinSkuView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47585n = -1L;
        this.f47586o = "ExpansionCoinSkuView";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(ExpansionCoinSkuView expansionCoinSkuView, int i10) {
        CoinSku mCoinSku = expansionCoinSkuView.getMCoinSku();
        if (mCoinSku != null) {
            mCoinSku.setRetentionSeconds(i10);
        }
        BaseTextView baseTextView = expansionCoinSkuView.f47582k;
        if (baseTextView != null) {
            baseTextView.setText(TimeUtil.f48175a.c(i10, true));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(ExpansionCoinSkuView expansionCoinSkuView) {
        a aVar = expansionCoinSkuView.f47584m;
        if (aVar != null) {
            aVar.onExpired();
        }
        return Unit.f60915a;
    }

    public final void A() {
        long j10;
        z();
        long K = DeviceUtil.f48146a.K();
        long j11 = this.f47585n;
        if (j11 == -1) {
            CoinSku mCoinSku = getMCoinSku();
            if (mCoinSku != null) {
                j10 = mCoinSku.getRetentionSeconds();
            } else {
                j10 = 0;
            }
            this.f47585n = (K / 1000) + j10;
        } else {
            j10 = j11 - (K / 1000);
        }
        s("startCountDownJob -> " + j10 + 's');
        if (j10 <= 0) {
            a aVar = this.f47584m;
            if (aVar != null) {
                aVar.onExpired();
                return;
            }
            return;
        }
        this.f47583l = CoroutineUtil.f48072a.d((int) j10, new Function1() { // from class: com.startshorts.androidplayer.ui.view.purchase.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit B;
                B = ExpansionCoinSkuView.B(ExpansionCoinSkuView.this, ((Integer) obj).intValue());
                return B;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.view.purchase.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit C;
                C = ExpansionCoinSkuView.C(ExpansionCoinSkuView.this);
                return C;
            }
        });
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coin_sku_expansion;
    }

    @Nullable
    public final a getMListener() {
        return this.f47584m;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return this.f47586o;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47584m = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.BaseCoinSkuView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47582k = (BaseTextView) findViewById(R$id.count_down_tv);
    }

    public final void z() {
        r rVar = this.f47583l;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            s("cancelCountDownJob");
        }
        this.f47583l = null;
    }
}
