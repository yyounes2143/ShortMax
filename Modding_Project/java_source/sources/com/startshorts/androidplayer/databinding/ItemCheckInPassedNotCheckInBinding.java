package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.databinding.Bindable;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.checkin.CheckInInfo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemCheckInPassedNotCheckInBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final BaseTextView f39800a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f39801b;
    @Bindable

    /* renamed from: c  reason: collision with root package name */
    protected Integer f39802c;
    @Bindable

    /* renamed from: d  reason: collision with root package name */
    protected CheckInInfo f39803d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemCheckInPassedNotCheckInBinding(Object obj, View view, int i10, BaseTextView baseTextView, View view2) {
        super(obj, view, i10);
        this.f39800a = baseTextView;
        this.f39801b = view2;
    }
}
