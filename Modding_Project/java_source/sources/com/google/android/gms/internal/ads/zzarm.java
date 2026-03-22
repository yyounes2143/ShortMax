package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzarm implements zzarn {
    private static final Logger zzb = Logger.getLogger(zzarm.class.getName());
    final ThreadLocal zza = new zzarl(this);

    public abstract zzarq zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzarn
    public final zzarq zzb(zzhgd zzhgdVar, zzarr zzarrVar) throws IOException {
        int zza;
        long j10;
        String str;
        long zzb2 = zzhgdVar.zzb();
        ThreadLocal threadLocal = this.zza;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        do {
            zza = zzhgdVar.zza((ByteBuffer) threadLocal.get());
            if (zza == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long zze = zzarp.zze((ByteBuffer) threadLocal.get());
                byte[] bArr = null;
                if (zze < 8 && zze > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Plausibility check failed: size < 8 (size = ");
                    sb2.append(zze);
                    sb2.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb2.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) threadLocal.get()).get(bArr2);
                try {
                    String str2 = new String(bArr2, "ISO-8859-1");
                    if (zze == 1) {
                        ThreadLocal threadLocal2 = this.zza;
                        ((ByteBuffer) threadLocal2.get()).limit(16);
                        zzhgdVar.zza((ByteBuffer) threadLocal2.get());
                        ((ByteBuffer) threadLocal2.get()).position(8);
                        j10 = zzarp.zzf((ByteBuffer) threadLocal2.get()) - 16;
                    } else if (zze == 0) {
                        j10 = zzhgdVar.zzc() - zzhgdVar.zzb();
                    } else {
                        j10 = zze - 8;
                    }
                    if ("uuid".equals(str2)) {
                        ThreadLocal threadLocal3 = this.zza;
                        ((ByteBuffer) threadLocal3.get()).limit(((ByteBuffer) threadLocal3.get()).limit() + 16);
                        zzhgdVar.zza((ByteBuffer) threadLocal3.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) threadLocal3.get()).position() - 16; position < ((ByteBuffer) threadLocal3.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) threadLocal3.get()).position() - 16)] = ((ByteBuffer) threadLocal3.get()).get(position);
                        }
                        j10 -= 16;
                    }
                    long j11 = j10;
                    if (zzarrVar instanceof zzarq) {
                        str = ((zzarq) zzarrVar).zza();
                    } else {
                        str = "";
                    }
                    zzarq zza2 = zza(str2, bArr, str);
                    ThreadLocal threadLocal4 = this.zza;
                    ((ByteBuffer) threadLocal4.get()).rewind();
                    zza2.zzb(zzhgdVar, (ByteBuffer) threadLocal4.get(), j11, this);
                    return zza2;
                } catch (UnsupportedEncodingException e10) {
                    throw new RuntimeException(e10);
                }
            }
        } while (zza >= 0);
        zzhgdVar.zze(zzb2);
        throw new EOFException();
    }
}
