package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgy extends zzgc {
    @Nullable
    private RandomAccessFile zza;
    @Nullable
    private Uri zzb;
    private long zzc;
    private boolean zzd;

    public zzgy() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws zzgx {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.zzc;
        if (j10 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.zza;
            String str = zzex.zza;
            int read = randomAccessFile.read(bArr, i10, (int) Math.min(j10, i11));
            if (read > 0) {
                this.zzc -= read;
                zzg(read);
            }
            return read;
        } catch (IOException e10) {
            throw new zzgx(e10, 2000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws zzgx {
        Uri uri = zzgoVar.zza;
        this.zzb = uri;
        zzi(zzgoVar);
        int i10 = 2006;
        try {
            String path = uri.getPath();
            if (path != null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
                this.zza = randomAccessFile;
                try {
                    long j10 = zzgoVar.zze;
                    randomAccessFile.seek(j10);
                    long j11 = zzgoVar.zzf;
                    if (j11 == -1) {
                        j11 = this.zza.length() - j10;
                    }
                    this.zzc = j11;
                    if (j11 >= 0) {
                        this.zzd = true;
                        zzj(zzgoVar);
                        return this.zzc;
                    }
                    throw new zzgx(null, null, 2008);
                } catch (IOException e10) {
                    throw new zzgx(e10, 2000);
                }
            }
            throw null;
        } catch (FileNotFoundException e11) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                if (!(e11.getCause() instanceof ErrnoException) || ((ErrnoException) e11.getCause()).errno != OsConstants.EACCES) {
                    i10 = 2005;
                }
                throw new zzgx(e11, i10);
            }
            throw new zzgx(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e11, 1004);
        } catch (SecurityException e12) {
            throw new zzgx(e12, 2006);
        } catch (RuntimeException e13) {
            throw new zzgx(e13, 2000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() throws zzgx {
        this.zzb = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.zza;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.zza = null;
                if (this.zzd) {
                    this.zzd = false;
                    zzh();
                }
            } catch (IOException e10) {
                throw new zzgx(e10, 2000);
            }
        } catch (Throwable th2) {
            this.zza = null;
            if (this.zzd) {
                this.zzd = false;
                zzh();
            }
            throw th2;
        }
    }
}
