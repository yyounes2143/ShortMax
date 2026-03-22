package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Predicate;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes6.dex */
public class DefaultHttpDataSource implements HttpDataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final long MAX_BYTES_TO_DRAIN = 2048;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "DefaultHttpDataSource";
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesSkipped;
    private long bytesToRead;
    private long bytesToSkip;
    private final int connectTimeoutMillis;
    private HttpsURLConnection connection;
    private final Predicate<String> contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private InputStream inputStream;
    private final TransferListener<? super DefaultHttpDataSource> listener;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private final String userAgent;
    private static final Pattern CONTENT_RANGE_HEADER = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> skipBufferReference = new AtomicReference<>();

    public DefaultHttpDataSource(String str, Predicate<String> predicate) {
        this(str, predicate, null);
    }

    private void closeConnectionQuietly() {
        HttpsURLConnection httpsURLConnection = this.connection;
        if (httpsURLConnection != null) {
            try {
                httpsURLConnection.disconnect();
            } catch (Exception e10) {
                Log.e(TAG, "Unexpected error while disconnecting", e10);
            }
            this.connection = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long getContentLength(javax.net.ssl.HttpsURLConnection r10) {
        /*
            java.lang.String r0 = "Content-Length"
            java.lang.String r0 = r10.getHeaderField(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r2 = "DefaultHttpDataSource"
            java.lang.String r3 = "]"
            if (r1 != 0) goto L2c
            long r4 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> L15
            goto L2e
        L15:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "Unexpected Content-Length ["
            r1.append(r4)
            r1.append(r0)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r2, r1)
        L2c:
            r4 = -1
        L2e:
            java.lang.String r1 = "Content-Range"
            java.lang.String r10 = r10.getHeaderField(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r10)
            if (r1 != 0) goto La3
            java.util.regex.Pattern r1 = com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultHttpDataSource.CONTENT_RANGE_HEADER
            java.util.regex.Matcher r1 = r1.matcher(r10)
            boolean r6 = r1.find()
            if (r6 == 0) goto La3
            r6 = 2
            java.lang.String r6 = r1.group(r6)     // Catch: java.lang.NumberFormatException -> L8c
            long r6 = java.lang.Long.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L8c
            r8 = 1
            java.lang.String r1 = r1.group(r8)     // Catch: java.lang.NumberFormatException -> L8c
            long r8 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L8c
            long r6 = r6 - r8
            r8 = 1
            long r6 = r6 + r8
            r8 = 0
            int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r1 >= 0) goto L64
            r4 = r6
            goto La3
        L64:
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 == 0) goto La3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L8c
            r1.<init>()     // Catch: java.lang.NumberFormatException -> L8c
            java.lang.String r8 = "Inconsistent headers ["
            r1.append(r8)     // Catch: java.lang.NumberFormatException -> L8c
            r1.append(r0)     // Catch: java.lang.NumberFormatException -> L8c
            java.lang.String r0 = "] ["
            r1.append(r0)     // Catch: java.lang.NumberFormatException -> L8c
            r1.append(r10)     // Catch: java.lang.NumberFormatException -> L8c
            r1.append(r3)     // Catch: java.lang.NumberFormatException -> L8c
            java.lang.String r0 = r1.toString()     // Catch: java.lang.NumberFormatException -> L8c
            android.util.Log.w(r2, r0)     // Catch: java.lang.NumberFormatException -> L8c
            long r4 = java.lang.Math.max(r4, r6)     // Catch: java.lang.NumberFormatException -> L8c
            goto La3
        L8c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unexpected Content-Range ["
            r0.append(r1)
            r0.append(r10)
            r0.append(r3)
            java.lang.String r10 = r0.toString()
            android.util.Log.e(r2, r10)
        La3:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultHttpDataSource.getContentLength(javax.net.ssl.HttpsURLConnection):long");
    }

    private static URL handleRedirect(URL url, String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new ProtocolException("Unsupported protocol redirect: " + protocol);
            }
            return url2;
        }
        throw new ProtocolException("Null location redirect");
    }

    private HttpsURLConnection makeConnection(DataSpec dataSpec) throws IOException {
        HttpsURLConnection makeConnection;
        URL url = new URL(dataSpec.uri.toString());
        byte[] bArr = dataSpec.postBody;
        long j10 = dataSpec.position;
        long j11 = dataSpec.length;
        boolean isFlagSet = dataSpec.isFlagSet(1);
        if (this.allowCrossProtocolRedirects) {
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (i10 <= 20) {
                    long j12 = j10;
                    makeConnection = makeConnection(url, bArr, j10, j11, isFlagSet, false);
                    int responseCode = makeConnection.getResponseCode();
                    if (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || (bArr == null && (responseCode == 307 || responseCode == 308))) {
                        String headerField = makeConnection.getHeaderField("Location");
                        makeConnection.disconnect();
                        url = handleRedirect(url, headerField);
                        bArr = null;
                        i10 = i11;
                        j10 = j12;
                    }
                } else {
                    throw new NoRouteToHostException("Too many redirects: " + i11);
                }
            }
            return makeConnection;
        }
        return makeConnection(url, bArr, j10, j11, isFlagSet, true);
    }

    private static void maybeTerminateInputStream(HttpsURLConnection httpsURLConnection, long j10) {
        int i10 = Util.SDK_INT;
        if (i10 != 19 && i10 != 20) {
            return;
        }
        try {
            InputStream inputStream = httpsURLConnection.getInputStream();
            if (j10 == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j10 <= MAX_BYTES_TO_DRAIN) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            }
        } catch (Exception unused) {
        }
    }

    private int readInternal(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.bytesToRead;
        if (j10 != -1) {
            long j11 = j10 - this.bytesRead;
            if (j11 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j11);
        }
        int read = this.inputStream.read(bArr, i10, i11);
        if (read == -1) {
            if (this.bytesToRead == -1) {
                return -1;
            }
            throw new EOFException();
        }
        this.bytesRead += read;
        TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
        if (transferListener != null) {
            transferListener.onBytesTransferred(this, read);
        }
        return read;
    }

    private void skipInternal() throws IOException {
        if (this.bytesSkipped == this.bytesToSkip) {
            return;
        }
        byte[] andSet = skipBufferReference.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (true) {
            long j10 = this.bytesSkipped;
            long j11 = this.bytesToSkip;
            if (j10 != j11) {
                int read = this.inputStream.read(andSet, 0, (int) Math.min(j11 - j10, andSet.length));
                if (!Thread.currentThread().isInterrupted()) {
                    if (read != -1) {
                        this.bytesSkipped += read;
                        TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
                        if (transferListener != null) {
                            transferListener.onBytesTransferred(this, read);
                        }
                    } else {
                        throw new EOFException();
                    }
                } else {
                    throw new InterruptedIOException();
                }
            } else {
                skipBufferReference.set(andSet);
                return;
            }
        }
    }

    protected final long bytesRead() {
        return this.bytesRead;
    }

    protected final long bytesRemaining() {
        long j10 = this.bytesToRead;
        if (j10 != -1) {
            return j10 - this.bytesRead;
        }
        return j10;
    }

    protected final long bytesSkipped() {
        return this.bytesSkipped;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource, com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.inputStream != null) {
                maybeTerminateInputStream(this.connection, bytesRemaining());
                try {
                    this.inputStream.close();
                } catch (IOException e10) {
                    throw new HttpDataSource.HttpDataSourceException(e10, this.dataSpec, 3);
                }
            }
        } finally {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
                if (transferListener != null) {
                    transferListener.onTransferEnd(this);
                }
            }
        }
    }

    protected final HttpsURLConnection getConnection() {
        return this.connection;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public Map<String, List<String>> getResponseHeaders() {
        HttpsURLConnection httpsURLConnection = this.connection;
        if (httpsURLConnection == null) {
            return null;
        }
        return httpsURLConnection.getHeaderFields();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public Uri getUri() {
        HttpsURLConnection httpsURLConnection = this.connection;
        if (httpsURLConnection == null) {
            return null;
        }
        return Uri.parse(httpsURLConnection.getURL().toString());
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource, com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        this.dataSpec = dataSpec;
        long j10 = 0;
        this.bytesRead = 0L;
        this.bytesSkipped = 0L;
        try {
            HttpsURLConnection makeConnection = makeConnection(dataSpec);
            this.connection = makeConnection;
            try {
                int responseCode = makeConnection.getResponseCode();
                if (responseCode >= 200 && responseCode <= 299) {
                    String contentType = this.connection.getContentType();
                    Predicate<String> predicate = this.contentTypePredicate;
                    if (predicate != null && !predicate.evaluate(contentType)) {
                        closeConnectionQuietly();
                        throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
                    }
                    if (responseCode == 200) {
                        long j11 = dataSpec.position;
                        if (j11 != 0) {
                            j10 = j11;
                        }
                    }
                    this.bytesToSkip = j10;
                    if (!dataSpec.isFlagSet(1)) {
                        long j12 = dataSpec.length;
                        long j13 = -1;
                        if (j12 != -1) {
                            this.bytesToRead = j12;
                        } else {
                            long contentLength = getContentLength(this.connection);
                            if (contentLength != -1) {
                                j13 = contentLength - this.bytesToSkip;
                            }
                            this.bytesToRead = j13;
                        }
                    } else {
                        this.bytesToRead = dataSpec.length;
                    }
                    try {
                        this.inputStream = this.connection.getInputStream();
                        this.opened = true;
                        TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
                        if (transferListener != null) {
                            transferListener.onTransferStart(this, dataSpec);
                        }
                        return this.bytesToRead;
                    } catch (IOException e10) {
                        closeConnectionQuietly();
                        throw new HttpDataSource.HttpDataSourceException(e10, dataSpec, 1);
                    }
                }
                Map<String, List<String>> headerFields = this.connection.getHeaderFields();
                closeConnectionQuietly();
                HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(responseCode, headerFields, dataSpec);
                if (responseCode == 416) {
                    invalidResponseCodeException.initCause(new DataSourceException(0));
                }
                throw invalidResponseCodeException;
            } catch (IOException e11) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e11, dataSpec, 1);
            }
        } catch (IOException e12) {
            throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e12, dataSpec, 1);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource, com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource.HttpDataSourceException {
        try {
            skipInternal();
            return readInternal(bArr, i10, i11);
        } catch (IOException e10) {
            throw new HttpDataSource.HttpDataSourceException(e10, this.dataSpec, 2);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }

    public DefaultHttpDataSource(String str, Predicate<String> predicate, TransferListener<? super DefaultHttpDataSource> transferListener) {
        this(str, predicate, transferListener, 8000, 8000);
    }

    public DefaultHttpDataSource(String str, Predicate<String> predicate, TransferListener<? super DefaultHttpDataSource> transferListener, int i10, int i11) {
        this(str, predicate, transferListener, i10, i11, false, null);
    }

    public DefaultHttpDataSource(String str, Predicate<String> predicate, TransferListener<? super DefaultHttpDataSource> transferListener, int i10, int i11, boolean z10, HttpDataSource.RequestProperties requestProperties) {
        this.userAgent = Assertions.checkNotEmpty(str);
        this.contentTypePredicate = predicate;
        this.listener = transferListener;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.connectTimeoutMillis = i10;
        this.readTimeoutMillis = i11;
        this.allowCrossProtocolRedirects = z10;
        this.defaultRequestProperties = requestProperties;
    }

    private HttpsURLConnection makeConnection(URL url, byte[] bArr, long j10, long j11, boolean z10, boolean z11) throws IOException {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
        httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(url));
        httpsURLConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpsURLConnection.setReadTimeout(this.readTimeoutMillis);
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            for (Map.Entry<String, String> entry : requestProperties.getSnapshot().entrySet()) {
                httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, String> entry2 : this.requestProperties.getSnapshot().entrySet()) {
            httpsURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (j10 != 0 || j11 != -1) {
            String str = "bytes=" + j10 + "-";
            if (j11 != -1) {
                str = str + ((j10 + j11) - 1);
            }
            httpsURLConnection.setRequestProperty(Command.HTTP_HEADER_RANGE, str);
        }
        httpsURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, this.userAgent);
        if (!z10) {
            httpsURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpsURLConnection.setInstanceFollowRedirects(z11);
        httpsURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpsURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
            if (bArr.length == 0) {
                httpsURLConnection.connect();
            } else {
                httpsURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpsURLConnection.connect();
                OutputStream outputStream = httpsURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
            }
        } else {
            httpsURLConnection.connect();
        }
        return httpsURLConnection;
    }
}
