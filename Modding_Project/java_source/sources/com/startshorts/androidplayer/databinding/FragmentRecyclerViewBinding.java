package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes6.dex */
public abstract class FragmentRecyclerViewBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView f39615a;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentRecyclerViewBinding(Object obj, View view, int i10, RecyclerView recyclerView) {
        super(obj, view, i10);
        this.f39615a = recyclerView;
    }
}
