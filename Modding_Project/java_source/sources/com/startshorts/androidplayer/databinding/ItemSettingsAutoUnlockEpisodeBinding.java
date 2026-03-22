package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.settings.AppSettings;
/* loaded from: classes6.dex */
public abstract class ItemSettingsAutoUnlockEpisodeBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40848a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected AppSettings f40849b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSettingsAutoUnlockEpisodeBinding(Object obj, View view, int i10, ImageView imageView) {
        super(obj, view, i10);
        this.f40848a = imageView;
    }
}
