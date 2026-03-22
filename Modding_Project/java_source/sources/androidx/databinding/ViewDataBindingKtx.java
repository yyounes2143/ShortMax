package androidx.databinding;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import gt.g;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewDataBindingKtx.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class ViewDataBindingKtx {
    @NotNull
    public static final ViewDataBindingKtx INSTANCE = new ViewDataBindingKtx();
    @NotNull
    private static final CreateWeakListener CREATE_STATE_FLOW_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.a
        @Override // androidx.databinding.CreateWeakListener
        public final WeakListener create(ViewDataBinding viewDataBinding, int i10, ReferenceQueue referenceQueue) {
            WeakListener CREATE_STATE_FLOW_LISTENER$lambda$0;
            CREATE_STATE_FLOW_LISTENER$lambda$0 = ViewDataBindingKtx.CREATE_STATE_FLOW_LISTENER$lambda$0(viewDataBinding, i10, referenceQueue);
            return CREATE_STATE_FLOW_LISTENER$lambda$0;
        }
    };

    /* compiled from: ViewDataBindingKtx.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class StateFlowListener implements ObservableReference<b<? extends Object>> {
        @Nullable
        private WeakReference<LifecycleOwner> _lifecycleOwnerRef;
        @NotNull
        private final WeakListener<b<Object>> listener;
        @Nullable
        private r observerJob;

        public StateFlowListener(@Nullable ViewDataBinding viewDataBinding, int i10, @NotNull ReferenceQueue<ViewDataBinding> referenceQueue) {
            Intrinsics.checkNotNullParameter(referenceQueue, "referenceQueue");
            this.listener = new WeakListener<>(viewDataBinding, i10, this, referenceQueue);
        }

        private final void startCollection(LifecycleOwner lifecycleOwner, b<? extends Object> bVar) {
            r d10;
            r rVar = this.observerJob;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            d10 = g.d(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new ViewDataBindingKtx$StateFlowListener$startCollection$1(lifecycleOwner, bVar, this, null), 3, null);
            this.observerJob = d10;
        }

        @Override // androidx.databinding.ObservableReference
        @NotNull
        public WeakListener<b<? extends Object>> getListener() {
            return this.listener;
        }

        @Override // androidx.databinding.ObservableReference
        public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
            LifecycleOwner lifecycleOwner2;
            WeakReference<LifecycleOwner> weakReference = this._lifecycleOwnerRef;
            if (weakReference != null) {
                lifecycleOwner2 = weakReference.get();
            } else {
                lifecycleOwner2 = null;
            }
            if (lifecycleOwner2 == lifecycleOwner) {
                return;
            }
            r rVar = this.observerJob;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            if (lifecycleOwner == null) {
                this._lifecycleOwnerRef = null;
                return;
            }
            this._lifecycleOwnerRef = new WeakReference<>(lifecycleOwner);
            b<Object> target = this.listener.getTarget();
            if (target != null) {
                startCollection(lifecycleOwner, target);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void addListener(@Nullable b<? extends Object> bVar) {
            LifecycleOwner lifecycleOwner;
            WeakReference<LifecycleOwner> weakReference = this._lifecycleOwnerRef;
            if (weakReference == null || (lifecycleOwner = weakReference.get()) == null || bVar == null) {
                return;
            }
            startCollection(lifecycleOwner, bVar);
        }

        @Override // androidx.databinding.ObservableReference
        public void removeListener(@Nullable b<? extends Object> bVar) {
            r rVar = this.observerJob;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.observerJob = null;
        }
    }

    private ViewDataBindingKtx() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WeakListener CREATE_STATE_FLOW_LISTENER$lambda$0(ViewDataBinding viewDataBinding, int i10, ReferenceQueue referenceQueue) {
        Intrinsics.checkNotNull(referenceQueue);
        return new StateFlowListener(viewDataBinding, i10, referenceQueue).getListener();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean updateStateFlowRegistration(@NotNull ViewDataBinding viewDataBinding, int i10, @Nullable b<?> bVar) {
        Intrinsics.checkNotNullParameter(viewDataBinding, "viewDataBinding");
        viewDataBinding.mInStateFlowRegisterObserver = true;
        try {
            return viewDataBinding.updateRegistration(i10, bVar, CREATE_STATE_FLOW_LISTENER);
        } finally {
            viewDataBinding.mInStateFlowRegisterObserver = false;
        }
    }
}
