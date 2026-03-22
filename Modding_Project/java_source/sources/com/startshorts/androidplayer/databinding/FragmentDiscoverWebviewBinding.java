package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.webkit.WebView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
/* loaded from: classes6.dex */
public abstract class FragmentDiscoverWebviewBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ProgressBar f39488a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f39489b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final WebView f39490c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentDiscoverWebviewBinding(Object obj, View view, int i10, ProgressBar progressBar, ConstraintLayout constraintLayout, WebView webView) {
        super(obj, view, i10);
        this.f39488a = progressBar;
        this.f39489b = constraintLayout;
        this.f39490c = webView;
    }
}
