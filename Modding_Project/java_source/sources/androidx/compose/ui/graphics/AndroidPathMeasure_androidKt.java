package androidx.compose.ui.graphics;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidPathMeasure.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPathMeasure_androidKt {
    @NotNull
    public static final PathMeasure PathMeasure() {
        return new AndroidPathMeasure(new android.graphics.PathMeasure());
    }
}
