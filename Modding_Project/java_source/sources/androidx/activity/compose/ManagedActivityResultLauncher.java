package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.Metadata;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultRegistry.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ManagedActivityResultLauncher<I, O> extends ActivityResultLauncher<I> {
    public static final int $stable = 8;
    @NotNull
    private final State<ActivityResultContract<I, O>> contract;
    @NotNull
    private final ActivityResultLauncherHolder<I> launcher;

    /* JADX WARN: Multi-variable type inference failed */
    public ManagedActivityResultLauncher(@NotNull ActivityResultLauncherHolder<I> activityResultLauncherHolder, @NotNull State<? extends ActivityResultContract<I, O>> state) {
        this.launcher = activityResultLauncherHolder;
        this.contract = state;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    @NotNull
    public ActivityResultContract<I, ?> getContract() {
        return (ActivityResultContract<I, O>) this.contract.getValue();
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(I i10, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        this.launcher.launch(i10, activityOptionsCompat);
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    @c
    public void unregister() {
        throw new UnsupportedOperationException("Registration is automatically handled by rememberLauncherForActivityResult");
    }
}
