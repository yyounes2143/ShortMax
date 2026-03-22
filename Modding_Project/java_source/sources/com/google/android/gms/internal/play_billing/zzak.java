package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzak extends zzap implements zzam {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzak(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final int zza(int i10, String str, String str2) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(3);
        zzs.writeString(str);
        zzs.writeString(str2);
        Parcel zzt = zzt(5, zzs);
        int readInt = zzt.readInt();
        zzt.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final int zzc(int i10, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(i10);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzar.zzc(zzs, bundle);
        Parcel zzt = zzt(10, zzs);
        int readInt = zzt.readInt();
        zzt.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzd(int i10, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(9);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzar.zzc(zzs, bundle);
        Parcel zzt = zzt(902, zzs);
        Bundle bundle2 = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zze(int i10, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(9);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzar.zzc(zzs, bundle);
        Parcel zzt = zzt(12, zzs);
        Bundle bundle2 = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzf(int i10, String str, String str2, String str3, String str4) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(3);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzs.writeString(str3);
        zzs.writeString(null);
        Parcel zzt = zzt(3, zzs);
        Bundle bundle = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzg(int i10, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(i10);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzs.writeString(str3);
        zzs.writeString(null);
        zzar.zzc(zzs, bundle);
        Parcel zzt = zzt(8, zzs);
        Bundle bundle2 = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzh(int i10, String str, String str2, String str3) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(3);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzs.writeString(str3);
        Parcel zzt = zzt(4, zzs);
        Bundle bundle = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzi(int i10, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(i10);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzs.writeString(str3);
        zzar.zzc(zzs, bundle);
        Parcel zzt = zzt(11, zzs);
        Bundle bundle2 = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final Bundle zzj(int i10, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(i10);
        zzs.writeString(str);
        zzs.writeString(str2);
        zzar.zzc(zzs, bundle);
        zzar.zzc(zzs, bundle2);
        Parcel zzt = zzt(901, zzs);
        Bundle bundle3 = (Bundle) zzar.zza(zzt, Bundle.CREATOR);
        zzt.recycle();
        return bundle3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzk(int i10, String str, Bundle bundle, zzx zzxVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(21);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzxVar);
        zzv(1501, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzl(int i10, String str, Bundle bundle, zzz zzzVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(22);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzzVar);
        zzv(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DOWNLOAD_SIZE, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzm(int i10, String str, Bundle bundle, zzab zzabVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(21);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzabVar);
        zzv(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzn(int i10, String str, Bundle bundle, zzad zzadVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(18);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzadVar);
        zzu(1301, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzo(int i10, String str, Bundle bundle, zzaf zzafVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(22);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzafVar);
        zzv(MediaPlayer.MEDIA_PLAYER_OPTION_DECODE_AAC_THROUGH_FDKAAC, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzp(int i10, String str, Bundle bundle, zzah zzahVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(21);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzahVar);
        zzv(1401, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzq(int i10, String str, Bundle bundle, zzaj zzajVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(24);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzajVar);
        zzv(DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_BYTEMEDIANETLOADER, zzs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzam
    public final void zzr(int i10, String str, Bundle bundle, zzao zzaoVar) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(12);
        zzs.writeString(str);
        zzar.zzc(zzs, bundle);
        zzs.writeStrongBinder(zzaoVar);
        zzu(1201, zzs);
    }

    @Override // com.google.android.gms.internal.play_billing.zzam
    public final int zzw(int i10, String str, String str2) throws RemoteException {
        Parcel zzs = zzs();
        zzs.writeInt(i10);
        zzs.writeString(str);
        zzs.writeString(str2);
        Parcel zzt = zzt(1, zzs);
        int readInt = zzt.readInt();
        zzt.recycle();
        return readInt;
    }
}
