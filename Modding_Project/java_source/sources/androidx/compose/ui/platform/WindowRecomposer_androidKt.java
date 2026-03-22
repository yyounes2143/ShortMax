package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.R;
import androidx.core.os.HandlerCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowRecomposer.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowRecomposer_androidKt {
    @NotNull
    private static final Map<Context, kt.i<Float>> animationScale = new LinkedHashMap();

    /* JADX WARN: Type inference failed for: r0v14, types: [T, androidx.compose.ui.platform.MotionDurationScaleImpl] */
    @ExperimentalComposeUiApi
    @NotNull
    public static final Recomposer createLifecycleAwareWindowRecomposer(@NotNull final View view, @NotNull CoroutineContext coroutineContext, @Nullable Lifecycle lifecycle) {
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        CoroutineContext coroutineContext2;
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        if (coroutineContext.get(kotlin.coroutines.c.F8) == null || coroutineContext.get(MonotonicFrameClock.Key) == null) {
            coroutineContext = AndroidUiDispatcher.Companion.getCurrentThread().plus(coroutineContext);
        }
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(MonotonicFrameClock.Key);
        if (monotonicFrameClock != null) {
            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = new PausableMonotonicFrameClock(monotonicFrameClock);
            pausableMonotonicFrameClock2.pause();
            pausableMonotonicFrameClock = pausableMonotonicFrameClock2;
        } else {
            pausableMonotonicFrameClock = null;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.get(MotionDurationScale.Key);
        MotionDurationScale motionDurationScale2 = motionDurationScale;
        if (motionDurationScale == null) {
            ?? motionDurationScaleImpl = new MotionDurationScaleImpl();
            objectRef.element = motionDurationScaleImpl;
            motionDurationScale2 = motionDurationScaleImpl;
        }
        if (pausableMonotonicFrameClock != null) {
            coroutineContext2 = pausableMonotonicFrameClock;
        } else {
            coroutineContext2 = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext plus = coroutineContext.plus(coroutineContext2).plus(motionDurationScale2);
        final Recomposer recomposer = new Recomposer(plus);
        final gt.g0 a10 = kotlinx.coroutines.i.a(plus);
        if (lifecycle == null) {
            LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(view);
            if (lifecycleOwner != null) {
                lifecycle = lifecycleOwner.getLifecycle();
            } else {
                lifecycle = null;
            }
        }
        if (lifecycle != null) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View v10) {
                    Intrinsics.checkNotNullParameter(v10, "v");
                    view.removeOnAttachStateChangeListener(this);
                    recomposer.cancel();
                }
            });
            lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2

                /* compiled from: WindowRecomposer.android.kt */
                @Metadata
                /* loaded from: classes.dex */
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[Lifecycle.Event.values().length];
                        iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                        iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                        iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                        iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                        iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NotNull LifecycleOwner lifecycleOwner2, @NotNull Lifecycle.Event event) {
                    Intrinsics.checkNotNullParameter(lifecycleOwner2, "lifecycleOwner");
                    Intrinsics.checkNotNullParameter(event, "event");
                    int i10 = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                    if (i10 == 1) {
                        gt.g.d(gt.g0.this, null, CoroutineStart.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(objectRef, recomposer, lifecycleOwner2, this, view, null), 1, null);
                    } else if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                recomposer.cancel();
                                return;
                            }
                            return;
                        }
                        PausableMonotonicFrameClock pausableMonotonicFrameClock3 = pausableMonotonicFrameClock;
                        if (pausableMonotonicFrameClock3 != null) {
                            pausableMonotonicFrameClock3.pause();
                        }
                    } else {
                        PausableMonotonicFrameClock pausableMonotonicFrameClock4 = pausableMonotonicFrameClock;
                        if (pausableMonotonicFrameClock4 != null) {
                            pausableMonotonicFrameClock4.resume();
                        }
                    }
                }
            });
            return recomposer;
        }
        throw new IllegalStateException(("ViewTreeLifecycleOwner not found from " + view).toString());
    }

    public static /* synthetic */ Recomposer createLifecycleAwareWindowRecomposer$default(View view, CoroutineContext coroutineContext, Lifecycle lifecycle, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        if ((i10 & 2) != 0) {
            lifecycle = null;
        }
        return createLifecycleAwareWindowRecomposer(view, coroutineContext, lifecycle);
    }

    @Nullable
    public static final CompositionContext findViewTreeCompositionContext(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        CompositionContext compositionContext = getCompositionContext(view);
        if (compositionContext != null) {
            return compositionContext;
        }
        for (ViewParent parent = view.getParent(); compositionContext == null && (parent instanceof View); parent = parent.getParent()) {
            compositionContext = getCompositionContext((View) parent);
        }
        return compositionContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    public static final kt.i<Float> getAnimationScaleFlowFor(Context context) {
        kt.i<Float> iVar;
        Map<Context, kt.i<Float>> map = animationScale;
        synchronized (map) {
            try {
                kt.i<Float> iVar2 = map.get(context);
                if (iVar2 == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                    final jt.d b10 = jt.g.b(-1, null, null, 6, null);
                    final Handler createAsync = HandlerCompat.createAsync(Looper.getMainLooper());
                    iVar2 = kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.F(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(createAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z10, @Nullable Uri uri) {
                            b10.h(Unit.f60915a);
                        }
                    }, b10, context, null)), kotlinx.coroutines.i.b(), m.a.b(kotlinx.coroutines.flow.m.f61804a, 0L, 0L, 3, null), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                    map.put(context, iVar2);
                }
                iVar = iVar2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    @Nullable
    public static final CompositionContext getCompositionContext(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    private static final View getContentChild(View view) {
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (view2.getId() == 16908290) {
                return view;
            }
            parent = view2.getParent();
            view = view2;
        }
        return view;
    }

    @NotNull
    public static final Recomposer getWindowRecomposer(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (view.isAttachedToWindow()) {
            View contentChild = getContentChild(view);
            CompositionContext compositionContext = getCompositionContext(contentChild);
            if (compositionContext == null) {
                return WindowRecomposerPolicy.INSTANCE.createAndInstallWindowRecomposer$ui_release(contentChild);
            }
            if (compositionContext instanceof Recomposer) {
                return (Recomposer) compositionContext;
            }
            throw new IllegalStateException("root viewTreeParentCompositionContext is not a Recomposer");
        }
        throw new IllegalStateException(("Cannot locate windowRecomposer; View " + view + " is not attached to a window").toString());
    }

    public static final void setCompositionContext(@NotNull View view, @Nullable CompositionContext compositionContext) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.androidx_compose_ui_view_composition_context, compositionContext);
    }

    public static /* synthetic */ void getWindowRecomposer$annotations(View view) {
    }
}
