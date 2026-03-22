package com.google.android.gms.internal.p002authapi;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbu  reason: invalid package */
/* loaded from: classes4.dex */
public interface zbu extends IInterface {
    void zbb(Status status, SavePasswordResult savePasswordResult) throws RemoteException;
}
