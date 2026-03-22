package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public abstract class zzac extends zzaq implements zzad {
    public zzac() {
        super("com.android.vending.billing.IInAppBillingGetBillingConfigCallback");
    }

    @Override // com.google.android.gms.internal.play_billing.zzaq
    protected final boolean zzb(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zzar.zzb(parcel);
            zza((Bundle) zzar.zza(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
