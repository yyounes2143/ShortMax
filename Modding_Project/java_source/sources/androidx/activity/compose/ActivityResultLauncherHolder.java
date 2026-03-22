package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultRegistry.kt */
@Metadata
/* loaded from: classes.dex */
public final class ActivityResultLauncherHolder<I> {
    @Nullable
    private ActivityResultLauncher<I> launcher;

    @Nullable
    public final ActivityResultLauncher<I> getLauncher() {
        return this.launcher;
    }

    public final void launch(@Nullable I i10, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        Unit unit;
        ActivityResultLauncher<I> activityResultLauncher = this.launcher;
        if (activityResultLauncher != null) {
            activityResultLauncher.launch(i10, activityOptionsCompat);
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit != null) {
            return;
        }
        throw new IllegalStateException("Launcher has not been initialized");
    }

    public final void setLauncher(@Nullable ActivityResultLauncher<I> activityResultLauncher) {
        this.launcher = activityResultLauncher;
    }

    public final void unregister() {
        Unit unit;
        ActivityResultLauncher<I> activityResultLauncher = this.launcher;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit != null) {
            return;
        }
        throw new IllegalStateException("Launcher has not been initialized");
    }
}
