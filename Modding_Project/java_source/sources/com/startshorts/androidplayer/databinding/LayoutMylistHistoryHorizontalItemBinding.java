package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.pagestate.MyListMyCollectionEmptyView;
/* loaded from: classes6.dex */
public abstract class LayoutMylistHistoryHorizontalItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final Barrier f41104a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppCompatImageView f41105b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f41106c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final StateViewGroup f41107d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41108e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41109f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41110g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final MyListMyCollectionEmptyView f41111h;

    /* JADX INFO: Access modifiers changed from: protected */
    public LayoutMylistHistoryHorizontalItemBinding(Object obj, View view, int i10, Barrier barrier, AppCompatImageView appCompatImageView, RecyclerView recyclerView, StateViewGroup stateViewGroup, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, MyListMyCollectionEmptyView myListMyCollectionEmptyView) {
        super(obj, view, i10);
        this.f41104a = barrier;
        this.f41105b = appCompatImageView;
        this.f41106c = recyclerView;
        this.f41107d = stateViewGroup;
        this.f41108e = baseTextView;
        this.f41109f = baseTextView2;
        this.f41110g = baseTextView3;
        this.f41111h = myListMyCollectionEmptyView;
    }

    @NonNull
    public static LayoutMylistHistoryHorizontalItemBinding b(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutMylistHistoryHorizontalItemBinding d(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutMylistHistoryHorizontalItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.layout_mylist_history_horizontal_item, null, false, obj);
    }
}
