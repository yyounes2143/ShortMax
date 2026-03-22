package androidx.compose.ui.res;

import android.content.Context;
import androidx.annotation.ArrayRes;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.IntegerRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrimitiveResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PrimitiveResources_androidKt {
    @Composable
    @ReadOnlyComposable
    public static final boolean booleanResource(@BoolRes int i10, @Nullable Composer composer, int i11) {
        return ((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources().getBoolean(i10);
    }

    @Composable
    @ReadOnlyComposable
    public static final float dimensionResource(@DimenRes int i10, @Nullable Composer composer, int i11) {
        return Dp.m4049constructorimpl(((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources().getDimension(i10) / ((Density) composer.consume(CompositionLocalsKt.getLocalDensity())).getDensity());
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final int[] integerArrayResource(@ArrayRes int i10, @Nullable Composer composer, int i11) {
        int[] intArray = ((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources().getIntArray(i10);
        Intrinsics.checkNotNullExpressionValue(intArray, "context.resources.getIntArray(id)");
        return intArray;
    }

    @Composable
    @ReadOnlyComposable
    public static final int integerResource(@IntegerRes int i10, @Nullable Composer composer, int i11) {
        return ((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).getResources().getInteger(i10);
    }
}
