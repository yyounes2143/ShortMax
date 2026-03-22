package com.pandora.ttlicense2.loader;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.pandora.ttlicense2.utils.IOUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class DiskCache {
    private static final Map<String, String> keyMap = new HashMap();
    private final File directory;

    /* loaded from: classes6.dex */
    public static class HttpWriter implements Writer {
        volatile boolean canceled;
        private final String httpUrl;
        private final Writer.ProgressListener listener;

        public HttpWriter(String str, Writer.ProgressListener progressListener) {
            this.httpUrl = str;
            this.listener = progressListener;
        }

        public void cancel() {
            this.canceled = true;
        }

        @Override // com.pandora.ttlicense2.loader.DiskCache.Writer
        public void write(@NonNull File file) throws IOException {
            InputStream inputStream;
            HttpURLConnection httpURLConnection;
            HttpURLConnection httpURLConnection2;
            InputStream inputStream2 = null;
            try {
                HttpURLConnection httpURLConnection3 = (HttpURLConnection) new URL(this.httpUrl).openConnection();
                try {
                    httpURLConnection3.setConnectTimeout(10000);
                    httpURLConnection3.setReadTimeout(10000);
                    httpURLConnection3.setInstanceFollowRedirects(true);
                    httpURLConnection3.setRequestMethod(ShareTarget.METHOD_GET);
                    httpURLConnection3.setDoInput(true);
                    httpURLConnection3.setUseCaches(false);
                    int responseCode = httpURLConnection3.getResponseCode();
                    String responseMessage = httpURLConnection3.getResponseMessage();
                    Map<String, List<String>> headerFields = httpURLConnection3.getHeaderFields();
                    String headerValue = IOUtils.headerValue(headerFields, CommonGatewayClient.HEADER_CONTENT_TYPE);
                    long parseLong = IOUtils.parseLong(IOUtils.headerValue(headerFields, "Content-Length"));
                    if (responseCode == 200) {
                        InputStream inputStream3 = httpURLConnection3.getInputStream();
                        try {
                            new InputStreamWriter(new BufferedInputStream(inputStream3) { // from class: com.pandora.ttlicense2.loader.DiskCache.HttpWriter.1
                                @Override // java.io.FilterInputStream, java.io.InputStream
                                public int read(byte[] bArr) throws IOException {
                                    if (!HttpWriter.this.canceled) {
                                        return super.read(bArr);
                                    }
                                    throw new IOException("canceled when read.");
                                }
                            }, parseLong, this.listener).write(file);
                            IOUtils.closeQuietly(inputStream3);
                            IOUtils.closeQuietly(null);
                            try {
                                httpURLConnection3.disconnect();
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            httpURLConnection2 = httpURLConnection3;
                            inputStream = null;
                            inputStream2 = inputStream3;
                        }
                    } else {
                        InputStream errorStream = httpURLConnection3.getErrorStream();
                        try {
                            throw new IOException("url = " + this.httpUrl + " code = " + responseCode + " msg = " + responseMessage + " contentType = " + headerValue + " errorContent = " + IOUtils.inputStream2String(errorStream));
                        } catch (Throwable th3) {
                            httpURLConnection2 = httpURLConnection3;
                            inputStream = errorStream;
                            th = th3;
                        }
                    }
                    httpURLConnection = httpURLConnection2;
                } catch (Throwable th4) {
                    th = th4;
                    httpURLConnection = httpURLConnection3;
                    inputStream = null;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                httpURLConnection = null;
            }
            IOUtils.closeQuietly(inputStream2);
            IOUtils.closeQuietly(inputStream);
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    /* loaded from: classes6.dex */
    public static class InputStreamWriter implements Writer {
        private final long contentLength;
        private final InputStream data;
        private final Writer.ProgressListener listener;

        public InputStreamWriter(InputStream inputStream, long j10, Writer.ProgressListener progressListener) {
            this.data = inputStream;
            this.contentLength = j10;
            this.listener = progressListener;
        }

        @Override // com.pandora.ttlicense2.loader.DiskCache.Writer
        public void write(@NonNull File file) throws IOException {
            byte[] bArr = new byte[4096];
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                long j10 = 0;
                while (true) {
                    try {
                        int read = this.data.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        j10 += read;
                        Writer.ProgressListener progressListener = this.listener;
                        if (progressListener != null) {
                            progressListener.update(j10, this.contentLength, false);
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                }
                Writer.ProgressListener progressListener2 = this.listener;
                if (progressListener2 != null) {
                    progressListener2.update(j10, this.contentLength, true);
                }
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes6.dex */
    interface Writer {

        /* loaded from: classes6.dex */
        public interface ProgressListener {
            void update(long j10, long j11, boolean z10);
        }

        void write(@NonNull File file) throws IOException;
    }

    public DiskCache(@NonNull File file) {
        this.directory = file;
    }

    public static long calLength(File file) {
        if (file == null) {
            return -1L;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            long j10 = 0;
            if (listFiles == null || listFiles.length <= 0) {
                return 0L;
            }
            for (File file2 : listFiles) {
                j10 += calLength(file2);
            }
            return j10;
        }
        return file.length();
    }

    public static void delete(File file) {
        File[] listFiles;
        if (file == null) {
            return;
        }
        if (file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                delete(file2);
            }
        }
        file.delete();
    }

    public static String fileName(String str) {
        Map<String, String> map = keyMap;
        String str2 = map.get(str);
        if (str2 == null) {
            String str3 = md5(str) + ".lic";
            map.put(str, str3);
            return str3;
        }
        return str2;
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception unused) {
            return str;
        }
    }

    @AnyThread
    public void clear() {
        delete(this.directory);
    }

    @Nullable
    @AnyThread
    public File get(@NonNull String str) {
        File file = new File(this.directory, fileName(str));
        if (file.exists() && file.length() > 0) {
            return file;
        }
        return null;
    }

    @WorkerThread
    public void put(@NonNull String str, @NonNull Writer writer) throws IOException {
        String fileName = fileName(str);
        File file = this.directory;
        File file2 = new File(file, fileName + ".tmp");
        if (file2.exists()) {
            delete(file2);
        }
        this.directory.mkdirs();
        file2.createNewFile();
        writer.write(file2);
        if (file2.exists() && file2.length() > 0) {
            File file3 = new File(this.directory, fileName);
            if (file3.exists()) {
                delete(file3);
            }
            if (!file2.renameTo(file3)) {
                throw new IOException(file2 + " -> " + file3 + " error!");
            }
            return;
        }
        file2.delete();
    }

    @AnyThread
    public void remove(@NonNull String str) {
        delete(new File(this.directory, fileName(str)));
    }
}
