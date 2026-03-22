package com.google.android.gms.internal.p002authapi;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.identity.zba;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbw  reason: invalid package */
/* loaded from: classes4.dex */
final class zbw extends Api.AbstractClientBuilder {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        return new zbf(context, looper, (zba) obj, clientSettings, connectionCallbacks, onConnectionFailedListener);
    }
}
