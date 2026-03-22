package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemPaymentMethodBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40540a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f40541b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CustomFrescoView f40542c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40543d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemPaymentMethodBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, CustomFrescoView customFrescoView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40540a = constraintLayout;
        this.f40541b = constraintLayout2;
        this.f40542c = customFrescoView;
        this.f40543d = baseTextView;
    }
}
