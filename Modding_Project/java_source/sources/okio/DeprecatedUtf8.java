package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: -DeprecatedUtf8.kt */
@c
@Metadata
/* renamed from: okio.-DeprecatedUtf8  reason: invalid class name */
/* loaded from: classes8.dex */
public final class DeprecatedUtf8 {
    @NotNull
    public static final DeprecatedUtf8 INSTANCE = new DeprecatedUtf8();

    private DeprecatedUtf8() {
    }

    @c
    public final long size(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return Utf8.size$default(string, 0, 0, 3, null);
    }

    @c
    public final long size(@NotNull String string, int i10, int i11) {
        Intrinsics.checkNotNullParameter(string, "string");
        return Utf8.size(string, i10, i11);
    }
}
