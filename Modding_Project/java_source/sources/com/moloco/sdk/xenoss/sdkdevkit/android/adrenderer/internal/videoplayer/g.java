package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Lifecycle f36429a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final LifecycleEventObserver f36430b;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f36431a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f36431a = iArr;
        }
    }

    public g(@NotNull Lifecycle lifecycle, @NotNull final Function0<Unit> onExoResume, @NotNull final Function0<Unit> onExoPause) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(onExoResume, "onExoResume");
        Intrinsics.checkNotNullParameter(onExoPause, "onExoPause");
        this.f36429a = lifecycle;
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.e
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                g.h(Function0.this, onExoPause, lifecycleOwner, event);
            }
        };
        this.f36430b = lifecycleEventObserver;
        lifecycle.addObserver(lifecycleEventObserver);
    }

    public static final void h(Function0 function0, Function0 function02, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        int i10 = a.f36431a[event.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3 && i10 == 4) {
                function02.invoke();
                return;
            }
            return;
        }
        function0.invoke();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        this.f36429a.removeObserver(this.f36430b);
    }
}
