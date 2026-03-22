package ws;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.io.FileAlreadyExistsException;
import kotlin.io.FileSystemException;
import kotlin.io.NoSuchFileException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Utils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,473:1\n1#2:474\n1288#3,3:475\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n*L\n347#1:475,3\n*E\n"})
/* loaded from: classes8.dex */
public class k extends j {
    @NotNull
    public static final File u(@NotNull File file, @NotNull File target, boolean z10, int i10) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        if (file.exists()) {
            if (target.exists()) {
                if (z10) {
                    if (!target.delete()) {
                        throw new FileAlreadyExistsException(file, target, "Tried to overwrite the destination, but failed to delete it.");
                    }
                } else {
                    throw new FileAlreadyExistsException(file, target, "The destination file already exists.");
                }
            }
            if (file.isDirectory()) {
                if (!target.mkdirs()) {
                    throw new FileSystemException(file, target, "Failed to create target directory.");
                }
            } else {
                File parentFile = target.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(target);
                    a.a(fileInputStream, fileOutputStream, i10);
                    b.a(fileOutputStream, null);
                    b.a(fileInputStream, null);
                } finally {
                }
            }
            return target;
        }
        throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
    }

    public static /* synthetic */ File v(File file, File file2, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 8192;
        }
        return u(file, file2, z10, i10);
    }

    public static boolean w(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        while (true) {
            boolean z10 = true;
            for (File file2 : j.t(file)) {
                if (file2.delete() || !file2.exists()) {
                    if (z10) {
                        break;
                    }
                }
                z10 = false;
            }
            return z10;
        }
    }

    @NotNull
    public static String x(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt.i1(name, '.', "");
    }

    @NotNull
    public static final File y(@NotNull File file, @NotNull File relative) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(relative, "relative");
        if (g.b(relative)) {
            return relative;
        }
        String file2 = file.toString();
        Intrinsics.checkNotNullExpressionValue(file2, "toString(...)");
        if (file2.length() != 0) {
            char c10 = File.separatorChar;
            if (!StringsKt.g0(file2, c10, false, 2, null)) {
                return new File(file2 + c10 + relative);
            }
        }
        return new File(file2 + relative);
    }

    @NotNull
    public static File z(@NotNull File file, @NotNull String relative) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(relative, "relative");
        return y(file, new File(relative));
    }
}
