package androidx.compose.ui.text.font;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformTypefaces.kt */
@Metadata
/* loaded from: classes.dex */
public final class PlatformTypefacesKt {
    @NotNull
    public static final PlatformTypefaces PlatformTypefaces() {
        if (Build.VERSION.SDK_INT >= 28) {
            return new PlatformTypefacesApi28();
        }
        return new PlatformTypefacesApi();
    }

    @VisibleForTesting
    @NotNull
    public static final String getWeightSuffixForFallbackFamilyName(@NotNull String name, @NotNull FontWeight fontWeight) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        int weight = fontWeight.getWeight() / 100;
        if (weight >= 0 && weight < 2) {
            return name + "-thin";
        } else if (2 <= weight && weight < 4) {
            return name + "-light";
        } else if (weight != 4) {
            if (weight == 5) {
                return name + "-medium";
            } else if ((6 > weight || weight >= 8) && 8 <= weight && weight < 11) {
                return name + "-black";
            } else {
                return name;
            }
        } else {
            return name;
        }
    }
}
