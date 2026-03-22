package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes2.dex */
class DecodedStreamBuffer {

    /* renamed from: f  reason: collision with root package name */
    private static final Log f4952f = LogFactory.b(DecodedStreamBuffer.class);

    /* renamed from: a  reason: collision with root package name */
    private byte[] f4953a;

    /* renamed from: b  reason: collision with root package name */
    private int f4954b;

    /* renamed from: c  reason: collision with root package name */
    private int f4955c;

    /* renamed from: d  reason: collision with root package name */
    private int f4956d = -1;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4957e;

    public DecodedStreamBuffer(int i10) {
        this.f4953a = new byte[i10];
        this.f4954b = i10;
    }

    public void a(byte[] bArr, int i10, int i11) {
        this.f4956d = -1;
        int i12 = this.f4955c;
        if (i12 + i11 > this.f4954b) {
            Log log = f4952f;
            if (log.i()) {
                log.h("Buffer size " + this.f4954b + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
            }
            this.f4957e = true;
            return;
        }
        System.arraycopy(bArr, i10, this.f4953a, i12, i11);
        this.f4955c += i11;
    }

    public boolean b() {
        int i10 = this.f4956d;
        if (i10 != -1 && i10 < this.f4955c) {
            return true;
        }
        return false;
    }

    public byte c() {
        byte[] bArr = this.f4953a;
        int i10 = this.f4956d;
        this.f4956d = i10 + 1;
        return bArr[i10];
    }

    public void d() {
        if (!this.f4957e) {
            this.f4956d = 0;
            return;
        }
        throw new AmazonClientException("The input stream is not repeatable since the buffer size " + this.f4954b + " has been exceeded.");
    }
}
