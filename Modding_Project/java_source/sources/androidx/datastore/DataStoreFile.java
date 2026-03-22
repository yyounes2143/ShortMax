package androidx.datastore;

import android.content.Context;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DataStoreFile.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DataStoreFile {
    @NotNull
    public static final File dataStoreFile(@NotNull Context context, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File filesDir = context.getApplicationContext().getFilesDir();
        return new File(filesDir, "datastore/" + fileName);
    }
}
