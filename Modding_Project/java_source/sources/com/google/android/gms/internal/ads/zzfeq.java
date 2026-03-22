package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SafeParcelable.Class(creator = "PoolConfigurationCreator")
/* loaded from: classes4.dex */
public final class zzfeq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfeq> CREATOR = new zzfer();
    public final Context zza;
    public final zzfen zzb;
    @SafeParcelable.Field(id = 2)
    public final int zzc;
    @SafeParcelable.Field(id = 3)
    public final int zzd;
    @SafeParcelable.Field(id = 4)
    public final int zze;
    @SafeParcelable.Field(id = 5)
    public final String zzf;
    public final int zzg;
    private final zzfen[] zzh;
    @SafeParcelable.Field(getter = "getFormatInt", id = 1)
    private final int zzi;
    @SafeParcelable.Field(getter = "getPoolDiscardStrategyInt", id = 6)
    private final int zzj;
    @SafeParcelable.Field(getter = "getPrecacheStartTriggerInt", id = 7)
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    @SafeParcelable.Constructor
    public zzfeq(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) int i11, @SafeParcelable.Param(id = 3) int i12, @SafeParcelable.Param(id = 4) int i13, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) int i14, @SafeParcelable.Param(id = 7) int i15) {
        zzfen[] values = zzfen.values();
        this.zzh = values;
        int[] zza = zzfeo.zza();
        this.zzl = zza;
        int[] zza2 = zzfep.zza();
        this.zzm = zza2;
        this.zza = null;
        this.zzi = i10;
        this.zzb = values[i10];
        this.zzc = i11;
        this.zzd = i12;
        this.zze = i13;
        this.zzf = str;
        this.zzj = i14;
        this.zzg = zza[i14];
        this.zzk = i15;
        int i16 = zza2[i15];
    }

    public static zzfeq zza(zzfen zzfenVar, Context context) {
        if (zzfenVar == zzfen.Rewarded) {
            return new zzfeq(context, zzfenVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgC)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgI)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgK)).intValue(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgM), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgE), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgG));
        } else if (zzfenVar == zzfen.Interstitial) {
            return new zzfeq(context, zzfenVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgD)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgJ)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgL)).intValue(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgN), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgF), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgH));
        } else if (zzfenVar == zzfen.AppOpen) {
            return new zzfeq(context, zzfenVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgQ)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgS)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgT)).intValue(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgO), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgP), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgR));
        } else {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.zzi;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i11);
        SafeParcelWriter.writeInt(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeInt(parcel, 4, this.zze);
        SafeParcelWriter.writeString(parcel, 5, this.zzf, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zzj);
        SafeParcelWriter.writeInt(parcel, 7, this.zzk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    private zzfeq(Context context, zzfen zzfenVar, int i10, int i11, int i12, String str, String str2, String str3) {
        int i13;
        this.zzh = zzfen.values();
        this.zzl = zzfeo.zza();
        this.zzm = zzfep.zza();
        this.zza = context;
        this.zzi = zzfenVar.ordinal();
        this.zzb = zzfenVar;
        this.zzc = i10;
        this.zzd = i11;
        this.zze = i12;
        this.zzf = str;
        if ("oldest".equals(str2)) {
            i13 = 1;
        } else {
            i13 = (!"lru".equals(str2) && "lfu".equals(str2)) ? 3 : 2;
        }
        this.zzg = i13;
        this.zzj = i13 - 1;
        "onAdClosed".equals(str3);
        this.zzk = 0;
    }
}
