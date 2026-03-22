package com.ss.ttm.player;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import androidx.work.Data;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes6.dex */
public final class TTCrashUtil {
    public static void addDebugTrackInfo(long j10, String str, String str2, boolean z10) {
        appendTrackInfo(getDebugTrackFilePath(j10, str), z10, str2);
    }

    public static void addTrackInfo(long j10, String str, String str2) {
        appendTrackInfo(getTrackFilePath(j10, str), true, str2);
    }

    private static void appendTrackInfo(String str, boolean z10, String str2) {
        FileWriter fileWriter = null;
        try {
            try {
                FileWriter fileWriter2 = new FileWriter(str, z10);
                try {
                    fileWriter2.write(str2);
                    fileWriter2.close();
                } catch (Exception unused) {
                    fileWriter = fileWriter2;
                    fileWriter.close();
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter = fileWriter2;
                    try {
                        fileWriter.close();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void checkLogDir(String str) {
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        boolean delete = file2.delete();
                        if (!delete) {
                            Log.d("ttmp", "delete file:" + file2.getName() + "," + delete);
                        }
                    }
                }
                boolean delete2 = file.delete();
                if (!delete2) {
                    Log.d("ttmp", "delete dir file:" + file.getName() + "," + delete2);
                    return;
                }
                return;
            }
            return;
        }
        boolean mkdir = file.mkdir();
        if (!mkdir) {
            Log.d("ttmp", "mkdir:" + file.getName() + "," + mkdir);
        }
    }

    public static void checkTrackDir(String str) {
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists()) {
            file.mkdir();
        }
    }

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

