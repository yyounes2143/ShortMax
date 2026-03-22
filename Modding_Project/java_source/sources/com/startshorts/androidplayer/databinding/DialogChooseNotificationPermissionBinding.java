package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class DialogChooseNotificationPermissionBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final LinearLayout f38700a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f38701b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f38702c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f38703d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f38704e;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogChooseNotificationPermissionBinding(Object obj, View view, int i10, LinearLayout linearLayout, ImageView imageView, View view2, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f38700a = linearLayout;
        this.f38701b = imageView;
        this.f38702c = view2;
        this.f38703d = baseTextView;
        this.f38704e = baseTextView2;
    }
}
