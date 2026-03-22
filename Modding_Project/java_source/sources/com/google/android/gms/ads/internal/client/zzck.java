package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbaw;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbwv;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzck extends IInterface {
    int zze(int i10, String str) throws RemoteException;

    Bundle zzf(int i10) throws RemoteException;

    @Nullable
    zzbaw zzg(String str) throws RemoteException;

    @Nullable
    zzbaw zzh(String str) throws RemoteException;

    @Nullable
    zzbx zzi(String str) throws RemoteException;

    @Nullable
    zzbx zzj(String str) throws RemoteException;

    @Nullable
    zzfv zzk(int i10, String str) throws RemoteException;

    @Nullable
    zzbwv zzl(String str) throws RemoteException;

    @Nullable
    zzbwv zzm(String str) throws RemoteException;

    void zzn(int i10) throws RemoteException;

    void zzo(zzbpq zzbpqVar) throws RemoteException;

    void zzp(List list, zzce zzceVar) throws RemoteException;

    boolean zzq(int i10, String str) throws RemoteException;

    boolean zzr(int i10, String str) throws RemoteException;

    boolean zzs(String str) throws RemoteException;

    boolean zzt(String str) throws RemoteException;

    boolean zzu(String str) throws RemoteException;

    boolean zzv(String str, zzfv zzfvVar, @Nullable zzch zzchVar) throws RemoteException;
}
