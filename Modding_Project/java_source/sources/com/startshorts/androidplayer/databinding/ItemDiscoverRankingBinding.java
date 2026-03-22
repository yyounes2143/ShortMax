package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverRankingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40219a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f40220b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40221c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40222d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40223e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverRankingBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, View view2, ImageView imageView, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40219a = customFrescoView;
        this.f40220b = view2;
        this.f40221c = imageView;
        this.f40222d = baseTextView;
        this.f40223e = baseTextView2;
    }
}
