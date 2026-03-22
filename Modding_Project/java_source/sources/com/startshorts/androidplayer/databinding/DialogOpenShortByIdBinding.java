package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
/* loaded from: classes6.dex */
public abstract class DialogOpenShortByIdBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final EditText f39210a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f39211b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f39212c;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogOpenShortByIdBinding(Object obj, View view, int i10, EditText editText, TextView textView, TextView textView2) {
        super(obj, view, i10);
        this.f39210a = editText;
        this.f39211b = textView;
        this.f39212c = textView2;
    }

    @NonNull
    public static DialogOpenShortByIdBinding b(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogOpenShortByIdBinding d(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogOpenShortByIdBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.dialog_open_short_by_id, null, false, obj);
    }
}
