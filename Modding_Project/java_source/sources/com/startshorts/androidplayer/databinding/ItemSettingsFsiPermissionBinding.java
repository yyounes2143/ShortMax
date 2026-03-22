package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.settings.AppSettings;
/* loaded from: classes6.dex */
public abstract class ItemSettingsFsiPermissionBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40861a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected AppSettings f40862b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSettingsFsiPermissionBinding(Object obj, View view, int i10, ImageView imageView) {
        super(obj, view, i10);
        this.f40861a = imageView;
    }
}
