package tp;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull
    public static final Intent a(@NotNull Context context, @NotNull Class<?> clazz) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intent intent = new Intent(context, clazz);
        intent.addFlags(268435456);
        intent.addFlags(8388608);
        return intent;
    }
}
