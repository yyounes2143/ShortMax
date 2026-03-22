package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzarh extends ByteArrayOutputStream {
    private final zzaqu zza;

    public zzarh(zzaqu zzaquVar, int i10) {
        this.zza = zzaquVar;
        ((ByteArrayOutputStream) this).buf = zzaquVar.zzb(Math.max(i10, 256));
    }

    private final void zza(int i10) {
        int i11 = ((ByteArrayOutputStream) this).count;
        if (i11 + i10 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        zzaqu zzaquVar = this.zza;
        int i12 = i11 + i10;
        byte[] zzb = zzaquVar.zzb(i12 + i12);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, zzb, 0, ((ByteArrayOutputStream) this).count);
        zzaquVar.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = zzb;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.zza.zza(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i10) {
        zza(1);
        super.write(i10);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i10, int i11) {
        zza(i11);
        super.write(bArr, i10, i11);
    }
}
