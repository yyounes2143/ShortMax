package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemSearchNoResultBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40808a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40809b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSearchNoResultBinding(Object obj, View view, int i10, ImageView imageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40808a = imageView;
        this.f40809b = baseTextView;
    }
}
