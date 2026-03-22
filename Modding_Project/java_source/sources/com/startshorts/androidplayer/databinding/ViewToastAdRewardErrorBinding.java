package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewToastAdRewardErrorBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final Group f41430a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f41431b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f41432c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewToastAdRewardErrorBinding(Object obj, View view, int i10, Group group, ImageView imageView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41430a = group;
        this.f41431b = imageView;
        this.f41432c = baseTextView;
    }
}