    /* JADX WARN: Removed duplicated region for block: B:49:0x0087 A[Catch: IOException -> 0x0083, TRY_LEAVE, TryCatch #10 {IOException -> 0x0083, blocks: (B:45:0x007f, B:49:0x0087), top: B:79:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L75 java.io.IOException -> L79 java.io.FileNotFoundException -> L7b
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L75 java.io.IOException -> L79 java.io.FileNotFoundException -> L7b
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L8f java.io.FileNotFoundException -> La1
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L8f java.io.FileNotFoundException -> La1
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
            goto L7d
        L5b:
            r4 = r2
            goto L8f
        L5d:
            r4 = r2
            goto La1
        L5f:
            if (r7 == 0) goto L64
            r0.delete()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
        L64:
            r2.close()     // Catch: java.io.IOException -> L6b
            r6.close()     // Catch: java.io.IOException -> L6b
            goto L6f
        L6b:
            r4 = move-exception
            r4.printStackTrace()
        L6f:
            r4 = 1
            return r4
        L71:
            r5 = move-exception
            r2 = r4
        L73:
            r4 = r5
            goto L7d
        L75:
            r5 = move-exception
            r6 = r4
            r2 = r6
            goto L73
        L79:
            r6 = r4
            goto L8f
        L7b:
            r6 = r4
            goto La1
        L7d:
            if (r2 == 0) goto L85
            r2.close()     // Catch: java.io.IOException -> L83
            goto L85
        L83:
            r5 = move-exception
            goto L8b
        L85:
            if (r6 == 0) goto L8e
            r6.close()     // Catch: java.io.IOException -> L83
            goto L8e
        L8b:
            r5.printStackTrace()
        L8e:
            throw r4
        L8f:
            if (r4 == 0) goto L97
            r4.close()     // Catch: java.io.IOException -> L95
            goto L97
        L95:
            r4 = move-exception
            goto L9d
        L97:
            if (r6 == 0) goto La0
            r6.close()     // Catch: java.io.IOException -> L95
            goto La0
        L9d:
            r4.printStackTrace()
        La0:
            return r1
        La1:
            if (r4 == 0) goto La9
            r4.close()     // Catch: java.io.IOException -> La7
            goto La9
        La7:
            r4 = move-exception
            goto Laf
        La9:
            if (r6 == 0) goto Lb2
            r6.close()     // Catch: java.io.IOException -> La7
            goto Lb2
        Laf:
            r4.printStackTrace()
        Lb2:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.TTCrashUtil.copyFile(java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    public static void deleteCrashFile(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static void deleteDebugTrackFile(long j10, String str) {
        deleteTrackFile(getDebugTrackFilePath(j10, str));
    }

    private static void deleteTrackFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean existLogsFile(long j10, String str) {
        File[] listFiles;
        String valueOf = String.valueOf(j10);
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : listFiles) {
            String name = file2.getName();
            Log.i("ttmp", "<TTCrashUtils,existLogsFile,375>file:" + name + ",pname:" + valueOf);
            if (name != null && !name.startsWith(valueOf)) {
                return true;
            }
        }
        return false;
    }

    public static boolean existsCrashFile(Context context, String str) {
        if (context == null && str == null) {
            return false;
        }
        return new File(str).exists();
    }

    public static final String existsCrashFilePath(Context context) {
        if (TTPlayerConfiger.getValue(18, 1) == 1) {
            String appCrashFilePath = TTPlayerConfiger.getAppCrashFilePath(context);
            if (appCrashFilePath == null || !new File(appCrashFilePath).exists()) {
                return null;
            }
            return appCrashFilePath;
        }
        String appCrashFilePath2 = TTPlayerConfiger.getAppCrashFilePath2(context);
        if (appCrashFilePath2 != null && new File(appCrashFilePath2).exists()) {
            return appCrashFilePath2;
        }
        String plugerCrashFilePath = TTPlayerConfiger.getPlugerCrashFilePath(context);
        if (plugerCrashFilePath != null && new File(plugerCrashFilePath).exists()) {
            return plugerCrashFilePath;
        }
        String externalStorageDirectoryCrashFilePath = TTPlayerConfiger.getExternalStorageDirectoryCrashFilePath(context);
        if (externalStorageDirectoryCrashFilePath != null && !new File(externalStorageDirectoryCrashFilePath).exists()) {
            return null;
        }
        return externalStorageDirectoryCrashFilePath;
    }

    public static boolean existsTrackFile(long j10, String str) {
        return new File(getTrackFilePath(j10, str)).exists();
    }

    public static String getBase64SampleCrash(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static String getCrashFileContext(Context context, String str, StringBuilder sb2) {
        FileInputStream fileInputStream;
        if (context == null && str == null) {
            sb2.append("context or path is null.\r\n");
            return null;
        }
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
            } catch (Exception e10) {
                e = e10;
                fileInputStream = null;
            }
            try {
                compress(fileInputStream, byteArrayOutputStream);
                fileInputStream.close();
                String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                byteArrayOutputStream.close();
                return encodeToString;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
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
        }
    }

    private static String getDebugTrackFilePath(long j10, String str) {
        return String.format(Locale.US, "%s/ttplayer_logs/%d_d.log", str, Long.valueOf(j10));
    }

    private static boolean getTrackFileInfos(File file, StringBuilder sb2) {
        int read;
        FileReader fileReader = null;
        try {
            if (file.exists()) {
                char[] cArr = new char[1024];
                FileReader fileReader2 = new FileReader(file);
                do {
                    try {
                        read = fileReader2.read(cArr);
                        if (read <= 0) {
                            break;
                        }
                        sb2.append(cArr, 0, read);
                    } catch (Throwable th2) {
                        th = th2;
                        fileReader = fileReader2;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Exception unused) {
                            }
                        }
                        sb2.append("track message:");
                        sb2.append(th.getMessage());
                        sb2.append("\r\n");
                        return true;
                    }
                } while (read >= 1024);
                fileReader2.close();
                return true;
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String getTrackFilePath(long j10, String str) {
        return String.format(Locale.US, "%s/ttplayer_logs/%d.log", str, Long.valueOf(j10));
    }

    public static final boolean moveFile(String str, String str2, boolean z10) {
        return copyFile(str, str2, z10, true);
    }

    public static boolean moveTrackFile(long j10, long j11, String str) {
        return new File(getTrackFilePath(j10, str)).renameTo(new File(getTrackFilePath(j11, str)));
    }

    public static boolean readDebugTrackInfos(long j10, String str, StringBuilder sb2) {
        return getTrackFileInfos(getDebugTrackFilePath(j10, str), sb2);
    }

    public static boolean readLogsInfo(long j10, String str, StringBuilder sb2) {
        File[] listFiles;
        String valueOf = String.valueOf(j10);
        File file = new File(String.format("%s/ttplayer_logs", str));
        if (!file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return false;
        }
        for (File file2 : listFiles) {
            String name = file2.getName();
            if (name != null && !name.startsWith(valueOf) && getTrackFileInfos(file2, sb2)) {
                boolean delete = file2.delete();
                if (!delete) {
                    Log.d("ttmp", "delete file:" + file2.getName() + "," + delete);
                }
                return delete;
            }
        }
        return false;
    }

    public static boolean readTrackInfos(long j10, String str, StringBuilder sb2) {
        return getTrackFileInfos(getTrackFilePath(j10, str), sb2);
    }

    public static final void saveException(Throwable th2, String str) {
        FileOutputStream fileOutputStream;
        if (str == null) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        PrintStream printStream = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    PrintStream printStream2 = new PrintStream(fileOutputStream);
                    try {
                        printStream2.write("EXCE".getBytes());
                        th2.printStackTrace(printStream2);
                        printStream2.close();
                        fileOutputStream.close();
                    } catch (Exception unused) {
                        printStream = printStream2;
                        if (printStream != null) {
                            printStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        printStream = printStream2;
                        if (printStream != null) {
                            printStream.close();
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (Exception unused3) {
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }

    public static void saveLowMemoryInfo(int i10, String str) {
        FileWriter fileWriter;
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                try {
                    fileWriter = new FileWriter(file);
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return;
                }
            } catch (IOException e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileWriter.write("LOWM\r\nrecv low memory warring info.level:" + i10);
            fileWriter.close();
        } catch (IOException e12) {
            e = e12;
            fileWriter2 = fileWriter;
            e.printStackTrace();
            if (fileWriter2 != null) {
                fileWriter2.close();
            }
        } catch (Throwable th3) {
            th = th3;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveStopInfo(java.lang.String r2, java.lang.String r3) {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r2)
            boolean r2 = r0.exists()
            if (r2 == 0) goto Lc
            return
        Lc:
            r2 = 0
            java.io.FileWriter r1 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L48
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L48
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            r2.<init>()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            java.lang.String r0 = "STOP recv stop info:"
            r2.append(r0)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            r2.append(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            java.lang.String r3 = ".time:"
            r2.append(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            java.lang.String r3 = com.ss.ttm.utils.AVTime.getFormatNow()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            r2.append(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            java.lang.String r3 = "\r\n"
            r2.append(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            r1.write(r2)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L42
            r1.close()     // Catch: java.io.IOException -> L3b
            goto L53
        L3b:
            r2 = move-exception
            r2.printStackTrace()
            goto L53
        L40:
            r2 = move-exception
            goto L54
        L42:
            r2 = move-exception
            goto L4b
        L44:
            r3 = move-exception
            r1 = r2
            r2 = r3
            goto L54
        L48:
            r3 = move-exception
            r1 = r2
            r2 = r3
        L4b:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L53
            r1.close()     // Catch: java.io.IOException -> L3b
        L53:
            return
        L54:
            if (r1 == 0) goto L5e
            r1.close()     // Catch: java.io.IOException -> L5a
            goto L5e
        L5a:
            r3 = move-exception
            r3.printStackTrace()
        L5e:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.TTCrashUtil.saveStopInfo(java.lang.String, java.lang.String):void");
    }

    public static void addTrackInfo(long j10, String str, String str2, boolean z10) {
        appendTrackInfo(getTrackFilePath(j10, str), z10, str2);
    }

    public static void deleteTrackFile(long j10, String str) {
        deleteTrackFile(getTrackFilePath(j10, str));
    }

    private static boolean getTrackFileInfos(String str, StringBuilder sb2) {
        int read;
        FileReader fileReader = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                sb2.append(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
                sb2.append(str);
                sb2.append(" not exists.\r\n");
                return false;
            }
            char[] cArr = new char[1024];
            FileReader fileReader2 = new FileReader(file);
            do {
                try {
                    read = fileReader2.read(cArr);
                    if (read <= 0) {
                        break;
                    }
                    sb2.append(cArr, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                    fileReader = fileReader2;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception unused) {
                        }
                    }
                    sb2.append("track message:");
                    sb2.append(th.getMessage());
                    sb2.append("\r\n");
                    return true;
                }
            } while (read >= 1024);
            fileReader2.close();
            return true;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
