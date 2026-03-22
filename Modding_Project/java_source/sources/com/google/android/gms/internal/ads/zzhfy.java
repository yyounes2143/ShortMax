package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzhfy implements zzarq {
    private static final zzhgj zzg = zzhgj.zzb(zzhfy.class);
    protected final String zza;
    long zzd;
    zzhgd zzf;
    private ByteBuffer zzh;
    long zze = -1;
    boolean zzc = true;
    boolean zzb = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzhfy(String str) {
        this.zza = str;
    }

    private final synchronized void zzc() {
        String str;
        try {
            if (!this.zzc) {
                try {
                    zzhgj zzhgjVar = zzg;
                    String str2 = this.zza;
                    if (str2.length() != 0) {
                        str = "mem mapping ".concat(str2);
                    } else {
                        str = new String("mem mapping ");
                    }
                    zzhgjVar.zza(str);
                    this.zzh = this.zzf.zzd(this.zzd, this.zze);
                    this.zzc = true;
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzarq
    public final void zzb(zzhgd zzhgdVar, ByteBuffer byteBuffer, long j10, zzarn zzarnVar) throws IOException {
        this.zzd = zzhgdVar.zzb();
        byteBuffer.remaining();
        this.zze = j10;
        this.zzf = zzhgdVar;
        zzhgdVar.zze(zzhgdVar.zzb() + j10);
        this.zzc = false;
        this.zzb = false;
        zzf();
    }

    protected abstract void zze(ByteBuffer byteBuffer);

    public final synchronized void zzf() {
        String str;
        try {
            zzc();
            zzhgj zzhgjVar = zzg;
            String str2 = this.zza;
            if (str2.length() != 0) {
                str = "parsing details of ".concat(str2);
            } else {
                str = new String("parsing details of ");
            }
            zzhgjVar.zza(str);
            ByteBuffer byteBuffer = this.zzh;
            if (byteBuffer != null) {
                this.zzb = true;
                byteBuffer.rewind();
                zze(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.zzh = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
