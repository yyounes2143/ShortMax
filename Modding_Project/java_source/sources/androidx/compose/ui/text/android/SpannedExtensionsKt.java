package androidx.compose.ui.text.android;

import android.text.Spanned;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SpannedExtensions.kt */
@Metadata
/* loaded from: classes.dex */
public final class SpannedExtensionsKt {
    public static final boolean hasSpan(@NotNull Spanned spanned, @NotNull Class<?> clazz) {
        Intrinsics.checkNotNullParameter(spanned, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return spanned.nextSpanTransition(-1, spanned.length(), clazz) != spanned.length();
    }

    public static final boolean hasSpan(@NotNull Spanned spanned, @NotNull Class<?> clazz, int i10, int i11) {
        Intrinsics.checkNotNullParameter(spanned, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return spanned.nextSpanTransition(i10 - 1, i11, clazz) != i11;
    }
}
