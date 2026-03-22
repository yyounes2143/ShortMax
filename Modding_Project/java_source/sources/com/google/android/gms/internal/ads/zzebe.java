package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import androidx.autofill.HintConstants;
import com.google.android.gms.internal.ads.zzbcj;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzebe extends zzebf {
    private static final SparseArray zzb;
    private final Context zzc;
    private final zzcvb zzd;
    private final TelephonyManager zze;
    private final zzeaw zzf;
    private zzbcj.zzq zzg;

    static {
        SparseArray sparseArray = new SparseArray();
        zzb = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbcj.zzaf.zzd.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbcj.zzaf.zzd zzdVar = zzbcj.zzaf.zzd.CONNECTING;
        sparseArray.put(ordinal, zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbcj.zzaf.zzd.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbcj.zzaf.zzd zzdVar2 = zzbcj.zzaf.zzd.DISCONNECTED;
        sparseArray.put(ordinal2, zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbcj.zzaf.zzd.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzebe(Context context, zzcvb zzcvbVar, zzeaw zzeawVar, zzeas zzeasVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzeasVar, zzgVar);
        this.zzc = context;
        this.zzd = zzcvbVar;
        this.zzf = zzeawVar;
        this.zze = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzbcj.zzab zza(zzebe zzebeVar, Bundle bundle) {
        zzbcj.zzab.zzb zzbVar;
        zzbcj.zzab.zza zza = zzbcj.zzab.zza();
        int i10 = bundle.getInt("cnt", -2);
        int i11 = bundle.getInt("gnt", 0);
        if (i10 == -1) {
            zzebeVar.zzg = zzbcj.zzq.ENUM_TRUE;
        } else {
            zzebeVar.zzg = zzbcj.zzq.ENUM_FALSE;
            if (i10 != 0) {
                if (i10 != 1) {
                    zza.zzd(zzbcj.zzab.zzc.NETWORKTYPE_UNSPECIFIED);
                } else {
                    zza.zzd(zzbcj.zzab.zzc.WIFI);
                }
            } else {
                zza.zzd(zzbcj.zzab.zzc.CELL);
            }
            switch (i11) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzbVar = zzbcj.zzab.zzb.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    zzbVar = zzbcj.zzab.zzb.THREE_G;
                    break;
                case 13:
                    zzbVar = zzbcj.zzab.zzb.LTE;
                    break;
                default:
                    zzbVar = zzbcj.zzab.zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            zza.zzc(zzbVar);
        }
        return zza.zzbr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzbcj.zzaf.zzd zzb(zzebe zzebeVar, Bundle bundle) {
        return (zzbcj.zzaf.zzd) zzb.get(zzfdk.zza(zzfdk.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzbcj.zzaf.zzd.UNSPECIFIED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ byte[] zze(zzebe zzebeVar, boolean z10, ArrayList arrayList, zzbcj.zzab zzabVar, zzbcj.zzaf.zzd zzdVar) {
        boolean z11;
        zzbcj.zzaf.zza.C0296zza zzn = zzbcj.zzaf.zza.zzn();
        zzn.zzn(arrayList);
        Context context = zzebeVar.zzc;
        boolean z12 = false;
        if (Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        zzn.zzD(zzg(z11));
        zzn.zzE(com.google.android.gms.ads.internal.zzv.zzs().zzg(context, zzebeVar.zze));
        zzeaw zzeawVar = zzebeVar.zzf;
        zzn.zzM(zzeawVar.zze());
        zzn.zzL(zzeawVar.zzb());
        zzn.zzG(zzeawVar.zza());
        zzn.zzH(zzdVar);
        zzn.zzJ(zzabVar);
        zzn.zzK(zzebeVar.zzg);
        zzn.zzN(zzg(z10));
        zzn.zzP(zzeawVar.zzd());
        zzn.zzO(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        if (Settings.Global.getInt(context.getContentResolver(), "wifi_on", 0) != 0) {
            z12 = true;
        }
        zzn.zzQ(zzg(z12));
        return zzn.zzbr().zzaV();
    }

    private static final zzbcj.zzq zzg(boolean z10) {
        if (z10) {
            return zzbcj.zzq.ENUM_TRUE;
        }
        return zzbcj.zzq.ENUM_FALSE;
    }

    public final void zzd(boolean z10) {
        zzgdn.zzr(this.zzd.zzb(new Bundle()), new zzebd(this, z10), zzcaf.zzg);
    }
}
