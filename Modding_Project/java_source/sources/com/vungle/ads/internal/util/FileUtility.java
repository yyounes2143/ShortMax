package com.vungle.ads.internal.util;

import android.os.Build;
import android.webkit.URLUtil;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.AssetFailedToDeleteError;
import com.vungle.ads.internal.util.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.f;
/* compiled from: FileUtility.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FileUtility {
    @NotNull
    public static final FileUtility INSTANCE = new FileUtility();
    @NotNull
    private static ObjectInputStreamProvider objectInputStreamProvider = new ObjectInputStreamProvider() { // from class: com.vungle.ads.internal.util.a
        @Override // com.vungle.ads.internal.util.FileUtility.ObjectInputStreamProvider
        public final ObjectInputStream provideObjectInputStream(InputStream inputStream) {
            ObjectInputStream m4846objectInputStreamProvider$lambda0;
            m4846objectInputStreamProvider$lambda0 = FileUtility.m4846objectInputStreamProvider$lambda0(inputStream);
            return m4846objectInputStreamProvider$lambda0;
        }
    };
    private static final String TAG = FileUtility.class.getSimpleName();
    @NotNull
    private static final List<Class<?>> allowedClasses = CollectionsKt.q(LinkedHashSet.class, HashSet.class, HashMap.class, ArrayList.class, File.class);

    /* compiled from: FileUtility.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface ObjectInputStreamProvider {
        @NotNull
        ObjectInputStream provideObjectInputStream(@Nullable InputStream inputStream) throws IOException, ClassNotFoundException;
    }

    private FileUtility() {
    }

    public static final void delete(@Nullable File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        deleteContents(file);
                    }
                    if (!file.delete()) {
                        Logger.Companion companion = Logger.Companion;
                        String TAG2 = TAG;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        companion.d(TAG2, "Failed to delete file: " + file);
                    }
                }
            } catch (Exception e10) {
                Logger.Companion companion2 = Logger.Companion;
                String TAG3 = TAG;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                companion2.e(TAG3, "Failed to delete file: " + e10.getLocalizedMessage());
            }
        }
    }

    public static final void deleteAndLogIfFailed(@NotNull File file) {
        Path path;
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                path = file.toPath();
                Files.delete(path);
            } else if (!file.delete()) {
                new AssetFailedToDeleteError("Cannot delete " + file.getName()).logErrorNoReturnValue$vungle_ads_release();
            }
        } catch (Exception e10) {
            new AssetFailedToDeleteError("Failed to delete " + file.getName() + " with error :" + e10.getMessage()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    public static final void deleteContents(@NotNull File folder) {
        Intrinsics.checkNotNullParameter(folder, "folder");
        File[] listFiles = folder.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            delete(file);
        }
    }

    private final String getIndentString(int i10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("|  ");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "sb.toString()");
        return sb3;
    }

    public static /* synthetic */ String guessFileName$default(FileUtility fileUtility, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return fileUtility.guessFileName(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: objectInputStreamProvider$lambda-0  reason: not valid java name */
    public static final ObjectInputStream m4846objectInputStreamProvider$lambda0(InputStream inputStream) {
        return new SafeObjectInputStream(inputStream, allowedClasses);
    }

    public static final void printDirectoryTree(@Nullable File file) {
    }

    private final void printFile(File file, int i10, StringBuilder sb2) {
        sb2.append(getIndentString(i10));
        sb2.append("+--");
        sb2.append(file.getName());
        sb2.append('\n');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0028: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:11:0x0028 */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.vungle.ads.internal.util.FileUtility$ObjectInputStreamProvider] */
    @Nullable
    public static final <T> T readSerializable(@NotNull File file) {
        Closeable closeable;
        ObjectInputStream objectInputStream;
        Closeable closeable2;
        Intrinsics.checkNotNullParameter(file, "file");
        ?? exists = file.exists();
        Closeable closeable3 = null;
        try {
            if (exists == 0) {
                return null;
            }
            try {
                exists = new FileInputStream(file);
            } catch (IOException e10) {
                e = e10;
                exists = 0;
                objectInputStream = null;
            } catch (ClassNotFoundException e11) {
                e = e11;
                exists = 0;
                objectInputStream = null;
            } catch (Exception e12) {
                e = e12;
                exists = 0;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                exists = 0;
            }
            try {
                objectInputStream = objectInputStreamProvider.provideObjectInputStream(exists);
                try {
                    T t10 = (T) objectInputStream.readObject();
                    ?? r02 = INSTANCE;
                    r02.closeQuietly(objectInputStream);
                    r02.closeQuietly(exists);
                    return t10;
                } catch (IOException e13) {
                    e = e13;
                    Logger.Companion companion = Logger.Companion;
                    String TAG2 = TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    companion.e(TAG2, "IOException: " + e.getMessage());
                    closeable2 = exists;
                    FileUtility fileUtility = INSTANCE;
                    fileUtility.closeQuietly(objectInputStream);
                    fileUtility.closeQuietly(closeable2);
                    try {
                        delete(file);
                    } catch (IOException unused) {
                    }
                    return null;
                } catch (ClassNotFoundException e14) {
                    e = e14;
                    Logger.Companion companion2 = Logger.Companion;
                    String TAG3 = TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    companion2.e(TAG3, "ClassNotFoundException: " + e.getMessage());
                    closeable2 = exists;
                    FileUtility fileUtility2 = INSTANCE;
                    fileUtility2.closeQuietly(objectInputStream);
                    fileUtility2.closeQuietly(closeable2);
                    delete(file);
                    return null;
                } catch (Exception e15) {
                    e = e15;
                    Logger.Companion companion3 = Logger.Companion;
                    String TAG4 = TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                    companion3.e(TAG4, "cannot read serializable " + e.getMessage());
                    closeable2 = exists;
                    FileUtility fileUtility22 = INSTANCE;
                    fileUtility22.closeQuietly(objectInputStream);
                    fileUtility22.closeQuietly(closeable2);
                    delete(file);
                    return null;
                }
            } catch (IOException e16) {
                e = e16;
                objectInputStream = null;
            } catch (ClassNotFoundException e17) {
                e = e17;
                objectInputStream = null;
            } catch (Exception e18) {
                e = e18;
                objectInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                ?? r03 = INSTANCE;
                r03.closeQuietly(closeable3);
                r03.closeQuietly(exists);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            closeable3 = closeable;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable, java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r5v15, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r5v9, types: [com.vungle.ads.internal.util.FileUtility] */
    public static final void writeSerializable(@NotNull File file, @Nullable Serializable serializable) {
        FileOutputStream fileOutputStream;
        ?? r42;
        Intrinsics.checkNotNullParameter(file, "file");
        if (file.exists()) {
            deleteAndLogIfFailed(file);
        }
        if (serializable == null) {
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
        } catch (IOException e10) {
            e = e10;
            r42 = 0;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            r42 = new ObjectOutputStream(fileOutputStream);
        } catch (IOException e11) {
            e = e11;
            r42 = 0;
        } catch (Throwable th3) {
            th = th3;
            FileUtility fileUtility = INSTANCE;
            fileUtility.closeQuietly(fileOutputStream2);
            fileUtility.closeQuietly(fileOutputStream);
            throw th;
        }
        try {
            r42.writeObject(serializable);
            r42.reset();
            ?? r52 = INSTANCE;
            r52.closeQuietly(r42);
            r52.closeQuietly(fileOutputStream);
        } catch (IOException e12) {
            e = e12;
            fileOutputStream2 = fileOutputStream;
            r42 = r42;
            try {
                Logger.Companion companion = Logger.Companion;
                String TAG2 = TAG;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                companion.e(TAG2, String.valueOf(e.getMessage()));
                ?? r53 = INSTANCE;
                r53.closeQuietly(r42);
                r53.closeQuietly(fileOutputStream2);
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = fileOutputStream2;
                fileOutputStream2 = r42;
                FileUtility fileUtility2 = INSTANCE;
                fileUtility2.closeQuietly(fileOutputStream2);
                fileUtility2.closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream2 = r42;
            FileUtility fileUtility22 = INSTANCE;
            fileUtility22.closeQuietly(fileOutputStream2);
            fileUtility22.closeQuietly(fileOutputStream);
            throw th;
        }
    }

    public final void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @NotNull
    public final List<Class<?>> getAllowedClasses$vungle_ads_release() {
        return allowedClasses;
    }

    @VisibleForTesting
    @NotNull
    public final ObjectInputStreamProvider getObjectInputStreamProvider() {
        return objectInputStreamProvider;
    }

    @NotNull
    public final String guessFileName(@NotNull String url, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        String guessFileName = URLUtil.guessFileName(url, null, str);
        Intrinsics.checkNotNullExpressionValue(guessFileName, "guessFileName(url, null, ext)");
        return guessFileName;
    }

    public final boolean isValidUrl(@Nullable String str) {
        if (str != null && str.length() != 0 && HttpUrl.f63457k.f(str) != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String readString(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!file.exists()) {
            return null;
        }
        try {
            return f.m(file, null, 1, null);
        } catch (IOException e10) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.e(TAG2, "IOException: " + e10.getMessage());
            return null;
        } catch (Exception e11) {
            Logger.Companion companion2 = Logger.Companion;
            String TAG3 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            companion2.e(TAG3, "cannot read string " + e11.getMessage());
            return null;
        }
    }

    @VisibleForTesting
    public final void setObjectInputStreamProvider(@NotNull ObjectInputStreamProvider objectInputStreamProvider2) {
        Intrinsics.checkNotNullParameter(objectInputStreamProvider2, "<set-?>");
        objectInputStreamProvider = objectInputStreamProvider2;
    }

    public final long size(@Nullable File file) {
        boolean z10;
        long j10 = 0;
        if (file == null || !file.exists()) {
            return 0L;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                if (listFiles.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    for (File file2 : listFiles) {
                        j10 += size(file2);
                    }
                }
            }
            return j10;
        }
        return file.length();
    }

    public final void writeString(@NotNull File file, @Nullable String str) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (str == null) {
            return;
        }
        try {
            f.o(file, str, Charsets.UTF_8);
        } catch (IOException e10) {
            Logger.Companion companion = Logger.Companion;
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            companion.e(TAG2, String.valueOf(e10.getMessage()));
        }
    }

    private final void printDirectoryTree(File file, int i10, StringBuilder sb2) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            sb2.append(getIndentString(i10));
            sb2.append("+--");
            sb2.append(file.getName());
            sb2.append("/\n");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    printDirectoryTree(file2, i10 + 1, sb2);
                } else {
                    Intrinsics.checkNotNullExpressionValue(file2, "file");
                    printFile(file2, i10 + 1, sb2);
                }
            }
            return;
        }
        throw new IllegalArgumentException("folder is not a Directory");
    }

    @VisibleForTesting
    public static /* synthetic */ void getAllowedClasses$vungle_ads_release$annotations() {
    }
}
