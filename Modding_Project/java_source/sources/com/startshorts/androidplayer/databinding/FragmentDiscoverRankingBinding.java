package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
/* loaded from: classes6.dex */
public abstract class FragmentDiscoverRankingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39462a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f39463b;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentDiscoverRankingBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, RecyclerView recyclerView) {
        super(obj, view, i10);
        this.f39462a = stateViewGroup;
        this.f39463b = recyclerView;
    }
}
