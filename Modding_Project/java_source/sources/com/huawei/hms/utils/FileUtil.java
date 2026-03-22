package com.huawei.hms.utils;

import android.content.Context;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes5.dex */
public abstract class FileUtil {
    public static final String LOCAL_REPORT_FILE = "hms/HwMobileServiceReport.txt";
    public static final String LOCAL_REPORT_FILE_CONFIG = "hms/config.txt";
    public static final long LOCAL_REPORT_FILE_MAX_SIZE = 10240;

    /* renamed from: a  reason: collision with root package name */
    private static boolean f22364a = false;

    /* renamed from: b  reason: collision with root package name */
    private static ScheduledExecutorService f22365b = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f22366a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f22367b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f22368c;

        a(File file, long j10, String str) {
            this.f22366a = file;
            this.f22367b = j10;
            this.f22368c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RandomAccessFile randomAccessFile;
            Throwable th2;
            File file = this.f22366a;
            if (file == null) {
                HMSLog.e("FileUtil", "In writeFile Failed to get local file.");
                return;
            }
            File parentFile = file.getParentFile();
            if (parentFile != null && (parentFile.mkdirs() || parentFile.isDirectory())) {
                RandomAccessFile randomAccessFile2 = null;
                try {
                    try {
                        long length = this.f22366a.length();
                        if (length > this.f22367b) {
                            String canonicalPath = this.f22366a.getCanonicalPath();
                            if (!this.f22366a.delete()) {
                                HMSLog.e("FileUtil", "last file delete failed.");
                            }
                            randomAccessFile2 = new RandomAccessFile(new File(canonicalPath), "rw");
                        } else {
                            randomAccessFile = new RandomAccessFile(this.f22366a, "rw");
                            try {
                                randomAccessFile.seek(length);
                                randomAccessFile2 = randomAccessFile;
                            } catch (IOException e10) {
                                e = e10;
                                randomAccessFile2 = randomAccessFile;
                                HMSLog.e("FileUtil", "writeFile exception:", e);
                                IOUtils.closeQuietly(randomAccessFile2);
                                return;
                            } catch (Throwable th3) {
                                th2 = th3;
                                IOUtils.closeQuietly(randomAccessFile);
                                throw th2;
                            }
                        }
                        randomAccessFile2.writeBytes(this.f22368c + System.getProperty("line.separator"));
                    } catch (Throwable th4) {
                        randomAccessFile = null;
                        th2 = th4;
                    }
                } catch (IOException e11) {
                    e = e11;
                }
                IOUtils.closeQuietly(randomAccessFile2);
                return;
            }
            HMSLog.e("FileUtil", "In writeFile, Failed to create directory.");
        }
    }

    public static boolean verifyHash(String str, File file) {
        byte[] digest = SHA256.digest(file);
        if (digest != null && HEX.encodeHexString(digest, true).equalsIgnoreCase(str)) {
            return true;
        }
        return false;
    }

    public static void writeFile(File file, String str, long j10) {
        f22365b.execute(new a(file, j10, str));
    }

    public static void writeFileReport(Context context, File file, File file2, String str, long j10, int i10) {
        if (file != null && file.isFile() && file.exists()) {
            if (!f22364a) {
                if (file2 != null && file2.exists() && !file2.delete()) {
                    HMSLog.e("FileUtil", "file delete failed.");
                }
                f22364a = true;
            }
            writeFile(file2, str + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + j10 + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + i10, LOCAL_REPORT_FILE_MAX_SIZE);
        }
    }
}
