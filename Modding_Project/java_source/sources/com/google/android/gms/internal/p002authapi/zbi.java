package com.google.android.gms.internal.p002authapi;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbi  reason: invalid package */
/* loaded from: classes4.dex */
public interface zbi extends IInterface {
    void zbb(Status status, AuthorizationResult authorizationResult) throws RemoteException;
}
