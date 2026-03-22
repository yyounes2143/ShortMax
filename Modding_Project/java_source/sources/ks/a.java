package ks;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Atomic.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    public static final int a(@NotNull String name, int i10) {
        String str;
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            str = System.getProperty("io.ktor.utils.io." + name);
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
            return intOrNull.intValue();
        }
        return i10;
    }
}
