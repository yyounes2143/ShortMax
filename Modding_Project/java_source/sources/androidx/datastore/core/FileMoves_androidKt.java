package androidx.datastore.core;

import android.os.Build;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileMoves.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FileMoves_androidKt {
    public static final boolean atomicMoveTo(@NotNull File file, @NotNull File toFile) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(toFile, "toFile");
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.INSTANCE.move(file, toFile);
        }
        return file.renameTo(toFile);
    }
}
