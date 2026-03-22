package androidx.compose.ui.platform;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ViewCompositionStrategy.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ViewCompositionStrategy_androidKt {
    public static final /* synthetic */ Function0 access$installForLifecycle(AbstractComposeView abstractComposeView, Lifecycle lifecycle) {
        return installForLifecycle(abstractComposeView, lifecycle);
    }

    public static final Function0<Unit> installForLifecycle(final AbstractComposeView abstractComposeView, final Lifecycle lifecycle) {
        if (lifecycle.getCurrentState().compareTo(Lifecycle.State.DESTROYED) > 0) {
            final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.p1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    ViewCompositionStrategy_androidKt.m3575installForLifecycle$lambda1(AbstractComposeView.this, lifecycleOwner, event);
                }
            };
            lifecycle.addObserver(lifecycleEventObserver);
            return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy_androidKt$installForLifecycle$2
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
                    Lifecycle.this.removeObserver(lifecycleEventObserver);
                }
            };
        }
        throw new IllegalStateException(("Cannot configure " + abstractComposeView + " to disposeComposition at Lifecycle ON_DESTROY: " + lifecycle + "is already destroyed").toString());
    }

    /* renamed from: installForLifecycle$lambda-1 */
    public static final void m3575installForLifecycle$lambda1(AbstractComposeView view, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            view.disposeComposition();
        }
    }
}
