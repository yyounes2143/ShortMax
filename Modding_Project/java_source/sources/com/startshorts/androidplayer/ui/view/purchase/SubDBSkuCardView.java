package com.startshorts.androidplayer.ui.view.purchase;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.TextViewCompat;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.yy.mobile.rollingtextview.RollingTextView;
import fk.u;
import jk.b0;
import jk.v;
import jk.y;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubDBSkuCardView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubDBSkuCardView extends ConstraintLayout implements i {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f47599o = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private SubsSku f47600a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47601b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private r f47602c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Function0<Unit> f47603d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private View f47604e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private TextView f47605f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private GradientTextView f47606g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private TextView f47607h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private RollingTextView f47608i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private TextView f47609j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private TextView f47610k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private TextView f47611l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private TextView f47612m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private LottieAnimationView f47613n;

    /* compiled from: SubDBSkuCardView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubDBSkuCardView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        SubsSku.Companion companion = SubsSku.Companion;
        SubsSku subsSku = this.f47600a;
        SubsSku subsSku2 = null;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        String cardName = companion.getCardName(subsSku.getType());
        SubsSku subsSku3 = this.f47600a;
        if (subsSku3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
        } else {
            subsSku2 = subsSku3;
        }
        if (subsSku2.isBigCard()) {
            TextView textView = this.f47605f;
            if (textView != null) {
                textView.setText(cardName);
                TextViewCompat.setAutoSizeTextTypeWithDefaults(textView, 1);
                TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(textView, 10, 14, 1, 2);
                return;
            }
            return;
        }
        GradientTextView gradientTextView = this.f47606g;
        if (gradientTextView != null) {
            gradientTextView.setText(cardName);
            TextViewCompat.setAutoSizeTextTypeWithDefaults(gradientTextView, 1);
            TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(gradientTextView, 9, 12, 1, 2);
            gradientTextView.setColor(Color.parseColor("#FFEACB"), Color.parseColor("#F3AD63"));
        }
    }

    private final void C() {
        final LottieAnimationView lottieAnimationView = this.f47613n;
        if (lottieAnimationView != null) {
            lottieAnimationView.setVisibility(0);
            lottieAnimationView.postDelayed(new Runnable() { // from class: com.startshorts.androidplayer.ui.view.purchase.j
                @Override // java.lang.Runnable
                public final void run() {
                    SubDBSkuCardView.D(LottieAnimationView.this);
                }
            }, 150L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(LottieAnimationView lottieAnimationView) {
        lottieAnimationView.y();
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void E() {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView.E():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(boolean z10, int i10, SubDBSkuCardView subDBSkuCardView, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TimeUtil.f48175a.c(i11, true));
        if (!z10) {
            String e10 = u.f51776a.e(R$string.discount_label_off, String.valueOf(i10));
            sb2.append(" | ");
            sb2.append(e10);
        }
        TextView textView = subDBSkuCardView.f47611l;
        if (textView != null) {
            textView.setText(sb2.toString());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(boolean z10, SubDBSkuCardView subDBSkuCardView, int i10) {
        if (!z10) {
            TextView textView = subDBSkuCardView.f47611l;
            if (textView != null) {
                b0.l(textView);
            }
            TextView textView2 = subDBSkuCardView.f47611l;
            if (textView2 != null) {
                textView2.setText(u.f51776a.e(R$string.discount_label_off, String.valueOf(i10)));
            }
        } else {
            TextView textView3 = subDBSkuCardView.f47611l;
            if (textView3 != null) {
                b0.d(textView3);
            }
        }
        Function0<Unit> function0 = subDBSkuCardView.f47603d;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    private final void H() {
        A();
        z();
        y();
        SubsSku subsSku = this.f47600a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        setSelect(subsSku.isSelected());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
        if (r0 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0058, code lost:
        if (r0 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0068, code lost:
        if (r0 == null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void v() {
        /*
            r6 = this;
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r6.f47600a
            r1 = 0
            java.lang.String r2 = "mSubSku"
            if (r0 != 0) goto Lb
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        Lb:
            boolean r0 = r0.enableDiscount()
            r3 = 0
            if (r0 == 0) goto L32
            com.startshorts.androidplayer.bean.subs.SubsSku r4 = r6.f47600a
            if (r4 != 0) goto L1a
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r4 = r1
        L1a:
            java.lang.String r4 = r4.getOriginPriceText()
            com.startshorts.androidplayer.bean.subs.SubsSku r5 = r6.f47600a
            if (r5 != 0) goto L26
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r5 = r1
        L26:
            java.lang.String r5 = r5.getDiscountPriceText()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L32
            r4 = 1
            goto L33
        L32:
            r4 = r3
        L33:
            java.lang.String r5 = ""
            if (r4 == 0) goto L49
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r6.f47600a
            if (r0 != 0) goto L3f
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L40
        L3f:
            r1 = r0
        L40:
            java.lang.String r0 = r1.getOriginPriceText()
            if (r0 != 0) goto L47
            goto L6a
        L47:
            r5 = r0
            goto L6a
        L49:
            if (r0 == 0) goto L5b
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r6.f47600a
            if (r0 != 0) goto L53
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L54
        L53:
            r1 = r0
        L54:
            java.lang.String r0 = r1.getDiscountPriceText()
            if (r0 != 0) goto L47
            goto L6a
        L5b:
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r6.f47600a
            if (r0 != 0) goto L63
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L64
        L63:
            r1 = r0
        L64:
            java.lang.String r0 = r1.getOriginPriceText()
            if (r0 != 0) goto L47
        L6a:
            kotlin.Pair r0 = jk.v.q(r5)
            if (r0 != 0) goto L7a
            android.widget.TextView r0 = r6.f47607h
            if (r0 == 0) goto L95
            r1 = 8
            r0.setVisibility(r1)
            goto L95
        L7a:
            java.lang.Object r1 = r0.f()
            r5 = r1
            java.lang.String r5 = (java.lang.String) r5
            android.widget.TextView r1 = r6.f47607h
            if (r1 == 0) goto L8e
            java.lang.Object r0 = r0.e()
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            r1.setText(r0)
        L8e:
            android.widget.TextView r0 = r6.f47607h
            if (r0 == 0) goto L95
            r0.setVisibility(r3)
        L95:
            com.yy.mobile.rollingtextview.RollingTextView r0 = r6.f47608i
            if (r0 == 0) goto La2
            yf.a r1 = yf.a.f70794a
            android.graphics.Typeface r1 = r1.g()
            r0.setTypeface(r1)
        La2:
            com.yy.mobile.rollingtextview.RollingTextView r0 = r6.f47608i
            if (r0 == 0) goto Lab
            r1 = 2000(0x7d0, double:9.88E-321)
            r0.setAnimationDuration(r1)
        Lab:
            com.yy.mobile.rollingtextview.RollingTextView r0 = r6.f47608i
            if (r0 == 0) goto Lb4
            java.lang.String r1 = "0123456789.,"
            r0.f(r1)
        Lb4:
            com.yy.mobile.rollingtextview.RollingTextView r0 = r6.f47608i
            if (r0 == 0) goto Lbb
            r0.setText(r5)
        Lbb:
            if (r4 == 0) goto Lc7
            com.startshorts.androidplayer.ui.view.purchase.m r0 = new com.startshorts.androidplayer.ui.view.purchase.m
            r0.<init>()
            r1 = 1000(0x3e8, double:4.94E-321)
            r6.postDelayed(r0, r1)
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView.v():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(SubDBSkuCardView subDBSkuCardView) {
        SubsSku subsSku = subDBSkuCardView.f47600a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        String discountPriceText = subsSku.getDiscountPriceText();
        if (discountPriceText == null) {
            discountPriceText = "";
        }
        Pair<String, String> q10 = v.q(discountPriceText);
        if (q10 != null) {
            RollingTextView rollingTextView = subDBSkuCardView.f47608i;
            if (rollingTextView != null) {
                rollingTextView.setText(q10.f());
                return;
            }
            return;
        }
        RollingTextView rollingTextView2 = subDBSkuCardView.f47608i;
        if (rollingTextView2 != null) {
            rollingTextView2.setText(discountPriceText);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String x(int r8, java.lang.String r9) {
        /*
            r7 = this;
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r7.f47600a
            r1 = 0
            if (r0 != 0) goto Lb
            java.lang.String r0 = "mSubSku"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = r1
        Lb:
            java.lang.Object r0 = r0.getSkuDetails()
            boolean r2 = r0 instanceof zc.e
            if (r2 == 0) goto L16
            zc.e r0 = (zc.e) r0
            goto L17
        L16:
            r0 = r1
        L17:
            java.lang.String r2 = ""
            if (r0 == 0) goto L95
            com.startshorts.androidplayer.bean.subs.SubsPrice r0 = jk.k.j(r0)
            if (r0 == 0) goto L95
            long r3 = r0.getOriginPriceAmountMicros()
            float r0 = (float) r3
            r3 = 1232348160(0x49742400, float:1000000.0)
            float r0 = r0 / r3
            r3 = 7
            r4 = 1
            if (r8 == r4) goto L47
            r5 = 2
            r6 = 365(0x16d, float:5.11E-43)
            if (r8 == r5) goto L42
            r5 = 4
            if (r8 == r5) goto L3f
            r5 = 5
            if (r8 == r5) goto L47
            r5 = 6
            if (r8 == r5) goto L42
            if (r8 == r3) goto L3f
            return r2
        L3f:
            float r8 = (float) r6
        L40:
            float r0 = r0 / r8
            goto L49
        L42:
            r8 = 12
            float r8 = (float) r8
            float r0 = r0 * r8
            goto L3f
        L47:
            float r8 = (float) r3
            goto L40
        L49:
            kotlin.jvm.internal.StringCompanionObject r8 = kotlin.jvm.internal.StringCompanionObject.INSTANCE
            java.util.Locale r8 = java.util.Locale.ENGLISH
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r4)
            java.lang.String r2 = "%.2f"
            java.lang.String r8 = java.lang.String.format(r8, r2, r0)
            java.lang.String r0 = "format(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r0)
            if (r9 == 0) goto L6a
            kotlin.Pair r1 = jk.v.q(r9)
        L6a:
            if (r1 == 0) goto L81
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.Object r0 = r1.e()
            java.lang.String r0 = (java.lang.String) r0
            r9.append(r0)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
        L81:
            android.content.Context r9 = r7.getContext()
            int r0 = com.startshorts.androidplayer.R$string.template_unlock_dialog_day_price
            java.lang.Object[] r8 = new java.lang.Object[]{r8}
            java.lang.String r8 = r9.getString(r0, r8)
            java.lang.String r9 = "getString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)
            return r8
        L95:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView.x(int, java.lang.String):java.lang.String");
    }

    @SuppressLint({"SetTextI18n"})
    private final void y() {
        SubsSku subsSku = this.f47600a;
        SubsSku subsSku2 = null;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        if (subsSku.enableDiscount()) {
            TextView textView = this.f47610k;
            if (textView != null) {
                SubsSku subsSku3 = this.f47600a;
                if (subsSku3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                } else {
                    subsSku2 = subsSku3;
                }
                textView.setText(subsSku2.getOriginPriceText());
            }
            TextView textView2 = this.f47610k;
            if (textView2 != null) {
                y.j(textView2, true);
                return;
            }
            return;
        }
        SubsSku subsSku4 = this.f47600a;
        if (subsSku4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku4 = null;
        }
        int type = subsSku4.getType();
        SubsSku subsSku5 = this.f47600a;
        if (subsSku5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
        } else {
            subsSku2 = subsSku5;
        }
        String x10 = x(type, subsSku2.getOriginPriceText());
        TextView textView3 = this.f47610k;
        if (textView3 != null) {
            textView3.setText((char) 8776 + x10);
        }
    }

    private final void z() {
        String originPriceText;
        SubsSku subsSku = this.f47600a;
        SubsSku subsSku2 = null;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        if (subsSku.getInSubscription()) {
            originPriceText = getContext().getString(R$string.profile_subscription_view_subscribed);
        } else {
            SubsSku subsSku3 = this.f47600a;
            if (subsSku3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                subsSku3 = null;
            }
            if (subsSku3.enableDiscount()) {
                SubsSku subsSku4 = this.f47600a;
                if (subsSku4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                } else {
                    subsSku2 = subsSku4;
                }
                originPriceText = subsSku2.getDiscountPriceText();
            } else {
                SubsSku subsSku5 = this.f47600a;
                if (subsSku5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                } else {
                    subsSku2 = subsSku5;
                }
                originPriceText = subsSku2.getOriginPriceText();
            }
        }
        TextView textView = this.f47609j;
        if (textView != null) {
            textView.setText(originPriceText);
        }
    }

    public final boolean B() {
        return this.f47601b;
    }

    @Nullable
    public final Function0<Unit> getOnExpired() {
        return this.f47603d;
    }

    @NotNull
    public final SubsSku getSku() {
        SubsSku subsSku = this.f47600a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            return null;
        }
        return subsSku;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.i
    public void i(@Nullable Object obj) {
        SubsSku subsSku = this.f47600a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        setSelect(Intrinsics.areEqual(obj, subsSku));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f47604e = findViewById(R$id.bg_selected_view);
        this.f47610k = (TextView) findViewById(R$id.sku_desc_price_tv);
        this.f47611l = (TextView) findViewById(R$id.sku_label_tv);
        this.f47612m = (TextView) findViewById(R$id.sku_renew_tv);
        this.f47613n = (LottieAnimationView) findViewById(R$id.lottie_view);
    }

    public final void setOnExpired(@Nullable Function0<Unit> function0) {
        this.f47603d = function0;
    }

    public final void setOnRight(boolean z10) {
        this.f47601b = z10;
    }

    public final void setSelect(boolean z10) {
        if (z10) {
            b0.l(this.f47604e);
            C();
            return;
        }
        b0.e(this.f47604e);
        LottieAnimationView lottieAnimationView = this.f47613n;
        if (lottieAnimationView != null) {
            lottieAnimationView.m();
        }
        b0.d(this.f47613n);
    }

    public final void setSku(@NotNull SubsSku subSku) {
        Intrinsics.checkNotNullParameter(subSku, "subSku");
        this.f47600a = subSku;
        if (subSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subSku = null;
        }
        if (subSku.isBigCard()) {
            this.f47605f = (TextView) findViewById(R$id.sku_type_name_tv);
            this.f47607h = (TextView) findViewById(R$id.sku_db_price_symbol_tv);
            this.f47608i = (RollingTextView) findViewById(R$id.sku_db_price_tv);
            E();
            return;
        }
        this.f47606g = (GradientTextView) findViewById(R$id.sku_type_name_tv);
        this.f47609j = (TextView) findViewById(R$id.sku_price_tv);
        H();
    }

    public final void u() {
        r rVar = this.f47602c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ReproductionSubsView", "cancelCountDownJob");
        }
        this.f47602c = null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubDBSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubDBSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SubDBSkuCardView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
