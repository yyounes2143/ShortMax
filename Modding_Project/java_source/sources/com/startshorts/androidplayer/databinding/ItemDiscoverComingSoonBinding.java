package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverComingSoonBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ComingSoonChip f40012a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40013b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40014c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40015d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f40016e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverComingSoonBinding(Object obj, View view, int i10, ComingSoonChip comingSoonChip, CustomFrescoView customFrescoView, BaseTextView baseTextView, BaseTextView baseTextView2, TextView textView) {
        super(obj, view, i10);
        this.f40012a = comingSoonChip;
        this.f40013b = customFrescoView;
        this.f40014c = baseTextView;
        this.f40015d = baseTextView2;
        this.f40016e = textView;
    }
}
