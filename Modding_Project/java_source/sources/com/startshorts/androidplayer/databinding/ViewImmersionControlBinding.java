package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionCoverView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionNameTagView;
/* loaded from: classes6.dex */
public abstract class ViewImmersionControlBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImmersionIconTextView f41232a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImmersionIconTextView f41233b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImmersionIconTextView f41234c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImmersionCoverView f41235d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImmersionNameTagView f41236e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewImmersionControlBinding(Object obj, View view, int i10, ImmersionIconTextView immersionIconTextView, ImmersionIconTextView immersionIconTextView2, ImmersionIconTextView immersionIconTextView3, ImmersionCoverView immersionCoverView, ImmersionNameTagView immersionNameTagView) {
        super(obj, view, i10);
        this.f41232a = immersionIconTextView;
        this.f41233b = immersionIconTextView2;
        this.f41234c = immersionIconTextView3;
        this.f41235d = immersionCoverView;
        this.f41236e = immersionNameTagView;
    }

    @NonNull
    public static ViewImmersionControlBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewImmersionControlBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewImmersionControlBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_immersion_control, viewGroup, z10, obj);
    }
}
