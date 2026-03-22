package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemProfileMenuRewardsBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40604a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40605b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40606c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f40607d;
    @Bindable

    /* renamed from: e  reason: collision with root package name */
    protected ProfileMenu f40608e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemProfileMenuRewardsBinding(Object obj, View view, int i10, ImageView imageView, BaseTextView baseTextView, BaseTextView baseTextView2, FrameLayout frameLayout) {
        super(obj, view, i10);
        this.f40604a = imageView;
        this.f40605b = baseTextView;
        this.f40606c = baseTextView2;
        this.f40607d = frameLayout;
    }
}
