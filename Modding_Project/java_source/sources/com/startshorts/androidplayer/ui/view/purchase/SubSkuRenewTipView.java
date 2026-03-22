package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.GravityCompat;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubSkuRenewTipView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubSkuRenewTipView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47629f = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47630b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f47631c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f47632d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f47633e;

    /* compiled from: SubSkuRenewTipView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ SubSkuRenewTipView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    private final String getDefaultRenewTips() {
        String string = getContext().getString(R$string.subs_type_view_new_style_desc);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    private final void w() {
        ViewGroup.LayoutParams layoutParams;
        int i10;
        ImageView imageView = this.f47630b;
        if (imageView != null) {
            layoutParams = imageView.getLayoutParams();
        } else {
            layoutParams = null;
        }
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        if (this.f47632d) {
            layoutParams2.startToStart = 0;
            layoutParams2.endToEnd = -1;
        } else {
            layoutParams2.endToEnd = 0;
            layoutParams2.startToStart = -1;
        }
        layoutParams2.topToTop = 0;
        ((ViewGroup.MarginLayoutParams) layoutParams2).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = -2;
        ImageView imageView2 = this.f47630b;
        if (imageView2 != null) {
            imageView2.setLayoutParams(layoutParams2);
        }
        TextView textView = this.f47631c;
        if (textView != null) {
            textView.setText(this.f47633e);
        }
        TextView textView2 = this.f47631c;
        if (textView2 != null) {
            if (this.f47632d) {
                i10 = GravityCompat.START;
            } else {
                i10 = GravityCompat.END;
            }
            textView2.setGravity(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_sub_sku_renew_tip;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47630b = (ImageView) findViewById(R$id.renew_arrow_iv);
        this.f47631c = (TextView) findViewById(R$id.renew_tips_tv);
    }

    public final void v(@Nullable String str, @Nullable Boolean bool) {
        if (str != null && str.length() != 0) {
            this.f47633e = str;
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                this.f47632d = false;
            }
            w();
            b0.l(this);
            return;
        }
        b0.d(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubSkuRenewTipView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47632d = true;
    }
}
