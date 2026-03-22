package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.tab.TagFilterTab;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemTagFilterTabBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40988a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected TagFilterTab f40989b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemTagFilterTabBinding(Object obj, View view, int i10, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40988a = baseTextView;
    }
}
