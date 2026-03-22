package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
/* loaded from: classes6.dex */
public abstract class FragmentListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39512a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39513b;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentListBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy) {
        super(obj, view, i10);
        this.f39512a = stateViewGroup;
        this.f39513b = viewStubProxy;
    }
}
