package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class FragmentSwitchInfoBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f39655a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f39656b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39657c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39658d;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentSwitchInfoBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f39655a = stateViewGroup;
        this.f39656b = viewStubProxy;
        this.f39657c = baseTextView;
        this.f39658d = baseTextView2;
    }
}
