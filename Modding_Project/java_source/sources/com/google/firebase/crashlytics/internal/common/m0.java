package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* compiled from: NativeSessionFileGzipper.java */
/* loaded from: classes5.dex */
class m0 {
    private static void a(@Nullable InputStream inputStream, @NonNull File file) throws IOException {
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream2.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream2.finish();
                        CommonUtils.g(gZIPOutputStream2);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = gZIPOutputStream2;
                    CommonUtils.g(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(File file, List<l0> list) {
        for (l0 l0Var : list) {
            InputStream inputStream = null;
            try {
                inputStream = l0Var.getStream();
                if (inputStream != null) {
                    a(inputStream, new File(file, l0Var.a()));
                }
            } catch (IOException unused) {
            } catch (Throwable th2) {
                CommonUtils.g(null);
                throw th2;
            }
            CommonUtils.g(inputStream);
        }
    }
}
