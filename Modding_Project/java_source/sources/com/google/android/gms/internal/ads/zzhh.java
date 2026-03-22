package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhh extends zzgc {
    private final Context zza;
    @Nullable
    private zzgo zzb;
    @Nullable
    private AssetFileDescriptor zzc;
    @Nullable
    private InputStream zzd;
    private long zze;
    private boolean zzf;

    public zzhh(Context context) {
        super(false);
        this.zza = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    private static int zzk(String str) throws zzhg {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new zzhg("Resource identifier must be an integer.", null, 1004);
        }
    }

    private static AssetFileDescriptor zzl(Context context, zzgo zzgoVar) throws zzhg {
        String host;
        Resources resourcesForApplication;
        int identifier;
        Uri normalizeScheme = zzgoVar.zza.normalizeScheme();
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, normalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() == 1) {
                identifier = zzk(pathSegments.get(0));
            } else {
                int size = pathSegments.size();
                throw new zzhg("rawresource:// URI must have exactly one path element, found " + size);
            }
        } else if (TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith(DomExceptionUtils.SEPARATOR)) {
                path = path.substring(1);
            }
            if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                host = context.getPackageName();
            } else {
                host = normalizeScheme.getHost();
            }
            if (host.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(host);
                } catch (PackageManager.NameNotFoundException e10) {
                    throw new zzhg("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e10, 2005);
                }
            }
            if (path.matches("\\d+")) {
                identifier = zzk(path);
            } else {
                identifier = resourcesForApplication.getIdentifier(host + ":" + path, "raw", null);
                if (identifier == 0) {
                    throw new zzhg("Resource not found.", null, 2005);
                }
            }
        } else {
            String scheme = normalizeScheme.getScheme();
            throw new zzhg("Unsupported URI scheme (" + scheme + "). Only android.resource is supported.", null, 1004);
        }
        try {
            AssetFileDescriptor openRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (openRawResourceFd != null) {
                return openRawResourceFd;
            }
            throw new zzhg("Resource is compressed: ".concat(String.valueOf(normalizeScheme)), null, 2000);
        } catch (Resources.NotFoundException e11) {
            throw new zzhg(null, e11, 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws zzhg {
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
                throw new zzhg(null, e10, 2000);
            }
        }
        InputStream inputStream = this.zzd;
        String str = zzex.zza;
        int read = inputStream.read(bArr, i10, i11);
        if (read == -1) {
            if (this.zze == -1) {
                return -1;
            }
            throw new zzhg("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.zze;
        if (j11 != -1) {
            this.zze = j11 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws zzhg {
        long j10;
        long min;
        this.zzb = zzgoVar;
        zzi(zzgoVar);
        AssetFileDescriptor zzl = zzl(this.zza, zzgoVar);
        this.zzc = zzl;
        long length = zzl.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.zzc.getFileDescriptor());
        this.zzd = fileInputStream;
        int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i10 != 0) {
            try {
                if (zzgoVar.zze > length) {
                    throw new zzhg(null, null, 2008);
                }
            } catch (zzhg e10) {
                throw e10;
            } catch (IOException e11) {
                throw new zzhg(null, e11, 2000);
            }
        }
        long startOffset = this.zzc.getStartOffset();
        long j11 = zzgoVar.zze;
        long skip = fileInputStream.skip(startOffset + j11) - startOffset;
        if (skip == j11) {
            if (i10 == 0) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.zze = -1L;
                    j10 = -1;
                } else {
                    j10 = channel.size() - channel.position();
                    this.zze = j10;
                    if (j10 < 0) {
                        throw new zzhg(null, null, 2008);
                    }
                }
            } else {
                j10 = length - skip;
                this.zze = j10;
                if (j10 < 0) {
                    throw new zzgk(2008);
                }
            }
            long j12 = zzgoVar.zzf;
            int i11 = (j12 > (-1L) ? 1 : (j12 == (-1L) ? 0 : -1));
            if (i11 != 0) {
                if (j10 == -1) {
                    min = j12;
                } else {
                    min = Math.min(j10, j12);
                }
                this.zze = min;
            }
            this.zzf = true;
            zzj(zzgoVar);
            if (i11 != 0) {
                return j12;
            }
            return this.zze;
        }
        throw new zzhg(null, null, 2008);
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        zzgo zzgoVar = this.zzb;
        if (zzgoVar != null) {
            return zzgoVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() throws zzhg {
        this.zzb = null;
        try {
            try {
                InputStream inputStream = this.zzd;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.zzd = null;
                try {
                    AssetFileDescriptor assetFileDescriptor = this.zzc;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                } catch (IOException e10) {
                    throw new zzhg(null, e10, 2000);
                }
            } finally {
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzh();
                }
            }
        } catch (IOException e11) {
            throw new zzhg(null, e11, 2000);
        }
    }
}
