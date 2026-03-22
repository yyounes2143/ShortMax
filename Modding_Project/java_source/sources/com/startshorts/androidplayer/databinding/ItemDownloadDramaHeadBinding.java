package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemDownloadDramaHeadBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40350a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f40351b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDownloadDramaHeadBinding(Object obj, View view, int i10, BaseTextView baseTextView, View view2) {
        super(obj, view, i10);
        this.f40350a = baseTextView;
        this.f40351b = view2;
    }

    public static ItemDownloadDramaHeadBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDownloadDramaHeadBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemDownloadDramaHeadBinding) ViewDataBinding.bind(obj, view, R$layout.item_download_drama_head);
    }
}
