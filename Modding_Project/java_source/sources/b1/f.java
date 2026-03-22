package b1;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.network.FileExtension;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: NetworkCache.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class f {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final d f2160a;

    public f(@NonNull d dVar) {
        this.f2160a = dVar;
    }

    private static String b(String str, FileExtension fileExtension, boolean z10) {
        String str2;
        if (z10) {
            str2 = fileExtension.tempExtension();
        } else {
            str2 = fileExtension.extension;
        }
        String replaceAll = str.replaceAll("\\W+", "");
        int length = 242 - str2.length();
        if (replaceAll.length() > length) {
            replaceAll = d(replaceAll, length);
        }
        return "lottie_cache_" + replaceAll + str2;
    }

    @Nullable
    private File c(String str) throws FileNotFoundException {
        File file = new File(e(), b(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(e(), b(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        File file3 = new File(e(), b(str, FileExtension.GZIP, false));
        if (file3.exists()) {
            return file3;
        }
        return null;
    }

    private static String d(String str, int i10) {
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : digest) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException unused) {
            return str.substring(0, i10);
        }
    }

    private File e() {
        File cacheDir = this.f2160a.getCacheDir();
        if (cacheDir.isFile()) {
            cacheDir.delete();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @WorkerThread
    public Pair<FileExtension, InputStream> a(String str) {
        FileExtension fileExtension;
        try {
            File c10 = c(str);
            if (c10 == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(c10);
            if (c10.getAbsolutePath().endsWith(".zip")) {
                fileExtension = FileExtension.ZIP;
            } else if (c10.getAbsolutePath().endsWith(".gz")) {
                fileExtension = FileExtension.GZIP;
            } else {
                fileExtension = FileExtension.JSON;
            }
            d1.f.a("Cache hit for " + str + " at " + c10.getAbsolutePath());
            return new Pair<>(fileExtension, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str, FileExtension fileExtension) {
        File file = new File(e(), b(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        d1.f.a("Copying temp file to real file (" + file2 + ")");
        if (!renameTo) {
            d1.f.c("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File g(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(e(), b(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return file;
                }
            }
        } finally {
            inputStream.close();
        }
    }
}
