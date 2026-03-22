package androidx.activity.result;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultCaller.kt */
@Metadata
/* loaded from: classes.dex */
public final class ActivityResultCallerLauncher<I, O> extends ActivityResultLauncher<Unit> {
    @NotNull
    private final ActivityResultContract<I, O> callerContract;
    private final I callerInput;
    @NotNull
    private final ActivityResultLauncher<I> launcher;
    @NotNull
    private final i resultContract$delegate = c.b(new Function0(this) { // from class: androidx.activity.result.ActivityResultCallerLauncher$resultContract$2
        final /* synthetic */ ActivityResultCallerLauncher<I, O> this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
            this.this$0 = this;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.result.ActivityResultCallerLauncher$resultContract$2$1] */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final AnonymousClass1 invoke() {
            final ActivityResultCallerLauncher<I, O> activityResultCallerLauncher = this.this$0;
            return new ActivityResultContract<Unit, O>() { // from class: androidx.activity.result.ActivityResultCallerLauncher$resultContract$2.1
                @Override // androidx.activity.result.contract.ActivityResultContract
                public O parseResult(int i10, @Nullable Intent intent) {
                    return (O) activityResultCallerLauncher.getCallerContract().parseResult(i10, intent);
                }

                @Override // androidx.activity.result.contract.ActivityResultContract
                @NotNull
                public Intent createIntent(@NotNull Context context, @NotNull Unit unit) {
                    return activityResultCallerLauncher.getCallerContract().createIntent(context, activityResultCallerLauncher.getCallerInput());
                }
            };
        }
    });

    public ActivityResultCallerLauncher(@NotNull ActivityResultLauncher<I> activityResultLauncher, @NotNull ActivityResultContract<I, O> activityResultContract, I i10) {
        this.launcher = activityResultLauncher;
        this.callerContract = activityResultContract;
        this.callerInput = i10;
    }

    @NotNull
    public final ActivityResultContract<I, O> getCallerContract() {
        return this.callerContract;
    }

    public final I getCallerInput() {
        return this.callerInput;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    @NotNull
    public ActivityResultContract<Unit, ?> getContract() {
        return (ActivityResultContract<Unit, O>) getResultContract();
    }

    @NotNull
    public final ActivityResultLauncher<I> getLauncher() {
        return this.launcher;
    }

    @NotNull
    public final ActivityResultContract<Unit, O> getResultContract() {
        return (ActivityResultContract) this.resultContract$delegate.getValue();
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void unregister() {
        this.launcher.unregister();
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(@NotNull Unit unit, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        this.launcher.launch(this.callerInput, activityOptionsCompat);
    }
}
