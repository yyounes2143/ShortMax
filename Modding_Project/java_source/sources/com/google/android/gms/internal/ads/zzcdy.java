package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdy extends zzgc implements zzhe {
    private static final Pattern zza = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference zzb = new AtomicReference();
    private final SSLSocketFactory zzc;
    private final int zzd;
    private final int zze;
    private final String zzf;
    private final zzhd zzg;
    private zzgo zzh;
    private HttpURLConnection zzi;
    private InputStream zzj;
    private boolean zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private int zzq;
    private final Set zzr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdy(String str, zzhj zzhjVar, int i10, int i11, int i12) {
        super(true);
        this.zzc = new zzcdx(this);
        this.zzr = new HashSet();
        zzdd.zzc(str);
        this.zzf = str;
        this.zzg = new zzhd();
        this.zzd = i10;
        this.zze = i11;
        this.zzq = i12;
        if (zzhjVar != null) {
            zzf(zzhjVar);
        }
    }

    private final void zzn() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unexpected error while disconnecting", e10);
            }
            this.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws zzha {
        try {
            if (this.zzo != this.zzm) {
                AtomicReference atomicReference = zzb;
                byte[] bArr2 = (byte[]) atomicReference.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j10 = this.zzo;
                    long j11 = this.zzm;
                    if (j10 != j11) {
                        int read = this.zzj.read(bArr2, 0, (int) Math.min(j11 - j10, bArr2.length));
                        if (!Thread.interrupted()) {
                            if (read != -1) {
                                this.zzo += read;
                                zzg(read);
                            } else {
                                throw new EOFException();
                            }
                        } else {
                            throw new InterruptedIOException();
                        }
                    } else {
                        atomicReference.set(bArr2);
                        break;
                    }
                }
            }
            if (i11 == 0) {
                return 0;
            }
            long j12 = this.zzn;
            if (j12 != -1) {
                long j13 = j12 - this.zzp;
                if (j13 != 0) {
                    i11 = (int) Math.min(i11, j13);
                }
                return -1;
            }
            int read2 = this.zzj.read(bArr, i10, i11);
            if (read2 == -1) {
                if (this.zzn == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.zzp += read2;
            zzg(read2);
            return read2;
        } catch (IOException e10) {
            throw new zzha(e10, this.zzh, 2000, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0108, code lost:
        if (r2 == 0) goto L89;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x027b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bc A[Catch: IOException -> 0x003c, TryCatch #4 {IOException -> 0x003c, blocks: (B:3:0x000f, B:4:0x0023, B:6:0x0029, B:8:0x0033, B:11:0x0040, B:12:0x0058, B:14:0x005e, B:21:0x0082, B:23:0x009c, B:24:0x00ae, B:25:0x00b3, B:27:0x00bc, B:28:0x00c3, B:41:0x00ee, B:94:0x023f, B:96:0x024a, B:98:0x025b, B:101:0x0264, B:102:0x0273, B:104:0x027b, B:105:0x0282, B:106:0x0283, B:107:0x0299), top: B:118:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x024a A[Catch: IOException -> 0x003c, TryCatch #4 {IOException -> 0x003c, blocks: (B:3:0x000f, B:4:0x0023, B:6:0x0029, B:8:0x0033, B:11:0x0040, B:12:0x0058, B:14:0x005e, B:21:0x0082, B:23:0x009c, B:24:0x00ae, B:25:0x00b3, B:27:0x00bc, B:28:0x00c3, B:41:0x00ee, B:94:0x023f, B:96:0x024a, B:98:0x025b, B:101:0x0264, B:102:0x0273, B:104:0x027b, B:105:0x0282, B:106:0x0283, B:107:0x0299), top: B:118:0x000f }] */
    @Override // com.google.android.gms.internal.ads.zzgj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzgo r21) throws com.google.android.gms.internal.ads.zzha {
        /*
            Method dump skipped, instructions count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdy.zzb(com.google.android.gms.internal.ads.zzgo):long");
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() throws zzha {
        try {
            InputStream inputStream = this.zzj;
            if (inputStream != null) {
                String str = zzex.zza;
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    throw new zzha(e10, this.zzh, 2000, 3);
                }
            }
        } finally {
            this.zzj = null;
            zzn();
            if (this.zzk) {
                this.zzk = false;
                zzh();
            }
            this.zzr.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgc, com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzi;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzm(int i10) {
        this.zzq = i10;
        for (Socket socket : this.zzr) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.zzq);
                } catch (SocketException e10) {
                    int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to update receive buffer size.", e10);
                }
            }
        }
    }
}
