package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverModuleRankingTabBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f40151a;
    @Bindable

    /* renamed from: b  reason: collision with root package name */
    protected DiscoverRanking f40152b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverModuleRankingTabBinding(Object obj, View view, int i10, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40151a = baseTextView;
    }
}
