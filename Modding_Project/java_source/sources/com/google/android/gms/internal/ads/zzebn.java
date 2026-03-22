package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbcj;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzebn {
    private final zzbcc zza;
    private final Context zzb;
    private final zzeas zzc;
    private final VersionInfoParcel zzd;

    public zzebn(Context context, VersionInfoParcel versionInfoParcel, zzbcc zzbccVar, zzeas zzeasVar) {
        this.zzb = context;
        this.zzd = versionInfoParcel;
        this.zza = zzbccVar;
        this.zzc = zzeasVar;
    }

    public static /* synthetic */ Void zza(zzebn zzebnVar, boolean z10, SQLiteDatabase sQLiteDatabase) {
        if (z10) {
            zzebnVar.zzb.deleteDatabase("OfflineUpload.db");
        } else {
            ArrayList arrayList = new ArrayList();
            Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(zzbcj.zzaf.zza.zzx(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
                } catch (zzgzw e10) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to deserialize proto from offline signals database:");
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(e10.getMessage());
                }
            }
            query.close();
            Context context = zzebnVar.zzb;
            zzbcj.zzaf.zzc zzi = zzbcj.zzaf.zzi();
            zzi.zzv(context.getPackageName());
            zzi.zzy(Build.MODEL);
            zzi.zzA(zzebh.zza(sQLiteDatabase, 0));
            zzi.zzh(arrayList);
            zzi.zzE(zzebh.zza(sQLiteDatabase, 1));
            zzi.zzx(zzebh.zza(sQLiteDatabase, 3));
            zzi.zzF(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            int i11 = 2;
            zzi.zzB(zzebh.zzb(sQLiteDatabase, 2));
            final zzbcj.zzaf zzbr = zzi.zzbr();
            int size = arrayList.size();
            long j10 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                zzbcj.zzaf.zza zzaVar = (zzbcj.zzaf.zza) arrayList.get(i12);
                if (zzaVar.zzk() == zzbcj.zzq.ENUM_TRUE && zzaVar.zze() > j10) {
                    j10 = zzaVar.zze();
                }
            }
            if (j10 != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, Long.valueOf(j10));
                sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
            }
            zzbcc zzbccVar = zzebnVar.zza;
            zzbccVar.zzb(new zzbcb() { // from class: com.google.android.gms.internal.ads.zzebl
                @Override // com.google.android.gms.internal.ads.zzbcb
                public final void zza(zzbcj.zzt.zza zzaVar2) {
                    zzaVar2.zzW(zzbcj.zzaf.this);
                }
            });
            VersionInfoParcel versionInfoParcel = zzebnVar.zzd;
            zzbcj.zzar.zza zzd = zzbcj.zzar.zzd();
            zzd.zzg(versionInfoParcel.buddyApkVersion);
            zzd.zzi(versionInfoParcel.clientJarVersion);
            if (true == versionInfoParcel.isClientJar) {
                i11 = 0;
            }
            zzd.zzh(i11);
            final zzbcj.zzar zzbr2 = zzd.zzbr();
            zzbccVar.zzb(new zzbcb() { // from class: com.google.android.gms.internal.ads.zzebm
                @Override // com.google.android.gms.internal.ads.zzbcb
                public final void zza(zzbcj.zzt.zza zzaVar2) {
                    zzbcj.zzm.zza zzbM = zzaVar2.zzg().zzbM();
                    zzbM.zzw(zzbcj.zzar.this);
                    zzaVar2.zzK(zzbM);
                }
            });
            zzbccVar.zzc(10004);
            zzebh.zze(sQLiteDatabase);
        }
        return null;
    }

    public final void zzb(final boolean z10) {
        try {
            this.zzc.zza(new zzfge() { // from class: com.google.android.gms.internal.ads.zzebk
                @Override // com.google.android.gms.internal.ads.zzfge
                public final Object zza(Object obj) {
                    zzebn.zza(zzebn.this, z10, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e10) {
            String valueOf = String.valueOf(e10.getMessage());
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in offline signals database startup: ".concat(valueOf));
        }
    }
}
