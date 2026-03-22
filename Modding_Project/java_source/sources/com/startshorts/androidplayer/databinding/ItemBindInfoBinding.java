package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.auth.BindInfo;
/* loaded from: classes6.dex */
public abstract class ItemBindInfoBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f39725a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected BindInfo f39726b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemBindInfoBinding(Object obj, View view, int i10, ImageView imageView) {
        super(obj, view, i10);
        this.f39725a = imageView;
    }
}
