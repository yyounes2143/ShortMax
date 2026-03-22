package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.settings.AppSettings;
/* loaded from: classes6.dex */
public abstract class ItemSettingsDividerLineBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f40855a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected AppSettings f40856b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSettingsDividerLineBinding(Object obj, View view, int i10, View view2) {
        super(obj, view, i10);
        this.f40855a = view2;
    }
}
