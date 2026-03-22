package androidx.navigation;

import androidx.core.app.ActivityOptionsCompat;
import androidx.navigation.ActivityNavigator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityNavigatorExtras.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ActivityNavigatorExtrasKt {
    @NotNull
    public static final ActivityNavigator.Extras ActivityNavigatorExtras(@Nullable ActivityOptionsCompat activityOptionsCompat, int i10) {
        ActivityNavigator.Extras.Builder builder = new ActivityNavigator.Extras.Builder();
        if (activityOptionsCompat != null) {
            builder.setActivityOptions(activityOptionsCompat);
        }
        builder.addFlags(i10);
        ActivityNavigator.Extras build = builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "ActivityNavigator.Extras…(flags)\n        }.build()");
        return build;
    }

    public static /* synthetic */ ActivityNavigator.Extras ActivityNavigatorExtras$default(ActivityOptionsCompat activityOptionsCompat, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            activityOptionsCompat = null;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return ActivityNavigatorExtras(activityOptionsCompat, i10);
    }
}
