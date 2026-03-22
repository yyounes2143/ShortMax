package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActivityResultCaller.kt */
@Metadata
/* loaded from: classes.dex */
public final class ActivityResultCallerKt {
    @NotNull
    public static final <I, O> ActivityResultLauncher<Unit> registerForActivityResult(@NotNull ActivityResultCaller activityResultCaller, @NotNull ActivityResultContract<I, O> activityResultContract, I i10, @NotNull ActivityResultRegistry activityResultRegistry, @NotNull final Function1<? super O, Unit> function1) {
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(activityResultContract, activityResultRegistry, new ActivityResultCallback() { // from class: androidx.activity.result.a
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                Function1.this.invoke(obj);
            }
        }), activityResultContract, i10);
    }

    @NotNull
    public static final <I, O> ActivityResultLauncher<Unit> registerForActivityResult(@NotNull ActivityResultCaller activityResultCaller, @NotNull ActivityResultContract<I, O> activityResultContract, I i10, @NotNull final Function1<? super O, Unit> function1) {
        return new ActivityResultCallerLauncher(activityResultCaller.registerForActivityResult(activityResultContract, new ActivityResultCallback() { // from class: androidx.activity.result.b
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                Function1.this.invoke(obj);
            }
        }), activityResultContract, i10);
    }
}
