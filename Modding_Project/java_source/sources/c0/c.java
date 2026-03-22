package c0;

import android.content.Context;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSizeKt;
import coil.size.Scale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import m0.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f2846a = Constraints.Companion.m4013fixedJhjzzOo(0, 0);

    public static final float a(long j10, float f10) {
        return e.m(f10, Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10));
    }

    public static final float b(long j10, float f10) {
        return e.m(f10, Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10));
    }

    public static final long c() {
        return f2846a;
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final f d(@Nullable Object obj, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1151830858, i10, -1, "coil.compose.requestOf (Utils.kt:21)");
        }
        if (obj instanceof f) {
            return (f) obj;
        }
        return new f.a((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext())).b(obj).a();
    }

    public static final long e(long j10) {
        return IntSizeKt.IntSize(bt.a.c(Size.m1675getWidthimpl(j10)), bt.a.c(Size.m1672getHeightimpl(j10)));
    }

    @Stable
    @NotNull
    public static final Scale f(@NotNull ContentScale contentScale) {
        boolean areEqual;
        ContentScale.Companion companion = ContentScale.Companion;
        if (Intrinsics.areEqual(contentScale, companion.getFit())) {
            areEqual = true;
        } else {
            areEqual = Intrinsics.areEqual(contentScale, companion.getInside());
        }
        if (areEqual) {
            return Scale.FIT;
        }
        return Scale.FILL;
    }
}
