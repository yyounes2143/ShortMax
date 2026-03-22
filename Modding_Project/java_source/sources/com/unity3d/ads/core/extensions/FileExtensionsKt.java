package com.unity3d.ads.core.extensions;

import java.io.File;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FileExtensionsKt {
    public static final long getDirectorySize(@NotNull File file) {
        File[] listFiles;
        Intrinsics.checkNotNullParameter(file, "<this>");
        long j10 = 0;
        if (!file.exists()) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(file);
        while (!linkedList.isEmpty()) {
            File file2 = (File) linkedList.remove(0);
            if (file2.exists() && (listFiles = file2.listFiles()) != null && listFiles.length != 0) {
                for (File child : listFiles) {
                    if (child.isDirectory()) {
                        Intrinsics.checkNotNullExpressionValue(child, "child");
                        linkedList.add(child);
                    } else {
                        j10 += child.length();
                    }
                }
            }
        }
        return j10;
    }
}
