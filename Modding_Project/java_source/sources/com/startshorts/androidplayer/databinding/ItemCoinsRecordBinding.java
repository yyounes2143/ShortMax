package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemCoinsRecordBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39868a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f39869b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39870c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39871d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39872e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f39873f;
    @Bindable

    /* renamed from: g  reason: collision with root package name */
    protected WalletRecord f39874g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemCoinsRecordBinding(Object obj, View view, int i10, BaseTextView baseTextView, ImageView imageView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5) {
        super(obj, view, i10);
        this.f39868a = baseTextView;
        this.f39869b = imageView;
        this.f39870c = baseTextView2;
        this.f39871d = baseTextView3;
        this.f39872e = baseTextView4;
        this.f39873f = baseTextView5;
    }
}
