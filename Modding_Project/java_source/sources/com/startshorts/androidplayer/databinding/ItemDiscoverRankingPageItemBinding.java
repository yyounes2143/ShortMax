package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.utils.scroll.NestedScrollableHost;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverRankingPageItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final NestedScrollableHost f40254a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final StateViewGroup f40255b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverRankingPageItemBinding(Object obj, View view, int i10, NestedScrollableHost nestedScrollableHost, StateViewGroup stateViewGroup) {
        super(obj, view, i10);
        this.f40254a = nestedScrollableHost;
        this.f40255b = stateViewGroup;
    }
}
