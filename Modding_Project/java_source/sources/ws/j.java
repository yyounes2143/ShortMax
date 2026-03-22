package ws;

import java.io.File;
import kotlin.Metadata;
import kotlin.io.FileWalkDirection;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileTreeWalk.kt */
@Metadata
/* loaded from: classes8.dex */
public class j extends i {
    @NotNull
    public static final e r(@NotNull File file, @NotNull FileWalkDirection direction) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return new e(file, direction);
    }

    public static /* synthetic */ e s(File file, FileWalkDirection fileWalkDirection, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        return r(file, fileWalkDirection);
    }

    @NotNull
    public static final e t(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return r(file, FileWalkDirection.BOTTOM_UP);
    }
}
