package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.z;
import jk.u;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.h;
/* compiled from: SubsProOldStyleView.kt */
@Metadata
/* loaded from: classes7.dex */
public class SubsProOldStyleView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f47976b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private GradientTextView f47977c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f47978d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47979e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseTextView f47980f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View f47981g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private BaseTextView f47982h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseTextView f47983i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private View f47984j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private CustomFrescoView f47985k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private BaseTextView f47986l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private r f47987m;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubsProOldStyleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final String B(int i10, String str) {
        if (str != null && str.length() != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return str;
                                }
                            }
                        }
                    }
                    String string = getContext().getString(R$string.subs_type_view_per_year_new, str);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    return string;
                }
                String string2 = getContext().getString(R$string.subs_type_view_per_month_new, str);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                return string2;
            }
            String string3 = getContext().getString(R$string.subs_type_view_per_week_new, str);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            return string3;
        }
        return "";
    }

    private final String C(int i10, String str) {
        if (str != null && str.length() != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return str;
                                }
                            }
                        }
                    }
                    String string = getContext().getString(R$string.subs_type_view_renew_per_year, str);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    return string;
                }
                String string2 = getContext().getString(R$string.subs_type_view_renew_per_month, str);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                return string2;
            }
            String string3 = getContext().getString(R$string.subs_type_view_renew_per_week, str);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            return string3;
        }
        return "";
    }

    private final boolean D(String str) {
        if (!StringsKt.b0(str, "IDR", false, 2, null) && !StringsKt.b0(str, "INR", false, 2, null) && !StringsKt.b0(str, "THB", false, 2, null) && !StringsKt.b0(str, "JPY", false, 2, null) && !StringsKt.b0(str, "ZAR", false, 2, null) && !StringsKt.b0(str, "KRW", false, 2, null) && !StringsKt.b0(str, "VND", false, 2, null)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(final SubsProOldStyleView subsProOldStyleView, boolean z10, View view, SubsSku subsSku) {
        int i10;
        int i11;
        View view2 = subsProOldStyleView.f47976b;
        int i12 = 0;
        if (view2 != null) {
            i10 = view2.getWidth();
        } else {
            i10 = 0;
        }
        BaseTextView baseTextView = subsProOldStyleView.f47982h;
        if (baseTextView != null) {
            i11 = baseTextView.getWidth();
        } else {
            i11 = 0;
        }
        if (z10) {
            i12 = view.getWidth();
        }
        z zVar = z.f51786a;
        int b10 = (((((i10 - i11) - i12) - zVar.b()) - zVar.d()) - zVar.m()) - zVar.s();
        String cardName = SubsSku.Companion.getCardName(subsSku.getType());
        final GradientTextView gradientTextView = subsProOldStyleView.f47977c;
        if (gradientTextView != null) {
            gradientTextView.setText(cardName);
            y.c(gradientTextView, 18.0f, 13.0f, b10, new Function0() { // from class: ck.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit F;
                    F = SubsProOldStyleView.F(GradientTextView.this, subsProOldStyleView);
                    return F;
                }
            });
            gradientTextView.setColor(ContextCompat.getColor(gradientTextView.getContext(), R$color.color_subs_type_view_pro_card_name_start), ContextCompat.getColor(gradientTextView.getContext(), R$color.color_subs_type_view_pro_card_name_end));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(GradientTextView gradientTextView, SubsProOldStyleView subsProOldStyleView) {
        gradientTextView.setVisibility(0);
        BaseTextView baseTextView = subsProOldStyleView.f47978d;
        if (baseTextView != null) {
            baseTextView.setVisibility(0);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(SubsSku subsSku, SubsProOldStyleView subsProOldStyleView, int i10) {
        int d10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TimeUtil.f48175a.c(i10, true));
        if (!h.f65328a.o(subsSku) && (d10 = u.d(subsSku)) > 0) {
            String e10 = fk.u.f51776a.e(R$string.discount_label_off, String.valueOf(d10));
            sb2.append(" | ");
            sb2.append(e10);
        }
        BaseTextView baseTextView = subsProOldStyleView.f47980f;
        if (baseTextView != null) {
            baseTextView.setText(sb2.toString());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(SubsSku subsSku, SubsProOldStyleView subsProOldStyleView, Function0 function0) {
        boolean o10 = h.f65328a.o(subsSku);
        int d10 = u.d(subsSku);
        if (d10 > 0 && !o10) {
            BaseTextView baseTextView = subsProOldStyleView.f47980f;
            if (baseTextView != null) {
                baseTextView.setVisibility(0);
            }
            BaseTextView baseTextView2 = subsProOldStyleView.f47980f;
            if (baseTextView2 != null) {
                baseTextView2.setText(fk.u.f51776a.e(R$string.discount_label_off, String.valueOf(d10)));
            }
        } else {
            BaseTextView baseTextView3 = subsProOldStyleView.f47980f;
            if (baseTextView3 != null) {
                baseTextView3.setVisibility(8);
            }
        }
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ void setSku$default(SubsProOldStyleView subsProOldStyleView, String str, SubsSku subsSku, BaseEpisode baseEpisode, boolean z10, Function0 function0, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        Function0 function02;
        if (obj == null) {
            if ((i10 & 4) != 0) {
                baseEpisode2 = null;
            } else {
                baseEpisode2 = baseEpisode;
            }
            if ((i10 & 8) != 0) {
                z10 = false;
            }
            boolean z11 = z10;
            if ((i10 & 16) != 0) {
                function02 = null;
            } else {
                function02 = function0;
            }
            subsProOldStyleView.setSku(str, subsSku, baseEpisode2, z11, function02);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSku");
    }

    public final void A() {
        r rVar = this.f47987m;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ReproductionSubsView", "cancelCountDownJob");
        }
        this.f47987m = null;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_subs_type_pro_2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x0208, code lost:
        if (r3 != 7) goto L84;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:147:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setSku(@org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull final com.startshorts.androidplayer.bean.subs.SubsSku r18, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r19, boolean r20, @org.jetbrains.annotations.Nullable final kotlin.jvm.functions.Function0<kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView.setSku(java.lang.String, com.startshorts.androidplayer.bean.subs.SubsSku, com.startshorts.androidplayer.bean.shorts.BaseEpisode, boolean, kotlin.jvm.functions.Function0):void");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47976b = findViewById(R$id.card_bg_view);
        this.f47977c = (GradientTextView) findViewById(R$id.card_name_tv);
        this.f47978d = (BaseTextView) findViewById(R$id.card_desc_tv);
        this.f47979e = (BaseTextView) findViewById(R$id.discount_tv);
        this.f47980f = (BaseTextView) findViewById(R$id.first_recharge_tv);
        this.f47981g = findViewById(R$id.detail_layout);
        this.f47982h = (BaseTextView) findViewById(R$id.current_price_tv);
        this.f47983i = (BaseTextView) findViewById(R$id.renew_price_tv);
        this.f47984j = findViewById(R$id.llLabel);
        this.f47985k = (CustomFrescoView) findViewById(R$id.ivPayLogo);
        this.f47986l = (BaseTextView) findViewById(R$id.tvLabel);
    }

    public final void z(int i10) {
        ConstraintLayout.LayoutParams layoutParams;
        View view = this.f47976b;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 instanceof ConstraintLayout.LayoutParams) {
                layoutParams = (ConstraintLayout.LayoutParams) layoutParams2;
            } else {
                layoutParams = null;
            }
            if (layoutParams != null) {
                layoutParams.setMarginEnd(i10);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubsProOldStyleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsProOldStyleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
