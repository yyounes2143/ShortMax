package com.startshorts.androidplayer.utils.ext;

import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FragmentExt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"})
/* loaded from: classes7.dex */
public final class FragmentExtKt {
    public static final void b(@NotNull final Fragment fragment, @NotNull final Function0<Unit> onSafetyLifeCycle, @NotNull final Function0<Unit> onOtherLifeCycle) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(onSafetyLifeCycle, "onSafetyLifeCycle");
        Intrinsics.checkNotNullParameter(onOtherLifeCycle, "onOtherLifeCycle");
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: jk.i
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentExtKt.c(Fragment.this, onSafetyLifeCycle, onOtherLifeCycle);
                }
            });
            return;
        }
        final Lifecycle lifecycle = fragment.getLifecycle();
        Intrinsics.checkNotNullExpressionValue(lifecycle, "<get-lifecycle>(...)");
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            if (fragment.getView() != null) {
                onSafetyLifeCycle.invoke();
                return;
            }
            Logger.f41511a.h("Fragment.checkOnStarted", "Fragment is STARTED but View is null. Fallback to onOther.");
            onOtherLifeCycle.invoke();
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("Fragment.checkOnStarted", "当前状态 " + lifecycle.getCurrentState() + " 低于 STARTED，注册监听等待恢复...");
        lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: com.startshorts.androidplayer.utils.ext.FragmentExtKt$performCheckOnStarted$2
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onDestroy(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                Lifecycle.this.removeObserver(this);
                Logger.f41511a.h("Fragment.checkOnStarted", "Fragment destroyed before Start.");
                onOtherLifeCycle.invoke();
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onStart(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                Lifecycle.this.removeObserver(this);
                if (fragment.getView() != null) {
                    onSafetyLifeCycle.invoke();
                    return;
                }
                Logger.f41511a.h("Fragment.checkOnStarted", "Wait finished but View is null!");
                onOtherLifeCycle.invoke();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Fragment fragment, Function0 function0, Function0 function02) {
        b(fragment, function0, function02);
    }
}
