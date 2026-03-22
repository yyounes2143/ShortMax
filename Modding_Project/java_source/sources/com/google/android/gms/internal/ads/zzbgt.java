package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzbgt extends IInterface {
    IObjectWrapper zzb(String str) throws RemoteException;

    void zzc() throws RemoteException;

    void zzd(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzdA(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzdB(@Nullable IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzdx(String str, IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzdy(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzdz(@Nullable zzbgm zzbgmVar) throws RemoteException;

    void zze(IObjectWrapper iObjectWrapper, int i10) throws RemoteException;
}
