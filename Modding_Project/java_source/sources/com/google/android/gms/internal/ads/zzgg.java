package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgg extends zzgc {
    private final ContentResolver zza;
    @Nullable
    private Uri zzb;
    @Nullable
    private AssetFileDescriptor zzc;
    @Nullable
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzgg(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws zzgf {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.zze;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new zzgf(e10, 2000);
            }
        }
        FileInputStream fileInputStream = this.zzd;
        String str = zzex.zza;
        int read = fileInputStream.read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.zze;
        if (j11 != -1) {
            this.zze = j11 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws zzgf {
        int i10;
        AssetFileDescriptor openAssetFileDescriptor;
        long j10;
        long min;
        try {
            try {
                Uri normalizeScheme = zzgoVar.zza.normalizeScheme();
                this.zzb = normalizeScheme;
                zzi(zzgoVar);
                if (Objects.equals(normalizeScheme.getScheme(), "content")) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = this.zza.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = this.zza.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.zzc = openAssetFileDescriptor;
                if (openAssetFileDescriptor != null) {
                    long length = openAssetFileDescriptor.getLength();
                    FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                    this.zzd = fileInputStream;
                    int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                    if (i11 != 0 && zzgoVar.zze > length) {
                        throw new zzgf(null, 2008);
                    }
                    long startOffset = openAssetFileDescriptor.getStartOffset();
                    long j11 = zzgoVar.zze;
                    long skip = fileInputStream.skip(startOffset + j11) - startOffset;
                    if (skip == j11) {
                        if (i11 == 0) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size == 0) {
                                this.zze = -1L;
                                j10 = -1;
                            } else {
                                j10 = size - channel.position();
                                this.zze = j10;
                                if (j10 < 0) {
                                    throw new zzgf(null, 2008);
                                }
                            }
                        } else {
                            j10 = length - skip;
                            this.zze = j10;
                            if (j10 < 0) {
                                throw new zzgf(null, 2008);
                            }
                        }
                        long j12 = zzgoVar.zzf;
                        int i12 = (j12 > (-1L) ? 1 : (j12 == (-1L) ? 0 : -1));
                        if (i12 != 0) {
                            if (j10 == -1) {
                                min = j12;
                            } else {
                                min = Math.min(j10, j12);
                            }
                            this.zze = min;
                        }
                        this.zzf = true;
                        zzj(zzgoVar);
                        if (i12 != 0) {
                            return j12;
                        }
                        return this.zze;
                    }
                    throw new zzgf(null, 2008);
                }
                i10 = 2000;
                try {
                    throw new zzgf(new IOException("Could not open file descriptor for: " + String.valueOf(normalizeScheme)), 2000);
                } catch (IOException e10) {
                    e = e10;
                    if (true == (e instanceof FileNotFoundException)) {
                        i10 = 2005;
                    }
                    throw new zzgf(e, i10);
                }
            } catch (IOException e11) {
                e = e11;
                i10 = 2000;
            }
        } catch (zzgf e12) {
            throw e12;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() throws zzgf {
        this.zzb = null;
        try {
            try {
                FileInputStream fileInputStream = this.zzd;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor = this.zzc;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                } catch (IOException e10) {
                    throw new zzgf(e10, 2000);
                }
            } finally {
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzh();
                }
            }
        } catch (IOException e11) {
            throw new zzgf(e11, 2000);
        }
    }
}
