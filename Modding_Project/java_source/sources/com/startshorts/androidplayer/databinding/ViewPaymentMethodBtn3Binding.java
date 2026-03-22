package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ViewPaymentMethodBtn3Binding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f41318a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f41319b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Guideline f41320c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CustomFrescoView f41321d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ConstraintLayout f41322e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41323f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f41324g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f41325h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f41326i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final BaseTextView f41327j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Space f41328k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f41329l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final BaseTextView f41330m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final BaseTextView f41331n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final BaseTextView f41332o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final BaseTextView f41333p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final BaseTextView f41334q;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPaymentMethodBtn3Binding(Object obj, View view, int i10, BaseTextView baseTextView, ConstraintLayout constraintLayout, Guideline guideline, CustomFrescoView customFrescoView, ConstraintLayout constraintLayout2, BaseTextView baseTextView2, ConstraintLayout constraintLayout3, ImageView imageView, ConstraintLayout constraintLayout4, BaseTextView baseTextView3, Space space, BaseTextView baseTextView4, BaseTextView baseTextView5, BaseTextView baseTextView6, BaseTextView baseTextView7, BaseTextView baseTextView8, BaseTextView baseTextView9) {
        super(obj, view, i10);
        this.f41318a = baseTextView;
        this.f41319b = constraintLayout;
        this.f41320c = guideline;
        this.f41321d = customFrescoView;
        this.f41322e = constraintLayout2;
        this.f41323f = baseTextView2;
        this.f41324g = constraintLayout3;
        this.f41325h = imageView;
        this.f41326i = constraintLayout4;
        this.f41327j = baseTextView3;
        this.f41328k = space;
        this.f41329l = baseTextView4;
        this.f41330m = baseTextView5;
        this.f41331n = baseTextView6;
        this.f41332o = baseTextView7;
        this.f41333p = baseTextView8;
        this.f41334q = baseTextView9;
    }

    @NonNull
    public static ViewPaymentMethodBtn3Binding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewPaymentMethodBtn3Binding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewPaymentMethodBtn3Binding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_payment_method_btn3, viewGroup, z10, obj);
    }
}
