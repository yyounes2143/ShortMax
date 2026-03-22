package com.google.android.gms.internal.p002authapi;

import android.app.PendingIntent;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbo  reason: invalid package */
/* loaded from: classes4.dex */
public interface zbo extends IInterface {
    void zbb(Status status, PendingIntent pendingIntent) throws RemoteException;
}
