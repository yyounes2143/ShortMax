package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemSearchNoNetworkBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40801a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40802b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40803c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSearchNoNetworkBinding(Object obj, View view, int i10, ImageView imageView, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40801a = imageView;
        this.f40802b = baseTextView;
        this.f40803c = baseTextView2;
    }
}
