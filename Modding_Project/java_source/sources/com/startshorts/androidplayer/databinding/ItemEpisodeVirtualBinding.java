package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.shorts.EpisodeDetail;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemEpisodeVirtualBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40408a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected EpisodeDetail f40409b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemEpisodeVirtualBinding(Object obj, View view, int i10, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40408a = baseTextView;
    }
}
