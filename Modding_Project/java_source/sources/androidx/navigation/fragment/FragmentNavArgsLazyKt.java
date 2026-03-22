package androidx.navigation.fragment;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavArgs;
import androidx.navigation.NavArgsLazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* compiled from: FragmentNavArgsLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentNavArgsLazyKt {
    @MainThread
    @NotNull
    public static final /* synthetic */ <Args extends NavArgs> NavArgsLazy<Args> navArgs(@NotNull final Fragment navArgs) {
        Intrinsics.checkParameterIsNotNull(navArgs, "$this$navArgs");
        Intrinsics.reifiedOperationMarker(4, "Args");
        return new NavArgsLazy<>(Reflection.getOrCreateKotlinClass(NavArgs.class), new Function0<Bundle>() { // from class: androidx.navigation.fragment.FragmentNavArgsLazyKt$navArgs$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Bundle invoke() {
                Bundle arguments = Fragment.this.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + Fragment.this + " has null arguments");
            }
        });
    }
}
