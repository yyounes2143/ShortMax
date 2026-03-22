package androidx.navigation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.MainThread;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActivityNavArgsLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ActivityNavArgsLazyKt {
    @MainThread
    @NotNull
    public static final /* synthetic */ <Args extends NavArgs> NavArgsLazy<Args> navArgs(@NotNull final Activity navArgs) {
        Intrinsics.checkParameterIsNotNull(navArgs, "$this$navArgs");
        Intrinsics.reifiedOperationMarker(4, "Args");
        return new NavArgsLazy<>(Reflection.getOrCreateKotlinClass(NavArgs.class), new Function0<Bundle>() { // from class: androidx.navigation.ActivityNavArgsLazyKt$navArgs$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Bundle invoke() {
                Intent intent = navArgs.getIntent();
                if (intent != null) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        return extras;
                    }
                    throw new IllegalStateException("Activity " + navArgs + " has null extras in " + intent);
                }
                throw new IllegalStateException("Activity " + navArgs + " has a null Intent");
            }
        });
    }
}
