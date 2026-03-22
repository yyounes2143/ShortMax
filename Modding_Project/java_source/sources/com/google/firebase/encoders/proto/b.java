package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import java.io.OutputStream;
/* compiled from: LengthCountingOutputStream.java */
/* loaded from: classes5.dex */
final class b extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f20956a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        return this.f20956a;
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        this.f20956a++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f20956a += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 >= 0 && i10 <= bArr.length && i11 >= 0 && (i12 = i10 + i11) <= bArr.length && i12 >= 0) {
            this.f20956a += i11;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
