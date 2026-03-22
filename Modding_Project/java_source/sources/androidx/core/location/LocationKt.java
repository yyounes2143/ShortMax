package androidx.core.location;

import android.location.Location;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Location.kt */
@Metadata
/* loaded from: classes.dex */
public final class LocationKt {
    public static final double component1(@NotNull Location location) {
        return location.getLatitude();
    }

    public static final double component2(@NotNull Location location) {
        return location.getLongitude();
    }
}
