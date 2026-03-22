package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemDownloadDramaDetailHeadBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40345a;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDownloadDramaDetailHeadBinding(Object obj, View view, int i10, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40345a = baseTextView;
    }

    public static ItemDownloadDramaDetailHeadBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDownloadDramaDetailHeadBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemDownloadDramaDetailHeadBinding) ViewDataBinding.bind(obj, view, R$layout.item_download_drama_detail_head);
    }
}
