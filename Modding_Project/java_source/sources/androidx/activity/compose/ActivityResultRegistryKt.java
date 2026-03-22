package androidx.activity.compose;

import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultRegistry.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,161:1\n25#2:162\n25#2:169\n955#3,6:163\n955#3,6:170\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n*L\n97#1:162\n98#1:169\n97#1:163,6\n98#1:170,6\n*E\n"})
/* loaded from: classes.dex */
public final class ActivityResultRegistryKt {
    @Composable
    @NotNull
    public static final <I, O> ManagedActivityResultLauncher<I, O> rememberLauncherForActivityResult(@NotNull ActivityResultContract<I, O> activityResultContract, @NotNull Function1<? super O, Unit> function1, @Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(-1408504823);
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(activityResultContract, composer, 8);
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(function1, composer, (i10 >> 3) & 14);
        String str = (String) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) null, (String) null, (Function0<? extends Object>) new Function0<String>() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return UUID.randomUUID().toString();
            }
        }, composer, 3080, 6);
        ActivityResultRegistryOwner current = LocalActivityResultRegistryOwner.INSTANCE.getCurrent(composer, 6);
        if (current != null) {
            ActivityResultRegistry activityResultRegistry = current.getActivityResultRegistry();
            composer.startReplaceableGroup(-3687241);
            Object rememberedValue = composer.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = new ActivityResultLauncherHolder();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) rememberedValue;
            composer.startReplaceableGroup(-3687241);
            Object rememberedValue2 = composer.rememberedValue();
            if (rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new ManagedActivityResultLauncher(activityResultLauncherHolder, rememberUpdatedState);
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            ManagedActivityResultLauncher<I, O> managedActivityResultLauncher = (ManagedActivityResultLauncher) rememberedValue2;
            EffectsKt.DisposableEffect(activityResultRegistry, str, activityResultContract, new ActivityResultRegistryKt$rememberLauncherForActivityResult$1(activityResultLauncherHolder, activityResultRegistry, str, activityResultContract, rememberUpdatedState2), composer, 520);
            composer.endReplaceableGroup();
            return managedActivityResultLauncher;
        }
        throw new IllegalStateException("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
    }
}
