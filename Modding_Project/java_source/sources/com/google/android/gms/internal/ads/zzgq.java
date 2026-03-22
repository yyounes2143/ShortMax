package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgq implements zzgj {
    private final Context zza;
    private final List zzb = new ArrayList();
    private final zzgj zzc;
    @Nullable
    private zzgj zzd;
    @Nullable
    private zzgj zze;
    @Nullable
    private zzgj zzf;
    @Nullable
    private zzgj zzg;
    @Nullable
    private zzgj zzh;
    @Nullable
    private zzgj zzi;
    @Nullable
    private zzgj zzj;
    @Nullable
    private zzgj zzk;

    public zzgq(Context context, zzgj zzgjVar) {
        this.zza = context.getApplicationContext();
        this.zzc = zzgjVar;
    }

    private final zzgj zzg() {
        if (this.zze == null) {
            zzgb zzgbVar = new zzgb(this.zza);
            this.zze = zzgbVar;
            zzh(zzgbVar);
        }
        return this.zze;
    }

    private final void zzh(zzgj zzgjVar) {
        int i10 = 0;
        while (true) {
            List list = this.zzb;
            if (i10 < list.size()) {
                zzgjVar.zzf((zzhj) list.get(i10));
                i10++;
            } else {
                return;
            }
        }
    }

    private static final void zzi(@Nullable zzgj zzgjVar, zzhj zzhjVar) {
        if (zzgjVar != null) {
            zzgjVar.zzf(zzhjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws IOException {
        zzgj zzgjVar = this.zzk;
        zzgjVar.getClass();
        return zzgjVar.zza(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws IOException {
        boolean z10;
        zzgj zzgjVar;
        if (this.zzk == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        Uri uri = zzgoVar.zza;
        String scheme = uri.getScheme();
        String str = zzex.zza;
        String scheme2 = uri.getScheme();
        if (!TextUtils.isEmpty(scheme2) && !Objects.equals(scheme2, "file")) {
            if ("asset".equals(scheme)) {
                this.zzk = zzg();
            } else if ("content".equals(scheme)) {
                if (this.zzf == null) {
                    zzgg zzggVar = new zzgg(this.zza);
                    this.zzf = zzggVar;
                    zzh(zzggVar);
                }
                this.zzk = this.zzf;
            } else if ("rtmp".equals(scheme)) {
                if (this.zzg == null) {
                    try {
                        zzgj zzgjVar2 = (zzgj) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                        this.zzg = zzgjVar2;
                        zzh(zzgjVar2);
                    } catch (ClassNotFoundException unused) {
                        zzea.zzf("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e10) {
                        throw new RuntimeException("Error instantiating RTMP extension", e10);
                    }
                    if (this.zzg == null) {
                        this.zzg = this.zzc;
                    }
                }
                this.zzk = this.zzg;
            } else if ("udp".equals(scheme)) {
                if (this.zzh == null) {
                    zzhl zzhlVar = new zzhl(2000);
                    this.zzh = zzhlVar;
                    zzh(zzhlVar);
                }
                this.zzk = this.zzh;
            } else if ("data".equals(scheme)) {
                if (this.zzi == null) {
                    zzgh zzghVar = new zzgh();
                    this.zzi = zzghVar;
                    zzh(zzghVar);
                }
                this.zzk = this.zzi;
            } else {
                if (!RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) && !"android.resource".equals(scheme)) {
                    zzgjVar = this.zzc;
                } else {
                    if (this.zzj == null) {
                        zzhh zzhhVar = new zzhh(this.zza);
                        this.zzj = zzhhVar;
                        zzh(zzhhVar);
                    }
                    zzgjVar = this.zzj;
                }
                this.zzk = zzgjVar;
            }
        } else {
            String path = uri.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.zzk = zzg();
            } else {
                if (this.zzd == null) {
                    zzgy zzgyVar = new zzgy();
                    this.zzd = zzgyVar;
                    zzh(zzgyVar);
                }
                this.zzk = this.zzd;
            }
        }
        return this.zzk.zzb(zzgoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        zzgj zzgjVar = this.zzk;
        if (zzgjVar == null) {
            return null;
        }
        return zzgjVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() throws IOException {
        zzgj zzgjVar = this.zzk;
        if (zzgjVar != null) {
            try {
                zzgjVar.zzd();
            } finally {
                this.zzk = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final Map zze() {
        zzgj zzgjVar = this.zzk;
        if (zzgjVar == null) {
            return Collections.emptyMap();
        }
        return zzgjVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzf(zzhj zzhjVar) {
        zzhjVar.getClass();
        this.zzc.zzf(zzhjVar);
        this.zzb.add(zzhjVar);
        zzi(this.zzd, zzhjVar);
        zzi(this.zze, zzhjVar);
        zzi(this.zzf, zzhjVar);
        zzi(this.zzg, zzhjVar);
        zzi(this.zzh, zzhjVar);
        zzi(this.zzi, zzhjVar);
        zzi(this.zzj, zzhjVar);
    }
}
