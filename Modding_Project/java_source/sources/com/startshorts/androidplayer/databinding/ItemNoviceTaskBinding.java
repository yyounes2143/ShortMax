package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemNoviceTaskBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40524a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40525b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f40526c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CustomFrescoView f40527d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f40528e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40529f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemNoviceTaskBinding(Object obj, View view, int i10, ImageView imageView, BaseTextView baseTextView, ConstraintLayout constraintLayout, CustomFrescoView customFrescoView, ImageView imageView2, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40524a = imageView;
        this.f40525b = baseTextView;
        this.f40526c = constraintLayout;
        this.f40527d = customFrescoView;
        this.f40528e = imageView2;
        this.f40529f = baseTextView2;
    }
}
