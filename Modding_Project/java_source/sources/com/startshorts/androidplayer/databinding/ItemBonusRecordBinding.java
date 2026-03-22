package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemBonusRecordBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39753a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f39754b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f39755c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39756d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39757e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f39758f;
    @Bindable

    /* renamed from: g  reason: collision with root package name */
    protected WalletRecord f39759g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemBonusRecordBinding(Object obj, View view, int i10, BaseTextView baseTextView, BaseTextView baseTextView2, ImageView imageView, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5) {
        super(obj, view, i10);
        this.f39753a = baseTextView;
        this.f39754b = baseTextView2;
        this.f39755c = imageView;
        this.f39756d = baseTextView3;
        this.f39757e = baseTextView4;
        this.f39758f = baseTextView5;
    }
}
