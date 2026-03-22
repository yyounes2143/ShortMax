package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemAppLanguageBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39709a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f39710b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewStubProxy f39711c;
    @Bindable

    /* renamed from: d  reason: collision with root package name */
    protected AppLanguage f39712d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemAppLanguageBinding(Object obj, View view, int i10, BaseTextView baseTextView, BaseTextView baseTextView2, ViewStubProxy viewStubProxy) {
        super(obj, view, i10);
        this.f39709a = baseTextView;
        this.f39710b = baseTextView2;
        this.f39711c = viewStubProxy;
    }
}
