package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class DialogActBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f38613a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f38614b;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogActBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, ImageView imageView) {
        super(obj, view, i10);
        this.f38613a = customFrescoView;
        this.f38614b = imageView;
    }
}
