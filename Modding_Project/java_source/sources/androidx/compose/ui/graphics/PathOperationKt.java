package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.PathOperation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathOperation.kt */
@Metadata
/* loaded from: classes.dex */
public final class PathOperationKt {
    public static final int getDifference(@NotNull PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2094getDifferenceb3I0S0c();
    }

    public static final int getIntersect(@NotNull PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2095getIntersectb3I0S0c();
    }

    public static final int getReverseDifference(@NotNull PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2096getReverseDifferenceb3I0S0c();
    }

    public static final int getUnion(@NotNull PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2097getUnionb3I0S0c();
    }

    public static final int getXor(@NotNull PathOperation.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.m2098getXorb3I0S0c();
    }

    @ms.c
    public static /* synthetic */ void getDifference$annotations(PathOperation.Companion companion) {
    }

    @ms.c
    public static /* synthetic */ void getIntersect$annotations(PathOperation.Companion companion) {
    }

    @ms.c
    public static /* synthetic */ void getReverseDifference$annotations(PathOperation.Companion companion) {
    }

    @ms.c
    public static /* synthetic */ void getUnion$annotations(PathOperation.Companion companion) {
    }

    @ms.c
    public static /* synthetic */ void getXor$annotations(PathOperation.Companion companion) {
    }
}
