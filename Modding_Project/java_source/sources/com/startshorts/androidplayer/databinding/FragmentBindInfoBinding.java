package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class FragmentBindInfoBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39374a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39375b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39376c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentBindInfoBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39374a = stateViewGroup;
        this.f39375b = viewStubProxy;
        this.f39376c = baseTextView;
    }
}
