package com.startshorts.androidplayer.utils;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import ws.b;
import ws.n;
/* compiled from: FileUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFileUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtil.kt\ncom/startshorts/androidplayer/utils/FileUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"})
/* loaded from: classes7.dex */
public final class FileUtil {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final FileUtil f48159a = new FileUtil();

    private FileUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean c(File file) {
        String str;
        try {
            boolean delete = file.delete();
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("deleteFile -> path(");
            sb2.append(file.getAbsolutePath());
            sb2.append(") result(");
            if (delete) {
                str = "success";
            } else {
                str = "failed";
            }
            sb2.append(str);
            sb2.append(')');
            logger.h("FileUtil", sb2.toString());
            return true;
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("FileUtil", "deleteFile failed -> path(" + file.getAbsolutePath() + ") errMsg(" + e10.getMessage() + ')');
            return false;
        }
    }

    public final void b(@NotNull File file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (z10) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "deleteFile", false, new FileUtil$deleteFile$1(file, null), 2, null);
        } else {
            c(file);
        }
    }

    @NotNull
    public final String d(@NotNull Context context, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        InputStream open = context.getAssets().open(fileName);
        Intrinsics.checkNotNullExpressionValue(open, "open(...)");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, Charsets.UTF_8), 8192);
        try {
            String h10 = n.h(bufferedReader);
            b.a(bufferedReader, null);
            return h10;
        } finally {
        }
    }

    public final void e(@NotNull File inputFile, @NotNull String savePath, boolean z10, int i10) throws Exception {
        ZipOutputStream zipOutputStream;
        File[] listFiles;
        int j10;
        Intrinsics.checkNotNullParameter(inputFile, "inputFile");
        Intrinsics.checkNotNullParameter(savePath, "savePath");
        BufferedOutputStream bufferedOutputStream = null;
        try {
            zipOutputStream = new ZipOutputStream(new FileOutputStream(savePath));
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(zipOutputStream);
                try {
                    if (inputFile.isDirectory() && (listFiles = inputFile.listFiles()) != null) {
                        if (listFiles.length == 0) {
                            zipOutputStream.putNextEntry(new ZipEntry(inputFile.getName() + File.separator));
                        } else {
                            if (i10 == -1) {
                                j10 = listFiles.length;
                            } else {
                                j10 = e.j(i10, listFiles.length);
                            }
                            if (z10) {
                                kotlin.collections.n.e1(listFiles);
                            }
                            for (int i11 = 0; i11 < j10; i11++) {
                                File file = listFiles[i11];
                                FileUtil fileUtil = f48159a;
                                Intrinsics.checkNotNull(file);
                                fileUtil.f(zipOutputStream, file, inputFile.getName() + File.separator + file.getName(), bufferedOutputStream2);
                            }
                        }
                    }
                    try {
                        bufferedOutputStream2.close();
                        zipOutputStream.close();
                    } catch (Exception unused) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (Exception unused2) {
                            throw th;
                        }
                    }
                    if (zipOutputStream != null) {
                        zipOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            zipOutputStream = null;
        }
    }

    public final void f(@NotNull ZipOutputStream out, @NotNull File file, @NotNull String base, @NotNull BufferedOutputStream bo2) throws Exception {
        BufferedInputStream bufferedInputStream;
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(base, "base");
        Intrinsics.checkNotNullParameter(bo2, "bo");
        FileInputStream fileInputStream = null;
        try {
            out.putNextEntry(new ZipEntry(base));
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                bufferedInputStream = new BufferedInputStream(fileInputStream2);
                while (true) {
                    try {
                        int read = bufferedInputStream.read();
                        if (read != -1) {
                            bo2.write(read);
                        } else {
                            try {
                                fileInputStream2.close();
                                bufferedInputStream.close();
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception unused2) {
                                throw th;
                            }
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }
}
