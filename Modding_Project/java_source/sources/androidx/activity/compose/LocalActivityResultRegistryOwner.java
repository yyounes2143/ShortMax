package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultRegistry.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/LocalActivityResultRegistryOwner\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 ActivityComposeUtils.kt\nandroidx/activity/compose/ActivityComposeUtilsKt\n*L\n1#1,161:1\n76#2:162\n76#2:163\n23#3,8:164\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/LocalActivityResultRegistryOwner\n*L\n48#1:162\n49#1:163\n49#1:164,8\n*E\n"})
/* loaded from: classes.dex */
public final class LocalActivityResultRegistryOwner {
    public static final int $stable = 0;
    @NotNull
    public static final LocalActivityResultRegistryOwner INSTANCE = new LocalActivityResultRegistryOwner();
    @NotNull
    private static final ProvidableCompositionLocal<ActivityResultRegistryOwner> LocalComposition = CompositionLocalKt.compositionLocalOf$default(null, new Function0<ActivityResultRegistryOwner>() { // from class: androidx.activity.compose.LocalActivityResultRegistryOwner$LocalComposition$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final ActivityResultRegistryOwner invoke() {
            return null;
        }
    }, 1, null);

    private LocalActivityResultRegistryOwner() {
    }

    @Composable
    @Nullable
    public final ActivityResultRegistryOwner getCurrent(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(1418020823);
        ActivityResultRegistryOwner activityResultRegistryOwner = (ActivityResultRegistryOwner) composer.consume(LocalComposition);
        if (activityResultRegistryOwner == null) {
            Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
            while (true) {
                if (context instanceof ContextWrapper) {
                    if (context instanceof ActivityResultRegistryOwner) {
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    context = null;
                    break;
                }
            }
            activityResultRegistryOwner = (ActivityResultRegistryOwner) context;
        }
        composer.endReplaceableGroup();
        return activityResultRegistryOwner;
    }

    @NotNull
    public final ProvidedValue<ActivityResultRegistryOwner> provides(@NotNull ActivityResultRegistryOwner activityResultRegistryOwner) {
        return LocalComposition.provides(activityResultRegistryOwner);
    }
}
