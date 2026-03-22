package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemProfileMenuNormalBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40595a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f40596b;
    @Bindable

    /* renamed from: c  reason: collision with root package name */
    protected ProfileMenu f40597c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemProfileMenuNormalBinding(Object obj, View view, int i10, BaseTextView baseTextView, ImageView imageView) {
        super(obj, view, i10);
        this.f40595a = baseTextView;
        this.f40596b = imageView;
    }
}
