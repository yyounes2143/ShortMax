package np;

import android.media.ThumbnailUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
/* compiled from: CacheUtils.java */
/* loaded from: classes8.dex */
class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static File a(@NonNull String str, @NonNull File file, int i10) {
        InputStream inputStream;
        File file2;
        InputStream inputStream2 = null;
        try {
            inputStream = b.a(str, i10);
            try {
                try {
                    file2 = new File(file, g.q(str));
                } catch (Exception e10) {
                    e = e10;
                    io.bidmachine.core.a.m(e);
                    g.j(inputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream2 = inputStream;
                g.j(inputStream2);
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            g.j(inputStream2);
            throw th;
        }
        if (file2.exists() && file2.length() > 0 && b(file2)) {
            g.j(inputStream);
            return file2;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                break;
            }
            fileOutputStream.write(bArr, 0, read);
        }
        g.j(fileOutputStream);
        if (b(file2)) {
            g.j(inputStream);
            return file2;
        }
        g.j(inputStream);
        return null;
    }

    private static boolean b(@NonNull File file) {
        if (ThumbnailUtils.createVideoThumbnail(file.getPath(), 1) != null) {
            return true;
        }
        return false;
    }
}
