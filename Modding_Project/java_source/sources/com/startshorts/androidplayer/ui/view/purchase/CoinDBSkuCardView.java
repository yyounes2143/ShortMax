package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoinDBSkuCardView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CoinDBSkuCardView extends ConstraintLayout implements i {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f47558j = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private CoinSku f47559a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f47560b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f47561c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private TextView f47562d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private TextView f47563e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private TextView f47564f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private r f47565g;

    /* renamed from: h  reason: collision with root package name */
    private long f47566h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private b f47567i;

    /* compiled from: CoinDBSkuCardView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CoinDBSkuCardView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void onExpired();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoinDBSkuCardView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
        if (r0.intValue() != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005f, code lost:
        if (r0.intValue() != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0061, code lost:
        r0 = r5.f47562d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
        r0.setVisibility(4);
     */
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void t() {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.CoinDBSkuCardView.t():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(CoinDBSkuCardView coinDBSkuCardView, int i10) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TimeUtil.f48175a.c(i10, true));
        CoinSku coinSku = coinDBSkuCardView.f47559a;
        CoinSku coinSku2 = null;
        if (coinSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            coinSku = null;
        }
        if (coinSku.isSubscriptValid()) {
            CoinSku coinSku3 = coinDBSkuCardView.f47559a;
            if (coinSku3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            } else {
                coinSku2 = coinSku3;
            }
            str = coinSku2.getSubscript();
        } else {
            str = "";
        }
        if (str != null && str.length() != 0) {
            sb2.append(" | ");
            sb2.append(str);
        }
        TextView textView = coinDBSkuCardView.f47564f;
        if (textView != null) {
            textView.setText(sb2.toString());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(CoinDBSkuCardView coinDBSkuCardView) {
        coinDBSkuCardView.u();
        b bVar = coinDBSkuCardView.f47567i;
        if (bVar != null) {
            bVar.onExpired();
        }
        return Unit.f60915a;
    }

    @Nullable
    public final b getMListener() {
        return this.f47567i;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.i
    public void i(@Nullable Object obj) {
        CoinSku coinSku = this.f47559a;
        if (coinSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            coinSku = null;
        }
        setSelect(Intrinsics.areEqual(obj, coinSku));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f47560b = findViewById(R$id.bg_view);
        this.f47561c = (TextView) findViewById(R$id.coin_tv);
        this.f47562d = (TextView) findViewById(R$id.bonus_tv);
        this.f47563e = (TextView) findViewById(R$id.price_tv);
        this.f47564f = (TextView) findViewById(R$id.countdown_label_right_tv);
    }

    public final void s() {
        r rVar = this.f47565g;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("CoinDBSkuCardView", "cancelCountDownJob");
        }
        this.f47565g = null;
    }

    public final void setListener(@NotNull b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f47567i = listener;
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47567i = bVar;
    }

    public final void setSelect(boolean z10) {
        if (z10) {
            View view = this.f47560b;
            if (view != null) {
                view.setBackgroundResource(R$drawable.bg_coin_db_sku_card_selected);
                return;
            }
            return;
        }
        View view2 = this.f47560b;
        if (view2 != null) {
            view2.setBackgroundResource(R$drawable.bg_coin_db_sku_card);
        }
    }

    public final void setSku(@NotNull CoinSku coinSku) {
        Intrinsics.checkNotNullParameter(coinSku, "coinSku");
        this.f47559a = coinSku;
        t();
    }

    public final void u() {
        CoinSku coinSku = this.f47559a;
        CoinSku coinSku2 = null;
        if (coinSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            coinSku = null;
        }
        if (coinSku.isSubscriptValid()) {
            TextView textView = this.f47564f;
            if (textView != null) {
                CoinSku coinSku3 = this.f47559a;
                if (coinSku3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
                } else {
                    coinSku2 = coinSku3;
                }
                textView.setText(coinSku2.getSubscript());
            }
            b0.l(this.f47564f);
            return;
        }
        b0.d(this.f47564f);
    }

    public final void v() {
        long j10;
        s();
        long K = DeviceUtil.f48146a.K();
        long j11 = this.f47566h;
        if (j11 == -1) {
            CoinSku coinSku = this.f47559a;
            if (coinSku == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
                coinSku = null;
            }
            j10 = coinSku.getRetentionSeconds();
            this.f47566h = (K / 1000) + j10;
        } else {
            j10 = j11 - (K / 1000);
        }
        if (j10 <= 0) {
            u();
            return;
        }
        TextView textView = this.f47564f;
        if (textView != null) {
            b0.l(textView);
        }
        this.f47565g = CoroutineUtil.f48072a.d((int) j10, new Function1() { // from class: com.startshorts.androidplayer.ui.view.purchase.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit w10;
                w10 = CoinDBSkuCardView.w(CoinDBSkuCardView.this, ((Integer) obj).intValue());
                return w10;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.view.purchase.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit x10;
                x10 = CoinDBSkuCardView.x(CoinDBSkuCardView.this);
                return x10;
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoinDBSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CoinDBSkuCardView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoinDBSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47566h = -1L;
    }
}
