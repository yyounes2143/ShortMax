package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbex;
import com.google.android.gms.internal.ads.zzbyx;
import com.google.android.gms.internal.ads.zzbze;
import com.google.android.gms.internal.ads.zzfhj;
import com.google.android.gms.internal.ads.zzfhu;
import com.google.android.gms.internal.ads.zzgdj;
import com.google.common.util.concurrent.e;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaq implements zzgdj {
    final /* synthetic */ e zza;
    final /* synthetic */ zzbze zzb;
    final /* synthetic */ zzbyx zzc;
    final /* synthetic */ zzfhj zzd;
    final /* synthetic */ zzau zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(zzau zzauVar, e eVar, zzbze zzbzeVar, zzbyx zzbyxVar, zzfhj zzfhjVar) {
        this.zza = eVar;
        this.zzb = zzbzeVar;
        this.zzc = zzbyxVar;
        this.zzd = zzfhjVar;
        Objects.requireNonNull(zzauVar);
        this.zze = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        String message = th2.getMessage();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzia)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "SignalGeneratorImpl.generateSignals");
        } else {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "SignalGeneratorImpl.generateSignals");
        }
        zzfhu zzs = zzau.zzs(this.zza, this.zzb);
        if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
            zzfhj zzfhjVar = this.zzd;
            zzfhjVar.zzh(th2);
            zzfhjVar.zzg(false);
            zzs.zza(zzfhjVar);
            zzs.zzh();
        }
        zzbyx zzbyxVar = this.zzc;
        if (zzbyxVar == null) {
            return;
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            zzbyxVar.zzb(message);
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        AtomicBoolean atomicBoolean;
        JSONObject jSONObject;
        boolean z10;
        boolean z11;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        VersionInfoParcel versionInfoParcel;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        zzbk zzbkVar = (zzbk) obj;
        zzfhu zzs = zzau.zzs(this.zza, this.zzb);
        atomicBoolean = this.zze.zzG;
        atomicBoolean.set(true);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhU)).booleanValue()) {
            try {
                zzbyx zzbyxVar = this.zzc;
                if (zzbyxVar != null) {
                    zzbyxVar.zzb("QueryInfo generation has been disabled.");
                }
            } catch (RemoteException e10) {
                String concat = "QueryInfo generation has been disabled.".concat(e10.toString());
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(concat);
            }
            if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                zzfhj zzfhjVar = this.zzd;
                zzfhjVar.zzc("QueryInfo generation has been disabled.");
                zzfhjVar.zzg(false);
                zzs.zza(zzfhjVar);
                zzs.zzh();
                return;
            }
            return;
        }
        try {
            try {
                if (zzbkVar == null) {
                    zzbyx zzbyxVar2 = this.zzc;
                    if (zzbyxVar2 != null) {
                        zzbyxVar2.zzc(null, null, null);
                    }
                    zzfhj zzfhjVar2 = this.zzd;
                    zzfhjVar2.zzg(true);
                    if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(zzfhjVar2);
                        zzs.zzh();
                        return;
                    }
                    return;
                }
                try {
                    if (!TextUtils.isEmpty(zzbkVar.zzc)) {
                        jSONObject = new JSONObject(zzbkVar.zzc);
                    } else {
                        jSONObject = new JSONObject(zzbkVar.zzb);
                    }
                    if (TextUtils.isEmpty(jSONObject.optString("request_id", ""))) {
                        int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("The request ID is empty in request JSON.");
                        zzbyx zzbyxVar3 = this.zzc;
                        if (zzbyxVar3 != null) {
                            zzbyxVar3.zzb("Internal error: request ID is empty in request JSON.");
                        }
                        zzfhj zzfhjVar3 = this.zzd;
                        zzfhjVar3.zzc("Request ID empty");
                        zzfhjVar3.zzg(false);
                        if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                            zzs.zza(zzfhjVar3);
                            zzs.zzh();
                            return;
                        }
                        return;
                    }
                    Bundle bundle = zzbkVar.zzf;
                    zzau zzauVar = this.zze;
                    z10 = zzauVar.zzu;
                    if (z10 && bundle != null) {
                        str5 = zzauVar.zzw;
                        if (bundle.getInt(str5, -1) == -1) {
                            str6 = zzauVar.zzw;
                            atomicInteger = zzauVar.zzx;
                            bundle.putInt(str6, atomicInteger.get());
                        }
                    }
                    z11 = zzauVar.zzt;
                    if (z11 && bundle != null) {
                        str = zzauVar.zzv;
                        if (TextUtils.isEmpty(bundle.getString(str))) {
                            str2 = zzauVar.zzz;
                            if (TextUtils.isEmpty(str2)) {
                                com.google.android.gms.ads.internal.util.zzs zzr = com.google.android.gms.ads.internal.zzv.zzr();
                                context = zzauVar.zzg;
                                versionInfoParcel = zzauVar.zzy;
                                zzauVar.zzz = zzr.zzc(context, versionInfoParcel.afmaVersion);
                            }
                            str3 = zzauVar.zzv;
                            str4 = zzauVar.zzz;
                            bundle.putString(str3, str4);
                        }
                    }
                    zzbyx zzbyxVar4 = this.zzc;
                    if (zzbyxVar4 != null) {
                        if (!TextUtils.isEmpty(zzbkVar.zzc)) {
                            zzbyxVar4.zzc(zzbkVar.zza, zzbkVar.zzc, bundle);
                        } else {
                            zzbyxVar4.zzc(zzbkVar.zza, zzbkVar.zzb, bundle);
                        }
                    }
                    this.zzd.zzg(true);
                    if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(this.zzd);
                        zzs.zzh();
                    }
                } catch (JSONException e11) {
                    int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to create JSON object from the request string.");
                    zzbyx zzbyxVar5 = this.zzc;
                    if (zzbyxVar5 != null) {
                        String obj2 = e11.toString();
                        zzbyxVar5.zzb("Internal error for request JSON: " + obj2);
                    }
                    zzfhj zzfhjVar4 = this.zzd;
                    zzfhjVar4.zzh(e11);
                    zzfhjVar4.zzg(false);
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e11, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(zzfhjVar4);
                        zzs.zzh();
                    }
                }
            } catch (RemoteException e12) {
                zzfhj zzfhjVar5 = this.zzd;
                zzfhjVar5.zzh(e12);
                zzfhjVar5.zzg(false);
                int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e12);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e12, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                    zzs.zza(this.zzd);
                    zzs.zzh();
                }
            }
        } catch (Throwable th2) {
            if (((Boolean) zzbex.zze.zze()).booleanValue() && zzs != null) {
                zzs.zza(this.zzd);
                zzs.zzh();
            }
            throw th2;
        }
    }
}
