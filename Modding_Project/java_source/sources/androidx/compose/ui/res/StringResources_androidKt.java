package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.ArrayRes;
import androidx.annotation.PluralsRes;
import androidx.annotation.StringRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class StringResources_androidKt {
    @NotNull
    @Composable
    @ReadOnlyComposable
    @ExperimentalComposeUiApi
    public static final String pluralStringResource(@PluralsRes int i10, int i11, @Nullable Composer composer, int i12) {
        String quantityString = resources(composer, 0).getQuantityString(i10, i11);
        Intrinsics.checkNotNullExpressionValue(quantityString, "resources.getQuantityString(id, count)");
        return quantityString;
    }

    @Composable
    @ReadOnlyComposable
    private static final Resources resources(Composer composer, int i10) {
        composer.consume(AndroidCompositionLocals_androidKt.getLocalConfiguration());
        Resources resources = ((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "LocalContext.current.resources");
        return resources;
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final String[] stringArrayResource(@ArrayRes int i10, @Nullable Composer composer, int i11) {
        String[] stringArray = resources(composer, 0).getStringArray(i10);
        Intrinsics.checkNotNullExpressionValue(stringArray, "resources.getStringArray(id)");
        return stringArray;
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final String stringResource(@StringRes int i10, @Nullable Composer composer, int i11) {
        String string = resources(composer, 0).getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "resources.getString(id)");
        return string;
    }

    @NotNull
    @Composable
    @ReadOnlyComposable
    @ExperimentalComposeUiApi
    public static final String pluralStringResource(@PluralsRes int i10, int i11, @NotNull Object[] formatArgs, @Nullable Composer composer, int i12) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        String quantityString = resources(composer, 0).getQuantityString(i10, i11, Arrays.copyOf(formatArgs, formatArgs.length));
        Intrinsics.checkNotNullExpressionValue(quantityString, "resources.getQuantityStr…g(id, count, *formatArgs)");
        return quantityString;
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final String stringResource(@StringRes int i10, @NotNull Object[] formatArgs, @Nullable Composer composer, int i11) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        String string = resources(composer, 0).getString(i10, Arrays.copyOf(formatArgs, formatArgs.length));
        Intrinsics.checkNotNullExpressionValue(string, "resources.getString(id, *formatArgs)");
        return string;
    }
}
