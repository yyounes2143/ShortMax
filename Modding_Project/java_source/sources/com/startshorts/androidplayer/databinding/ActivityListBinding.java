package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.hades.aar.pagestate.StateViewGroup;
/* loaded from: classes6.dex */
public abstract class ActivityListBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final StateViewGroup f38317a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ViewStubProxy f38318b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityListBinding(Object obj, View view, int i10, StateViewGroup stateViewGroup, ViewStubProxy viewStubProxy) {
        super(obj, view, i10);
        this.f38317a = stateViewGroup;
        this.f38318b = viewStubProxy;
    }
}
