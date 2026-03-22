package androidx.datastore.core;

import androidx.annotation.RequiresApi;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileMoves.android.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes2.dex */
final class Api26Impl {
    @NotNull
    public static final Api26Impl INSTANCE = new Api26Impl();

    private Api26Impl() {
    }

    public final boolean move(@NotNull File srcFile, @NotNull File dstFile) {
        Intrinsics.checkNotNullParameter(srcFile, "srcFile");
        Intrinsics.checkNotNullParameter(dstFile, "dstFile");
        try {
            Files.move(srcFile.toPath(), dstFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
