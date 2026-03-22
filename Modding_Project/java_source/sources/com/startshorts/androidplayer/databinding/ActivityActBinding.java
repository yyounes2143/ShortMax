package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
/* loaded from: classes6.dex */
public abstract class ActivityActBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CardView f38135a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f38136b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final WebView f38137c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f38138d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f38139e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f38140f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f38141g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f38142h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ConstraintLayout f38143i;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityActBinding(Object obj, View view, int i10, CardView cardView, FrameLayout frameLayout, WebView webView, ConstraintLayout constraintLayout, ImageView imageView, ProgressBar progressBar, ImageView imageView2, ImageView imageView3, ConstraintLayout constraintLayout2) {
        super(obj, view, i10);
        this.f38135a = cardView;
        this.f38136b = frameLayout;
        this.f38137c = webView;
        this.f38138d = constraintLayout;
        this.f38139e = imageView;
        this.f38140f = progressBar;
        this.f38141g = imageView2;
        this.f38142h = imageView3;
        this.f38143i = constraintLayout2;
    }
}
