package com.startshorts.androidplayer.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.task.AccumulatedDailyTaskView;
/* loaded from: classes6.dex */
public class DialogFragmentImmersionAccumulatedDailyTaskBindingImpl extends DialogFragmentImmersionAccumulatedDailyTaskBinding {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f38826e = null;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static final SparseIntArray f38827f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f38828c;

    /* renamed from: d  reason: collision with root package name */
    private long f38829d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38827f = sparseIntArray;
        sparseIntArray.put(R$id.slide_view, 1);
        sparseIntArray.put(R$id.accumulated_task_view, 2);
    }

    public DialogFragmentImmersionAccumulatedDailyTaskBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f38826e, f38827f));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.f38829d = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                if (this.f38829d != 0) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38829d = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i10, Object obj, int i11) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i10, @Nullable Object obj) {
        return true;
    }

    private DialogFragmentImmersionAccumulatedDailyTaskBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AccumulatedDailyTaskView) objArr[2], (View) objArr[1]);
        this.f38829d = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f38828c = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
