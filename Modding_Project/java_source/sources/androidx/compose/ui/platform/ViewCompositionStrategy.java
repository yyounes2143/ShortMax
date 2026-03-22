package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.poolingcontainer.PoolingContainerListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewCompositionStrategy.android.kt */
@Metadata
/* loaded from: classes.dex */
public interface ViewCompositionStrategy {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: ViewCompositionStrategy.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        public final ViewCompositionStrategy getDefault() {
            return DisposeOnDetachedFromWindowOrReleasedFromPool.INSTANCE;
        }
    }

    /* compiled from: ViewCompositionStrategy.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DisposeOnDetachedFromWindow implements ViewCompositionStrategy {
        public static final int $stable = 0;
        @NotNull
        public static final DisposeOnDetachedFromWindow INSTANCE = new DisposeOnDetachedFromWindow();

        private DisposeOnDetachedFromWindow() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1, android.view.View$OnAttachStateChangeListener] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public Function0<Unit> installFor(@NotNull final AbstractComposeView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            final ?? r02 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                    AbstractComposeView.this.disposeComposition();
                }
            };
            view.addOnAttachStateChangeListener(r02);
            return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    AbstractComposeView.this.removeOnAttachStateChangeListener(r02);
                }
            };
        }
    }

    /* compiled from: ViewCompositionStrategy.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DisposeOnDetachedFromWindowOrReleasedFromPool implements ViewCompositionStrategy {
        public static final int $stable = 0;
        @NotNull
        public static final DisposeOnDetachedFromWindowOrReleasedFromPool INSTANCE = new DisposeOnDetachedFromWindowOrReleasedFromPool();

        private DisposeOnDetachedFromWindowOrReleasedFromPool() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View$OnAttachStateChangeListener, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public Function0<Unit> installFor(@NotNull final AbstractComposeView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            final ?? r02 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                    if (!PoolingContainer.isWithinPoolingContainer(AbstractComposeView.this)) {
                        AbstractComposeView.this.disposeComposition();
                    }
                }
            };
            view.addOnAttachStateChangeListener(r02);
            final PoolingContainerListener poolingContainerListener = new PoolingContainerListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$poolingContainerListener$1
                @Override // androidx.customview.poolingcontainer.PoolingContainerListener
                public final void onRelease() {
                    AbstractComposeView.this.disposeComposition();
                }
            };
            PoolingContainer.addPoolingContainerListener(view, poolingContainerListener);
            return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    AbstractComposeView.this.removeOnAttachStateChangeListener(r02);
                    PoolingContainer.removePoolingContainerListener(AbstractComposeView.this, poolingContainerListener);
                }
            };
        }
    }

    /* compiled from: ViewCompositionStrategy.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DisposeOnViewTreeLifecycleDestroyed implements ViewCompositionStrategy {
        public static final int $stable = 0;
        @NotNull
        public static final DisposeOnViewTreeLifecycleDestroyed INSTANCE = new DisposeOnViewTreeLifecycleDestroyed();

        private DisposeOnViewTreeLifecycleDestroyed() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1, android.view.View$OnAttachStateChangeListener] */
        /* JADX WARN: Type inference failed for: r2v0, types: [T, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public Function0<Unit> installFor(@NotNull final AbstractComposeView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            if (view.isAttachedToWindow()) {
                LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(view);
                if (lifecycleOwner != null) {
                    Intrinsics.checkNotNullExpressionValue(lifecycleOwner, "checkNotNull(ViewTreeLif…eOwner\"\n                }");
                    Lifecycle lifecycle = lifecycleOwner.getLifecycle();
                    Intrinsics.checkNotNullExpressionValue(lifecycle, "lco.lifecycle");
                    return ViewCompositionStrategy_androidKt.access$installForLifecycle(view, lifecycle);
                }
                throw new IllegalStateException(("View tree for " + view + " has no ViewTreeLifecycleOwner").toString());
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            final ?? r12 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1
                /* JADX WARN: Type inference failed for: r4v7, types: [T, kotlin.jvm.functions.Function0] */
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v10) {
                    ?? installForLifecycle;
                    Intrinsics.checkNotNullParameter(v10, "v");
                    LifecycleOwner lifecycleOwner2 = ViewTreeLifecycleOwner.get(AbstractComposeView.this);
                    AbstractComposeView abstractComposeView = AbstractComposeView.this;
                    if (lifecycleOwner2 != null) {
                        Intrinsics.checkNotNullExpressionValue(lifecycleOwner2, "checkNotNull(ViewTreeLif…                        }");
                        Ref.ObjectRef<Function0<Unit>> objectRef2 = objectRef;
                        AbstractComposeView abstractComposeView2 = AbstractComposeView.this;
                        Lifecycle lifecycle2 = lifecycleOwner2.getLifecycle();
                        Intrinsics.checkNotNullExpressionValue(lifecycle2, "lco.lifecycle");
                        installForLifecycle = ViewCompositionStrategy_androidKt.installForLifecycle(abstractComposeView2, lifecycle2);
                        objectRef2.element = installForLifecycle;
                        AbstractComposeView.this.removeOnAttachStateChangeListener(this);
                        return;
                    }
                    throw new IllegalStateException(("View tree for " + abstractComposeView + " has no ViewTreeLifecycleOwner").toString());
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                }
            };
            view.addOnAttachStateChangeListener(r12);
            objectRef.element = new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    AbstractComposeView.this.removeOnAttachStateChangeListener(r12);
                }
            };
            return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    objectRef.element.invoke();
                }
            };
        }
    }

    @NotNull
    Function0<Unit> installFor(@NotNull AbstractComposeView abstractComposeView);

    /* compiled from: ViewCompositionStrategy.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DisposeOnLifecycleDestroyed implements ViewCompositionStrategy {
        public static final int $stable = 8;
        @NotNull
        private final Lifecycle lifecycle;

        public DisposeOnLifecycleDestroyed(@NotNull Lifecycle lifecycle) {
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            this.lifecycle = lifecycle;
        }

        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        @NotNull
        public Function0<Unit> installFor(@NotNull AbstractComposeView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            return ViewCompositionStrategy_androidKt.access$installForLifecycle(view, this.lifecycle);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DisposeOnLifecycleDestroyed(@org.jetbrains.annotations.NotNull androidx.lifecycle.LifecycleOwner r2) {
            /*
                r1 = this;
                java.lang.String r0 = "lifecycleOwner"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                androidx.lifecycle.Lifecycle r2 = r2.getLifecycle()
                java.lang.String r0 = "lifecycleOwner.lifecycle"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
                r1.<init>(r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.ViewCompositionStrategy.DisposeOnLifecycleDestroyed.<init>(androidx.lifecycle.LifecycleOwner):void");
        }
    }
}
