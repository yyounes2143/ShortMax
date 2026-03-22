package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.manager.player.core.SubtitleView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout;
/* loaded from: classes6.dex */
public abstract class ItemWindowPlayBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41077a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f41078b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f41079c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f41080d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f41081e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f41082f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f41083g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f41084h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ViewStubProxy f41085i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ProgressBar f41086j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SubtitleView f41087k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f41088l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final CardView f41089m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final FloatWindowPlayLayout f41090n;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemWindowPlayBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, CustomFrescoView customFrescoView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ViewStubProxy viewStubProxy, ProgressBar progressBar, SubtitleView subtitleView, BaseTextView baseTextView, CardView cardView, FloatWindowPlayLayout floatWindowPlayLayout) {
        super(obj, view, i10);
        this.f41077a = constraintLayout;
        this.f41078b = customFrescoView;
        this.f41079c = imageView;
        this.f41080d = imageView2;
        this.f41081e = imageView3;
        this.f41082f = imageView4;
        this.f41083g = imageView5;
        this.f41084h = imageView6;
        this.f41085i = viewStubProxy;
        this.f41086j = progressBar;
        this.f41087k = subtitleView;
        this.f41088l = baseTextView;
        this.f41089m = cardView;
        this.f41090n = floatWindowPlayLayout;
    }

    @NonNull
    public static ItemWindowPlayBinding b(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemWindowPlayBinding d(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemWindowPlayBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_window_play, null, false, obj);
    }
}
