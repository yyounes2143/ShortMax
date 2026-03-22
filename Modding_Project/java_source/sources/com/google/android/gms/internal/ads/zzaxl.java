package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaxl extends zzayk {
    private static final zzayl zzh = new zzayl();
    private final zzasp zzi;
    private final Context zzj;
    private final zzaup zzk;

    public zzaxl(zzawx zzawxVar, String str, String str2, zzast zzastVar, int i10, int i11, Context context, zzasg zzasgVar, zzasp zzaspVar, zzaup zzaupVar) {
        super(zzawxVar, "5l2BxulTXy+0Wovy9T0xreNvMgccuxz9Mfzqj2nIzDWreku9cf/hyHYbFP2gke7n", "rfz55QLsxMWzB2XqDjYWCElC2tXCWyMh5Hq3cP2KfWk=", zzastVar, i10, 27);
        this.zzj = context;
        this.zzi = zzaspVar;
        this.zzk = zzaupVar;
    }

    private final zzaum zzc() throws IllegalAccessException, InvocationTargetException {
        int zza;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcW)).booleanValue()) {
            zza = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdb)).intValue();
        } else {
            zza = this.zzi.zza();
        }
        zzaum zzaumVar = new zzaum((String) this.zze.invoke(null, this.zzj, Boolean.FALSE, ""));
        zzaup zzaupVar = this.zzk;
        if (zzaupVar != null && zzaupVar.zza() != null) {
            try {
                str = (String) zzaupVar.zza().get(zza, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            }
            zzaumVar.zza = str;
            return zzaumVar;
        }
        str = ExifInterface.LONGITUDE_EAST;
        zzaumVar.zza = str;
        return zzaumVar;
    }

    private final String zzd() {
        try {
            zzawx zzawxVar = this.zza;
            if (zzawxVar.zzk() != null) {
                zzawxVar.zzk().get();
            }
            zzatq zzc = zzawxVar.zzc();
            if (zzc != null && zzc.zzaf()) {
                return zzc.zzg();
            }
            return null;
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayk
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        int i10;
        String str;
        zzaum zzaumVar;
        zzaum zzaumVar2;
        zzayl zzaylVar = zzh;
        Context context = this.zzj;
        AtomicReference zza = zzaylVar.zza(context.getPackageName());
        synchronized (zza) {
            try {
                zzaum zzaumVar3 = (zzaum) zza.get();
                if (zzaumVar3 != null) {
                    if (!zzaxa.zzd(zzaumVar3.zza)) {
                        if (!zzaumVar3.zza.equals(ExifInterface.LONGITUDE_EAST)) {
                            if (zzaumVar3.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                            }
                            zzaumVar2 = (zzaum) zza.get();
                        }
                    }
                }
                if (!zzaxa.zzd(null)) {
                    i10 = 5;
                } else {
                    zzaxa.zzd(null);
                    i10 = 3;
                }
                if (this.zzk != null) {
                    zzaumVar = zzc();
                } else {
                    boolean z10 = false;
                    if (i10 == 3 && !this.zzi.zzd()) {
                        z10 = true;
                    }
                    Boolean valueOf = Boolean.valueOf(z10);
                    Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcK);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcJ)).booleanValue()) {
                        str = zzb();
                    } else {
                        str = null;
                    }
                    if (bool.booleanValue() && this.zza.zzo() && zzaxa.zzd(str)) {
                        str = zzd();
                    }
                    zzaum zzaumVar4 = new zzaum((String) this.zze.invoke(null, context, valueOf, str));
                    if (zzaxa.zzd(zzaumVar4.zza) || zzaumVar4.zza.equals(ExifInterface.LONGITUDE_EAST)) {
                        int i11 = i10 - 1;
                        if (i11 != 3) {
                            if (i11 == 4) {
                                throw null;
                            }
                        } else {
                            String zzd = zzd();
                            if (!zzaxa.zzd(zzd)) {
                                zzaumVar4.zza = zzd;
                            }
                        }
                    }
                    zzaumVar = zzaumVar4;
                }
                zza.set(zzaumVar);
                zzaumVar2 = (zzaum) zza.get();
            } finally {
            }
        }
        zzast zzastVar = this.zzd;
        synchronized (zzastVar) {
            if (zzaumVar2 != null) {
                try {
                    zzastVar.zzv(zzaumVar2.zza);
                    zzastVar.zzV(zzaumVar2.zzb);
                    zzastVar.zzX(zzaumVar2.zzc);
                    zzastVar.zzi(zzaumVar2.zzd);
                    zzastVar.zzu(zzaumVar2.zze);
                } finally {
                }
            }
        }
    }

    protected final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
            byte[] zzf = zzaxa.zzf((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcL));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzf)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzaxa.zzf((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcM)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zza.zzj();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals(ExifInterface.LATITUDE_SOUTH)) {
                return null;
            }
            final zzgeh zze = zzgeh.zze();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager$OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaym
                public final void onChecksumsReady(List list) {
                    int type;
                    byte[] value;
                    zzgeh zzgehVar = zzgeh.this;
                    if (list == null) {
                        zzgehVar.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            ApkChecksum a10 = a.a(list.get(i10));
                            type = a10.getType();
                            if (type == 8) {
                                value = a10.getValue();
                                zzgehVar.zzc(zzaxa.zzb(value));
                                return;
                            }
                        }
                        zzgehVar.zzc(null);
                    } catch (Throwable unused) {
                        zzgehVar.zzc(null);
                    }
                }
            });
            return (String) zze.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
