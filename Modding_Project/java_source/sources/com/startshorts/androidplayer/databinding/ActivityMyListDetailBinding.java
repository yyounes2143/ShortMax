package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.StatusBarView;
/* loaded from: classes6.dex */
public abstract class ActivityMyListDetailBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f38383a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StatusBarView f38384b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityMyListDetailBinding(Object obj, View view, int i10, FrameLayout frameLayout, StatusBarView statusBarView) {
        super(obj, view, i10);
        this.f38383a = frameLayout;
        this.f38384b = statusBarView;
    }
}
