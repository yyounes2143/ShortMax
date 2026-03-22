package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseBindingView.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseBindingView<VDB extends ViewDataBinding> extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    protected VDB f47081a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseBindingView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a() {
        setMBinding(DataBindingUtil.inflate(LayoutInflater.from(getContext()), getLayoutResource(), this, true));
    }

    public abstract int getLayoutResource();

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VDB getMBinding() {
        VDB vdb = this.f47081a;
        if (vdb != null) {
            return vdb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f47081a != null) {
            getMBinding().unbind();
        }
    }

    protected final void setMBinding(@NotNull VDB vdb) {
        Intrinsics.checkNotNullParameter(vdb, "<set-?>");
        this.f47081a = vdb;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseBindingView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BaseBindingView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseBindingView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        a();
    }
}
