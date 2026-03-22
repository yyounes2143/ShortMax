package okio;

import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InflaterSource.kt */
@Metadata
/* renamed from: okio.-InflaterSourceExtensions  reason: invalid class name */
/* loaded from: classes8.dex */
public final class InflaterSourceExtensions {
    @NotNull
    public static final InflaterSource inflate(@NotNull Source source, @NotNull Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source source, Inflater inflater, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            inflater = new Inflater();
        }
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }
}
