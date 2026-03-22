package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbhz extends zzayu implements zzbia {
    public zzbhz() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    public static zzbia zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        if (queryLocalInterface instanceof zzbia) {
            return (zzbia) queryLocalInterface;
        }
        return new zzbhy(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            com.google.android.gms.ads.internal.client.zzbx zzaf = com.google.android.gms.ads.internal.client.zzbw.zzaf(parcel.readStrongBinder());
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzayv.zzd(parcel);
            zze(zzaf, asInterface);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
