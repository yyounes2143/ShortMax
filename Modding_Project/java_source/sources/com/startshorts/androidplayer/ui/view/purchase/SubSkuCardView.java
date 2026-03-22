package com.startshorts.androidplayer.ui.view.purchase;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.TextViewCompat;
import com.facebook.drawee.generic.RoundingParams;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import jk.b0;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubSkuCardView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubSkuCardView extends ConstraintLayout implements i {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f47614o = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private SubsSku f47615a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47616b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private r f47617c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Function0<Unit> f47618d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private View f47619e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private CustomFrescoView f47620f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View f47621g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private TextView f47622h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private GradientTextView f47623i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private TextView f47624j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private TextView f47625k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private ImageView f47626l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private TextView f47627m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private TextView f47628n;

    /* compiled from: SubSkuCardView.kt */
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
    public SubSkuCardView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(boolean z10, int i10, SubSkuCardView subSkuCardView, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TimeUtil.f48175a.c(i11, true));
        if (!z10) {
            String e10 = u.f51776a.e(R$string.discount_label_off, String.valueOf(i10));
            sb2.append(" | ");
            sb2.append(e10);
        }
        TextView textView = subSkuCardView.f47625k;
        if (textView != null) {
            textView.setText(sb2.toString());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(boolean z10, SubSkuCardView subSkuCardView, int i10) {
        if (!z10) {
            TextView textView = subSkuCardView.f47625k;
            if (textView != null) {
                b0.l(textView);
            }
            TextView textView2 = subSkuCardView.f47625k;
            if (textView2 != null) {
                textView2.setText(u.f51776a.e(R$string.discount_label_off, String.valueOf(i10)));
            }
        } else {
            TextView textView3 = subSkuCardView.f47625k;
            if (textView3 != null) {
                b0.d(textView3);
            }
        }
        Function0<Unit> function0 = subSkuCardView.f47618d;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    private final void C() {
        x();
        SubsSku subsSku = this.f47615a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        if (subsSku.m4706isHighlight()) {
            View view = this.f47619e;
            if (view != null) {
                view.setBackgroundResource(R$drawable.bg_sub_sku_highlight_small);
            }
            View view2 = this.f47621g;
            if (view2 != null) {
                view2.setBackgroundResource(R$drawable.bg_sub_sku_highlight_small_selected);
            }
            CustomFrescoView customFrescoView = this.f47620f;
            if (customFrescoView != null) {
                kk.f.f60747a.A(customFrescoView, getVipIconFrescoConfig());
                customFrescoView.setActualImageResource(R$drawable.ic_sub_highlight_vip);
            }
            TextView textView = this.f47622h;
            if (textView != null) {
                textView.setTextColor(getContext().getColor(R$color.template_subs_desc_sel));
            }
            GradientTextView gradientTextView = this.f47623i;
            if (gradientTextView != null) {
                gradientTextView.setColor(Color.parseColor("#BE6102"), Color.parseColor("#652100"));
            }
            TextView textView2 = this.f47624j;
            if (textView2 != null) {
                textView2.setTextColor(getContext().getColor(R$color.sub_sku_through_price));
            }
        } else {
            View view3 = this.f47619e;
            if (view3 != null) {
                view3.setBackgroundResource(R$drawable.bg_sub_sku_small);
            }
            View view4 = this.f47621g;
            if (view4 != null) {
                view4.setBackgroundResource(R$drawable.bg_sub_sku_small_selected);
            }
            CustomFrescoView customFrescoView2 = this.f47620f;
            if (customFrescoView2 != null) {
                kk.f.f60747a.A(customFrescoView2, getVipIconFrescoConfig());
                customFrescoView2.setActualImageResource(R$drawable.ic_sub_not_highlight_vip);
            }
            TextView textView3 = this.f47622h;
            if (textView3 != null) {
                textView3.setTextColor(getContext().getColor(R$color.template_subs_desc_nor));
            }
            GradientTextView gradientTextView2 = this.f47623i;
            if (gradientTextView2 != null) {
                gradientTextView2.setColor(Color.parseColor("#FFEACB"), Color.parseColor("#F3AD63"));
            }
            TextView textView4 = this.f47624j;
            if (textView4 != null) {
                textView4.setTextColor(getContext().getColor(R$color.gray_20));
            }
        }
        w();
        v();
    }

    private final FrescoConfig getVipIconFrescoConfig() {
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setCornerTransform(true);
        frescoConfig.setRoundingParams(new RoundingParams().p(0.0f, jk.g.b(8.0f), 0.0f, 0.0f));
        return frescoConfig;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String t(int r8, java.lang.String r9) {
        /*
            r7 = this;
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r7.f47615a
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
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView.t(int, java.lang.String):java.lang.String");
    }

    private final String u(SubsSku subsSku) {
        String formatRenewPrice = subsSku.formatRenewPrice();
        if (formatRenewPrice.length() == 0) {
            String string = getContext().getString(R$string.subs_type_view_new_style_desc);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        return formatRenewPrice + " · " + getContext().getString(R$string.subs_type_view_new_style_desc);
    }

    @SuppressLint({"SetTextI18n"})
    private final void v() {
        SubsSku subsSku = this.f47615a;
        SubsSku subsSku2 = null;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        if (subsSku.enableDiscount()) {
            TextView textView = this.f47624j;
            if (textView != null) {
                SubsSku subsSku3 = this.f47615a;
                if (subsSku3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                } else {
                    subsSku2 = subsSku3;
                }
                textView.setText(subsSku2.getOriginPriceText());
            }
            TextView textView2 = this.f47624j;
            if (textView2 != null) {
                y.j(textView2, true);
                return;
            }
            return;
        }
        SubsSku subsSku4 = this.f47615a;
        if (subsSku4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku4 = null;
        }
        int type = subsSku4.getType();
        SubsSku subsSku5 = this.f47615a;
        if (subsSku5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
        } else {
            subsSku2 = subsSku5;
        }
        String t10 = t(type, subsSku2.getOriginPriceText());
        TextView textView3 = this.f47624j;
        if (textView3 != null) {
            textView3.setText((char) 8776 + t10);
        }
    }

    private final void w() {
        String originPriceText;
        SubsSku subsSku = this.f47615a;
        SubsSku subsSku2 = null;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        if (subsSku.getInSubscription()) {
            originPriceText = getContext().getString(R$string.profile_subscription_view_subscribed);
        } else {
            SubsSku subsSku3 = this.f47615a;
            if (subsSku3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                subsSku3 = null;
            }
            if (subsSku3.enableDiscount()) {
                SubsSku subsSku4 = this.f47615a;
                if (subsSku4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                } else {
                    subsSku2 = subsSku4;
                }
                originPriceText = subsSku2.getDiscountPriceText();
            } else {
                SubsSku subsSku5 = this.f47615a;
                if (subsSku5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                } else {
                    subsSku2 = subsSku5;
                }
                originPriceText = subsSku2.getOriginPriceText();
            }
        }
        TextView textView = this.f47622h;
        if (textView != null) {
            textView.setText(originPriceText);
        }
    }

    private final void x() {
        GradientTextView gradientTextView = this.f47623i;
        if (gradientTextView != null) {
            SubsSku.Companion companion = SubsSku.Companion;
            SubsSku subsSku = this.f47615a;
            SubsSku subsSku2 = null;
            if (subsSku == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
                subsSku = null;
            }
            gradientTextView.setText(companion.getCardName(subsSku.getType()));
            SubsSku subsSku3 = this.f47615a;
            if (subsSku3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            } else {
                subsSku2 = subsSku3;
            }
            if (!subsSku2.isBigCard()) {
                TextViewCompat.setAutoSizeTextTypeWithDefaults(gradientTextView, 1);
                TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(gradientTextView, 9, 12, 1, 2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x025d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void z() {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView.z():void");
    }

    @Nullable
    public final Function0<Unit> getOnExpired() {
        return this.f47618d;
    }

    @NotNull
    public final SubsSku getSku() {
        SubsSku subsSku = this.f47615a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            return null;
        }
        return subsSku;
    }

    @Override // com.startshorts.androidplayer.ui.view.purchase.i
    public void i(@Nullable Object obj) {
        SubsSku subsSku = this.f47615a;
        if (subsSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subsSku = null;
        }
        setSelect(Intrinsics.areEqual(obj, subsSku));
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f47619e = findViewById(R$id.bg_view);
        this.f47620f = (CustomFrescoView) findViewById(R$id.vip_iv);
        this.f47621g = findViewById(R$id.bg_selected_view);
        this.f47623i = (GradientTextView) findViewById(R$id.sku_type_name_tv);
        this.f47622h = (TextView) findViewById(R$id.sku_price_tv);
        this.f47624j = (TextView) findViewById(R$id.sku_desc_price_tv);
        this.f47625k = (TextView) findViewById(R$id.sku_label_tv);
        this.f47626l = (ImageView) findViewById(R$id.diamond_iv);
        this.f47627m = (TextView) findViewById(R$id.sku_desc_tv);
        this.f47628n = (TextView) findViewById(R$id.sku_renew_tv);
    }

    public final void s() {
        r rVar = this.f47617c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ReproductionSubsView", "cancelCountDownJob");
        }
        this.f47617c = null;
    }

    public final void setOnExpired(@Nullable Function0<Unit> function0) {
        this.f47618d = function0;
    }

    public final void setOnRight(boolean z10) {
        this.f47616b = z10;
    }

    public final void setSelect(boolean z10) {
        if (z10) {
            b0.l(this.f47621g);
        } else {
            b0.e(this.f47621g);
        }
    }

    public final void setSku(@NotNull SubsSku subSku) {
        Intrinsics.checkNotNullParameter(subSku, "subSku");
        this.f47615a = subSku;
        if (subSku == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSubSku");
            subSku = null;
        }
        if (subSku.isBigCard()) {
            z();
        } else {
            C();
        }
    }

    public final boolean y() {
        return this.f47616b;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubSkuCardView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SubSkuCardView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
