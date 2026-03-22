package com.google.android.gms.internal.p002authapi;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbk  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zbk extends zbb implements zbl {
    public zbk() {
        super("com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback");
    }

    @Override // com.google.android.gms.internal.p002authapi.zbb
    protected final boolean zba(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zbc.zbd(parcel);
            zbb((Status) zbc.zba(parcel, Status.CREATOR), (BeginSignInResult) zbc.zba(parcel, BeginSignInResult.CREATOR));
            return true;
        }
        return false;
    }
}
