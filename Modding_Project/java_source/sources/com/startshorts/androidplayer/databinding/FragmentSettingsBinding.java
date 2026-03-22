package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class FragmentSettingsBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ViewStubProxy f39633a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f39634b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39635c;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentSettingsBinding(Object obj, View view, int i10, ViewStubProxy viewStubProxy, RecyclerView recyclerView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f39633a = viewStubProxy;
        this.f39634b = recyclerView;
        this.f39635c = baseTextView;
    }
}
