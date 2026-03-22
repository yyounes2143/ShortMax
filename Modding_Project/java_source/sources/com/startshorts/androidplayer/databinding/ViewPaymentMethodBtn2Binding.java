package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewPaymentMethodBtn2Binding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41301a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41302b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f41303c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f41304d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f41305e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41306f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Space f41307g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f41308h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final BaseTextView f41309i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final BaseTextView f41310j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final BaseTextView f41311k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f41312l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final BaseTextView f41313m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final BaseTextView f41314n;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPaymentMethodBtn2Binding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BaseTextView baseTextView, ConstraintLayout constraintLayout2, ImageView imageView, ConstraintLayout constraintLayout3, BaseTextView baseTextView2, Space space, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, BaseTextView baseTextView6, BaseTextView baseTextView7, BaseTextView baseTextView8, BaseTextView baseTextView9) {
        super(obj, view, i10);
        this.f41301a = constraintLayout;
        this.f41302b = baseTextView;
        this.f41303c = constraintLayout2;
        this.f41304d = imageView;
        this.f41305e = constraintLayout3;
        this.f41306f = baseTextView2;
        this.f41307g = space;
        this.f41308h = baseTextView3;
        this.f41309i = baseTextView4;
        this.f41310j = baseTextView5;
        this.f41311k = baseTextView6;
        this.f41312l = baseTextView7;
        this.f41313m = baseTextView8;
        this.f41314n = baseTextView9;
    }

    @NonNull
    public static ViewPaymentMethodBtn2Binding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewPaymentMethodBtn2Binding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewPaymentMethodBtn2Binding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_payment_method_btn2, viewGroup, z10, obj);
    }
}
