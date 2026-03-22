package com.vungle.ads.internal.util;

import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.util.Logger;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnzipUtility.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnzipUtility {
    private static final int BUFFER_SIZE = 4096;
    @NotNull
    public static final UnzipUtility INSTANCE = new UnzipUtility();
    private static final String TAG = UnzipUtility.class.getCanonicalName();

    /* compiled from: UnzipUtility.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface Filter {
        boolean matches(@Nullable String str);
    }

    /* compiled from: UnzipUtility.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ZipSecurityException extends IOException {
        public ZipSecurityException(@Nullable String str) {
            super(str);
        }
    }

    private UnzipUtility() {
    }

    public static /* synthetic */ List unzip$default(UnzipUtility unzipUtility, String str, String str2, Filter filter, int i10, Object obj) throws IOException {
        if ((i10 & 4) != 0) {
            filter = null;
        }
        return unzipUtility.unzip(str, str2, filter);
    }

    private final String validateFilename(String str, String str2) throws IOException {
        String canonicalPath = new File(str).getCanonicalPath();
        String canonicalID = new File(str2).getCanonicalPath();
        Intrinsics.checkNotNullExpressionValue(canonicalPath, "canonicalPath");
        Intrinsics.checkNotNullExpressionValue(canonicalID, "canonicalID");
        if (StringsKt.V(canonicalPath, canonicalID, false, 2, null)) {
            return canonicalPath;
        }
        Logger.Companion companion = Logger.Companion;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        companion.e(TAG2, "File is outside extraction target directory.");
        throw new ZipSecurityException("File is outside extraction target directory.");
    }

    @VisibleForTesting
    public final void extractFile(@NotNull InputStream zipIn, @Nullable String str) throws IOException {
        FileOutputStream fileOutputStream;
        Throwable th2;
        BufferedOutputStream bufferedOutputStream;
        Intrinsics.checkNotNullParameter(zipIn, "zipIn");
        File file = new File(str);
        FileUtility.delete(file);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            } catch (Throwable th3) {
                th2 = th3;
                bufferedOutputStream = null;
            }
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = zipIn.read(bArr);
                    if (read != -1) {
                        bufferedOutputStream.write(bArr, 0, read);
                    } else {
                        FileUtility fileUtility = FileUtility.INSTANCE;
                        fileUtility.closeQuietly(zipIn);
                        fileUtility.closeQuietly(bufferedOutputStream);
                        fileUtility.closeQuietly(fileOutputStream);
                        return;
                    }
                }
            } catch (Throwable th4) {
                th2 = th4;
                FileUtility fileUtility2 = FileUtility.INSTANCE;
                fileUtility2.closeQuietly(zipIn);
                fileUtility2.closeQuietly(bufferedOutputStream);
                fileUtility2.closeQuietly(fileOutputStream);
                throw th2;
            }
        } catch (Throwable th5) {
            fileOutputStream = null;
            th2 = th5;
            bufferedOutputStream = null;
        }
    }

    @NotNull
    public final List<File> unzip(@Nullable String str, @NotNull String destDirectory) throws IOException {
        Intrinsics.checkNotNullParameter(destDirectory, "destDirectory");
        return unzip$default(this, str, destDirectory, null, 4, null);
    }

    @NotNull
    public final List<File> unzip(@Nullable String str, @NotNull String destDirectory, @Nullable Filter filter) throws IOException {
        Intrinsics.checkNotNullParameter(destDirectory, "destDirectory");
        if (str != null && str.length() != 0) {
            File file = new File(str);
            if (file.exists()) {
                File file2 = new File(destDirectory);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                ArrayList arrayList = new ArrayList();
                ZipFile zipFile = null;
                try {
                    ZipFile zipFile2 = new ZipFile(file);
                    try {
                        Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                        while (entries.hasMoreElements()) {
                            ZipEntry nextElement = entries.nextElement();
                            String str2 = destDirectory + File.separator + nextElement.getName();
                            if (filter != null && !filter.matches(str2)) {
                            }
                            validateFilename(str2, destDirectory);
                            if (nextElement.isDirectory()) {
                                File file3 = new File(str2);
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                            } else {
                                InputStream inputStream = zipFile2.getInputStream(nextElement);
                                Intrinsics.checkNotNullExpressionValue(inputStream, "zipFile.getInputStream(entry)");
                                extractFile(inputStream, str2);
                                arrayList.add(new File(str2));
                            }
                        }
                        try {
                            zipFile2.close();
                        } catch (IOException unused) {
                        }
                        return arrayList;
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                throw new IOException("File does not exist");
            }
        } else {
            throw new IOException("Path is empty");
        }
    }
}
