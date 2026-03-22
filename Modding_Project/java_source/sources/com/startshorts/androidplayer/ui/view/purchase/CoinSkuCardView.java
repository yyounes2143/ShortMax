package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
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
/* compiled from: CoinSkuCardView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CoinSkuCardView extends ConstraintLayout implements i {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f47568k = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private CoinSku f47569a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47570b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f47571c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private TextView f47572d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private TextView f47573e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private TextView f47574f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View f47575g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private r f47576h;

    /* renamed from: i  reason: collision with root package name */
    private long f47577i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private b f47578j;

    /* compiled from: CoinSkuCardView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CoinSkuCardView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void onExpired();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoinSkuCardView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void setCoinImageView(int i10) {
        ImageView imageView = this.f47570b;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            layoutParams.width = i10;
            layoutParams.height = i10;
            imageView.setLayoutParams(layoutParams);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0094, code lost:
        if (r0.intValue() != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b7, code lost:
        if (r0.intValue() != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b9, code lost:
        r0 = r8.f47572d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bb, code lost:
        if (r0 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00bd, code lost:
        r0.setVisibility(8);
     */
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void t() {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.CoinSkuCardView.t():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(CoinSkuCardView coinSkuCardView, int i10) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TimeUtil.f48175a.c(i10, true));
        CoinSku coinSku = coinSkuCardView.f47569a;
        CoinSku coinSku2 = null;
        if (coinSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            coinSku = null;
        }
        if (coinSku.isSubscriptValid()) {
            CoinSku coinSku3 = coinSkuCardView.f47569a;
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
        TextView textView = coinSkuCardView.f47574f;
        if (textView != null) {
            textView.setText(sb2.toString());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(CoinSkuCardView coinSkuCardView) {
        coinSkuCardView.u();
        b bVar = coinSkuCardView.f47578j;
        if (bVar != null) {
            bVar.onExpired();
        }
        return Unit.f60915a;
    }

    @Nullable
    public final b getMListener() {
        return this.f47578j;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.i
    public void i(@Nullable Object obj) {
        CoinSku coinSku = this.f47569a;
        if (coinSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            coinSku = null;
        }
        setSelect(Intrinsics.areEqual(obj, coinSku));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f47570b = (ImageView) findViewById(R$id.coin_iv);
        this.f47571c = (TextView) findViewById(R$id.coin_tv);
        this.f47572d = (TextView) findViewById(R$id.bonus_tv);
        this.f47573e = (TextView) findViewById(R$id.price_tv);
        this.f47574f = (TextView) findViewById(R$id.countdown_label_right_tv);
        this.f47575g = findViewById(R$id.bg_selected_view);
    }

    public final void s() {
        r rVar = this.f47576h;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("CoinSkuCardView", "cancelCountDownJob");
        }
        this.f47576h = null;
    }

    public final void setListener(@NotNull b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f47578j = listener;
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47578j = bVar;
    }

    public final void setSelect(boolean z10) {
        if (z10) {
            b0.l(this.f47575g);
        } else {
            b0.e(this.f47575g);
        }
    }

    public final void setSku(@NotNull CoinSku coinSku) {
        Intrinsics.checkNotNullParameter(coinSku, "coinSku");
        this.f47569a = coinSku;
        t();
    }

    public final void u() {
        CoinSku coinSku = this.f47569a;
        CoinSku coinSku2 = null;
        if (coinSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
            coinSku = null;
        }
        if (coinSku.isSubscriptValid()) {
            TextView textView = this.f47574f;
            if (textView != null) {
                CoinSku coinSku3 = this.f47569a;
                if (coinSku3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
                } else {
                    coinSku2 = coinSku3;
                }
                textView.setText(coinSku2.getSubscript());
            }
            b0.l(this.f47574f);
            return;
        }
        b0.d(this.f47574f);
    }

    public final void v() {
        long j10;
        s();
        long K = DeviceUtil.f48146a.K();
        long j11 = this.f47577i;
        if (j11 == -1) {
            CoinSku coinSku = this.f47569a;
            if (coinSku == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCoinSku");
                coinSku = null;
            }
            j10 = coinSku.getRetentionSeconds();
            this.f47577i = (K / 1000) + j10;
        } else {
            j10 = j11 - (K / 1000);
        }
        if (j10 <= 0) {
            u();
            return;
        }
        TextView textView = this.f47574f;
        if (textView != null) {
            b0.l(textView);
        }
        this.f47576h = CoroutineUtil.f48072a.d((int) j10, new Function1() { // from class: com.startshorts.androidplayer.ui.view.purchase.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit w10;
                w10 = CoinSkuCardView.w(CoinSkuCardView.this, ((Integer) obj).intValue());
                return w10;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.view.purchase.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit x10;
                x10 = CoinSkuCardView.x(CoinSkuCardView.this);
                return x10;
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CoinSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoinSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47577i = -1L;
    }

    public /* synthetic */ CoinSkuCardView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
