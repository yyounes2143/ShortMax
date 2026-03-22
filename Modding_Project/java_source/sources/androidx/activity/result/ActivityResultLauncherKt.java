package androidx.activity.result;

import androidx.core.app.ActivityOptionsCompat;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultLauncher.kt */
@Metadata
/* loaded from: classes.dex */
public final class ActivityResultLauncherKt {
    public static final void launch(@NotNull ActivityResultLauncher<Void> activityResultLauncher, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        activityResultLauncher.launch(null, activityOptionsCompat);
    }

    public static /* synthetic */ void launch$default(ActivityResultLauncher activityResultLauncher, ActivityOptionsCompat activityOptionsCompat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activityOptionsCompat = null;
        }
        launch(activityResultLauncher, activityOptionsCompat);
    }

    public static final void launchUnit(@NotNull ActivityResultLauncher<Unit> activityResultLauncher, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        activityResultLauncher.launch(Unit.f60915a, activityOptionsCompat);
    }

    public static /* synthetic */ void launchUnit$default(ActivityResultLauncher activityResultLauncher, ActivityOptionsCompat activityOptionsCompat, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            activityOptionsCompat = null;
        }
        launchUnit(activityResultLauncher, activityOptionsCompat);
    }
}
