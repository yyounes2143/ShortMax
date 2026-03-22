package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.StringUtils;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class AwsChunkedEncodingInputStream extends SdkInputStream {

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f4902m = new byte[0];

    /* renamed from: n  reason: collision with root package name */
    private static final Log f4903n = LogFactory.b(AwsChunkedEncodingInputStream.class);

    /* renamed from: a  reason: collision with root package name */
    private InputStream f4904a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4905b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f4906c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4907d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4908e;

    /* renamed from: f  reason: collision with root package name */
    private final String f4909f;

    /* renamed from: g  reason: collision with root package name */
    private String f4910g;

    /* renamed from: h  reason: collision with root package name */
    private final AWS4Signer f4911h;

    /* renamed from: i  reason: collision with root package name */
    private ChunkContentIterator f4912i;

    /* renamed from: j  reason: collision with root package name */
    private DecodedStreamBuffer f4913j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4914k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f4915l;

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    private static long o(long j10) {
        return Long.toHexString(j10).length() + 83 + j10 + 2;
    }

    public static long p(long j10) {
        long j11;
        if (j10 >= 0) {
            long j12 = j10 / 131072;
            long j13 = j10 % 131072;
            long o10 = j12 * o(131072L);
            if (j13 > 0) {
                j11 = o(j13);
            } else {
                j11 = 0;
            }
            return o10 + j11 + o(0L);
        }
        throw new IllegalArgumentException("Nonnegative content length expected.");
    }

    private byte[] q(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Integer.toHexString(bArr.length));
        String a10 = BinaryUtils.a(this.f4911h.sign("AWS4-HMAC-SHA256-PAYLOAD\n" + this.f4907d + "\n" + this.f4908e + "\n" + this.f4910g + "\n" + BinaryUtils.a(this.f4911h.hash("")) + "\n" + BinaryUtils.a(this.f4911h.hash(bArr)), this.f4906c, SigningAlgorithm.HmacSHA256));
        this.f4910g = a10;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(";chunk-signature=");
        sb3.append(a10);
        sb2.append(sb3.toString());
        sb2.append("\r\n");
        try {
            String sb4 = sb2.toString();
            Charset charset = StringUtils.f6417a;
            byte[] bytes = sb4.getBytes(charset);
            byte[] bytes2 = "\r\n".getBytes(charset);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e10.getMessage(), e10);
        }
    }

    private boolean r() throws IOException {
        byte[] bArr = new byte[131072];
        int i10 = 0;
        while (i10 < 131072) {
            DecodedStreamBuffer decodedStreamBuffer = this.f4913j;
            if (decodedStreamBuffer != null && decodedStreamBuffer.b()) {
                bArr[i10] = this.f4913j.c();
                i10++;
            } else {
                int read = this.f4904a.read(bArr, i10, 131072 - i10);
                if (read == -1) {
                    break;
                }
                DecodedStreamBuffer decodedStreamBuffer2 = this.f4913j;
                if (decodedStreamBuffer2 != null) {
                    decodedStreamBuffer2.a(bArr, i10, read);
                }
                i10 += read;
            }
        }
        if (i10 == 0) {
            this.f4912i = new ChunkContentIterator(q(f4902m));
            return true;
        }
        if (i10 < 131072) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, 0, bArr2, 0, i10);
            bArr = bArr2;
        }
        this.f4912i = new ChunkContentIterator(q(bArr));
        return false;
    }

    @Override // com.amazonaws.internal.SdkInputStream
    protected InputStream m() {
        return this.f4904a;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i10) {
        try {
            l();
            if (this.f4914k) {
                if (this.f4904a.markSupported()) {
                    Log log = f4903n;
                    if (log.i()) {
                        log.h("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
                    }
                    this.f4904a.mark(Integer.MAX_VALUE);
                } else {
                    Log log2 = f4903n;
                    if (log2.i()) {
                        log2.h("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
                    }
                    this.f4913j = new DecodedStreamBuffer(this.f4905b);
                }
            } else {
                throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        if (read != -1) {
            Log log = f4903n;
            if (log.i()) {
                log.h("One byte read from the stream.");
            }
            return bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        }
        return read;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            l();
            this.f4912i = null;
            this.f4910g = this.f4909f;
            if (this.f4904a.markSupported()) {
                Log log = f4903n;
                if (log.i()) {
                    log.h("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
                }
                this.f4904a.reset();
            } else {
                Log log2 = f4903n;
                if (log2.i()) {
                    log2.h("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
                }
                DecodedStreamBuffer decodedStreamBuffer = this.f4913j;
                if (decodedStreamBuffer != null) {
                    decodedStreamBuffer.d();
                } else {
                    throw new IOException("Cannot reset the stream because the mark is not set.");
                }
            }
            this.f4912i = null;
            this.f4914k = true;
            this.f4915l = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        int read;
        if (j10 <= 0) {
            return 0L;
        }
        int min = (int) Math.min(262144L, j10);
        byte[] bArr = new byte[min];
        long j11 = j10;
        while (j11 > 0 && (read = read(bArr, 0, min)) >= 0) {
            j11 -= read;
        }
        return j10 - j11;
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i10, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.f4904a = null;
        this.f4914k = true;
        this.f4915l = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i10 = Math.max(awsChunkedEncodingInputStream.f4905b, i10);
            this.f4904a = awsChunkedEncodingInputStream.f4904a;
            this.f4913j = awsChunkedEncodingInputStream.f4913j;
        } else {
            this.f4904a = inputStream;
            this.f4913j = null;
        }
        if (i10 >= 131072) {
            this.f4905b = i10;
            this.f4906c = bArr;
            this.f4907d = str;
            this.f4908e = str2;
            this.f4909f = str3;
            this.f4910g = str3;
            this.f4911h = aWS4Signer;
            return;
        }
        throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        l();
        bArr.getClass();
        if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        ChunkContentIterator chunkContentIterator = this.f4912i;
        if (chunkContentIterator == null || !chunkContentIterator.a()) {
            if (this.f4915l) {
                return -1;
            }
            this.f4915l = r();
        }
        int b10 = this.f4912i.b(bArr, i10, i11);
        if (b10 > 0) {
            this.f4914k = false;
            Log log = f4903n;
            if (log.i()) {
                log.h(b10 + " byte read from the stream.");
            }
        }
        return b10;
    }
}
