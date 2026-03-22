package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class DialogFragmentClarityChooseBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView f38807a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f38808b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f38809c;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogFragmentClarityChooseBinding(Object obj, View view, int i10, RecyclerView recyclerView, View view2, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f38807a = recyclerView;
        this.f38808b = view2;
        this.f38809c = baseTextView;
    }
}
