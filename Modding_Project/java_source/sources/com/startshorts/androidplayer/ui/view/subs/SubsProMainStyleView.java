package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsProMainStyleView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubsProMainStyleView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f47956b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private GradientTextView f47957c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f47958d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47959e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseTextView f47960f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BaseTextView f47961g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private BaseTextView f47962h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private View f47963i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private CustomFrescoView f47964j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseTextView f47965k;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubsProMainStyleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final String v(int i10, String str) {
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

    private final String w(int i10, String str) {
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

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_subs_type_pro_main;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setSku(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.subs.SubsSku r8) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.subs.SubsProMainStyleView.setSku(com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47956b = findViewById(R$id.card_bg_view);
        this.f47957c = (GradientTextView) findViewById(R$id.card_name_tv);
        this.f47958d = (BaseTextView) findViewById(R$id.card_desc_tv);
        this.f47959e = (BaseTextView) findViewById(R$id.discount_tv);
        this.f47960f = (BaseTextView) findViewById(R$id.first_recharge_tv);
        this.f47961g = (BaseTextView) findViewById(R$id.current_price_tv);
        this.f47962h = (BaseTextView) findViewById(R$id.renew_price_tv);
        this.f47963i = findViewById(R$id.llLabel);
        this.f47964j = (CustomFrescoView) findViewById(R$id.ivPayLogo);
        this.f47965k = (BaseTextView) findViewById(R$id.tvLabel);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubsProMainStyleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsProMainStyleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
