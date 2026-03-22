package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import fk.u;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: SubsNormalOldStyleView.kt */
@Metadata
/* loaded from: classes7.dex */
public class SubsNormalOldStyleView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f47942b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47943c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f47944d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47945e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseTextView f47946f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View f47947g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private BaseTextView f47948h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseTextView f47949i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private BaseTextView f47950j;

    /* compiled from: SubsNormalOldStyleView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f47951e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ SubsSku f47952f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f47953g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ boolean f47954h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, SubsSku subsSku, BaseEpisode baseEpisode, boolean z10) {
            super(0L, 1, null);
            this.f47951e = str;
            this.f47952f = subsSku;
            this.f47953g = baseEpisode;
            this.f47954h = z10;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsDetailActivity.a aVar = SubsDetailActivity.Q;
            Context context = v10.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            SubsDetailActivity.a.b(aVar, context, this.f47951e, this.f47952f.getProductId(), this.f47953g, this.f47954h, null, 32, null);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubsNormalOldStyleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void setSku$default(SubsNormalOldStyleView subsNormalOldStyleView, String str, SubsSku subsSku, BaseEpisode baseEpisode, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                baseEpisode = null;
            }
            if ((i10 & 8) != 0) {
                z10 = false;
            }
            subsNormalOldStyleView.setSku(str, subsSku, baseEpisode, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSku");
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
                    return u.f51776a.e(R$string.subs_type_view_per_year_new, str);
                }
                return u.f51776a.e(R$string.subs_type_view_per_month_new, str);
            }
            return u.f51776a.e(R$string.subs_type_view_per_week_new, str);
        }
        return "";
    }

    private final boolean x(String str) {
        if (!StringsKt.b0(str, "IDR", false, 2, null) && !StringsKt.b0(str, "INR", false, 2, null) && !StringsKt.b0(str, "THB", false, 2, null) && !StringsKt.b0(str, "JPY", false, 2, null) && !StringsKt.b0(str, "ZAR", false, 2, null) && !StringsKt.b0(str, "KRW", false, 2, null) && !StringsKt.b0(str, "VND", false, 2, null)) {
            return false;
        }
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_subs_type_normal_2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setSku(@org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.subs.SubsSku r11, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.shorts.BaseEpisode r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView.setSku(java.lang.String, com.startshorts.androidplayer.bean.subs.SubsSku, com.startshorts.androidplayer.bean.shorts.BaseEpisode, boolean):void");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47942b = findViewById(R$id.card_bg_view);
        this.f47943c = (BaseTextView) findViewById(R$id.discount_tv);
        this.f47944d = (BaseTextView) findViewById(R$id.first_recharge_tv);
        this.f47945e = (BaseTextView) findViewById(R$id.total_earning_value_tv);
        this.f47946f = (BaseTextView) findViewById(R$id.total_earning_tv);
        this.f47947g = findViewById(R$id.detail_layout);
        this.f47948h = (BaseTextView) findViewById(R$id.total_coins_tv);
        this.f47949i = (BaseTextView) findViewById(R$id.total_bonus_tv);
        this.f47950j = (BaseTextView) findViewById(R$id.current_price_tv);
    }

    public final void v(int i10) {
        ConstraintLayout.LayoutParams layoutParams;
        View view = this.f47942b;
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
    public SubsNormalOldStyleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsNormalOldStyleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
