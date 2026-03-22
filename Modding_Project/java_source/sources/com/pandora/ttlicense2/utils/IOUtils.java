package com.pandora.ttlicense2.utils;

import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class IOUtils {
    public static Charset charset() {
        return StandardCharsets.UTF_8;
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Nullable
    public static String headerValue(Map<String, List<String>> map, String str) {
        List<String> list;
        if (map == null || (list = map.get(str)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    @Nullable
    public static String inputStream2String(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    return byteArrayOutputStream.toString(charset().name());
                }
            } catch (IOException unused) {
                return null;
            }
        }
    }

    public static long parseLong(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }
}
