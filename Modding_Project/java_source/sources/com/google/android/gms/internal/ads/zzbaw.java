package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzbaw extends IInterface {
    long zze() throws RemoteException;

    com.google.android.gms.ads.internal.client.zzbx zzf() throws RemoteException;

    @Nullable
    com.google.android.gms.ads.internal.client.zzea zzg() throws RemoteException;

    @Nullable
    String zzh() throws RemoteException;

    void zzi(boolean z10) throws RemoteException;

    void zzj(com.google.android.gms.ads.internal.client.zzdt zzdtVar) throws RemoteException;

    void zzk(long j10) throws RemoteException;

    void zzl(IObjectWrapper iObjectWrapper, zzbbd zzbbdVar) throws RemoteException;
}
