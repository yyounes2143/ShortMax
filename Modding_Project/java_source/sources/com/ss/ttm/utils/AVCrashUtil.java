package com.ss.ttm.utils;

import android.content.Context;
import android.util.Base64;
import androidx.work.Data;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
@Deprecated
/* loaded from: classes6.dex */
public final class AVCrashUtil {
    public static void compress(InputStream inputStream, OutputStream outputStream) throws Exception {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        byte[] bArr = new byte[Data.MAX_DATA_BYTES];
        while (true) {
            int read = inputStream.read(bArr, 0, Data.MAX_DATA_BYTES);
            if (read != -1) {
                gZIPOutputStream.write(bArr, 0, read);
            } else {
                gZIPOutputStream.flush();
                gZIPOutputStream.finish();
                gZIPOutputStream.close();
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x008d A[Catch: IOException -> 0x0089, TRY_LEAVE, TryCatch #5 {IOException -> 0x0089, blocks: (B:46:0x0085, B:50:0x008d), top: B:78:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean copyFile(java.lang.String r4, java.lang.String r5, boolean r6, boolean r7) {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r5 = r0.exists()
            r1 = 0
            if (r5 != 0) goto Ld
            return r1
        Ld:
            boolean r5 = r0.isFile()
            if (r5 != 0) goto L14
            return r1
        L14:
            java.io.File r5 = new java.io.File
            r5.<init>(r4)
            boolean r2 = r5.exists()
            if (r2 == 0) goto L2a
            if (r6 == 0) goto L3f
            java.io.File r6 = new java.io.File
            r6.<init>(r4)
            r6.delete()
            goto L3f
        L2a:
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.exists()
            if (r4 != 0) goto L3f
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.mkdirs()
            if (r4 != 0) goto L3f
            return r1
        L3f:
            r4 = 0
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7f java.io.FileNotFoundException -> L81
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7f java.io.FileNotFoundException -> L81
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L95 java.io.FileNotFoundException -> La7
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L95 java.io.FileNotFoundException -> La7
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
        L4e:
            int r5 = r6.read(r4)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            r3 = -1
            if (r5 == r3) goto L5f
            r2.write(r4, r1, r5)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            goto L4e
        L59:
            r4 = move-exception
            goto L83
        L5b:
            r4 = r2
            goto L95
        L5d:
            r4 = r2
            goto La7
        L5f:
            r2.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            r6.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            if (r7 == 0) goto L6a
            r0.delete()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
        L6a:
            r2.close()     // Catch: java.io.IOException -> L71
            r6.close()     // Catch: java.io.IOException -> L71
            goto L75
        L71:
            r4 = move-exception
            r4.printStackTrace()
        L75:
            r4 = 1
            return r4
        L77:
            r5 = move-exception
            r2 = r4
        L79:
            r4 = r5
            goto L83
        L7b:
            r5 = move-exception
            r6 = r4
            r2 = r6
            goto L79
        L7f:
            r6 = r4
            goto L95
        L81:
            r6 = r4
            goto La7
        L83:
            if (r2 == 0) goto L8b
            r2.close()     // Catch: java.io.IOException -> L89
            goto L8b
        L89:
            r5 = move-exception
            goto L91
        L8b:
            if (r6 == 0) goto L94
            r6.close()     // Catch: java.io.IOException -> L89
            goto L94
        L91:
            r5.printStackTrace()
        L94:
            throw r4
        L95:
            if (r4 == 0) goto L9d
            r4.close()     // Catch: java.io.IOException -> L9b
            goto L9d
        L9b:
            r4 = move-exception
            goto La3
        L9d:
            if (r6 == 0) goto La6
            r6.close()     // Catch: java.io.IOException -> L9b
            goto La6
        La3:
            r4.printStackTrace()
        La6:
            return r1
        La7:
            if (r4 == 0) goto Laf
            r4.close()     // Catch: java.io.IOException -> Lad
            goto Laf
        Lad:
            r4 = move-exception
            goto Lb5
        Laf:
            if (r6 == 0) goto Lb8
            r6.close()     // Catch: java.io.IOException -> Lad
            goto Lb8
        Lb5:
            r4.printStackTrace()
        Lb8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.utils.AVCrashUtil.copyFile(java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    public static void deleteCrashFile(Context context, String str) {
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean existsCrashFile(Context context, String str) {
        if (context == null && str == null) {
            return false;
        }
        return new File(str).exists();
    }

    public static String getBase64SampleCrash(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String getCrashFileContext(Context context, String str, StringBuilder sb2) {
        FileInputStream fileInputStream;
        if (context != null && str != null) {
            File file = new File(str);
            if (!file.exists()) {
                sb2.append("file not exist.path:");
                sb2.append(str);
                sb2.append("\r\n");
                return null;
            } else if (file.length() == 0) {
                sb2.append("file size is zore.");
                sb2.append("\r\n");
                return null;
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        compress(fileInputStream, byteArrayOutputStream);
                        fileInputStream.close();
                        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                        byteArrayOutputStream.close();
                        return encodeToString;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException unused) {
                        }
                        sb2.append("gzip file is error.error:");
                        sb2.append(e.getMessage());
                        return null;
                    }
                } catch (Exception e12) {
                    e = e12;
                    fileInputStream = null;
                }
            }
        } else {
            sb2.append("context or path is null.\r\n");
            return null;
        }
    }

    public static final boolean moveFile(String str, String str2, boolean z10) {
        return copyFile(str, str2, z10, true);
    }
}
