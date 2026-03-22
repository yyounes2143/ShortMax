package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemLowSkuTemplateNotificationBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40485a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40486b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemLowSkuTemplateNotificationBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40485a = constraintLayout;
        this.f40486b = baseTextView;
    }
}
