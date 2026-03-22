package ib;

import android.content.Context;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.ClientSettings;
import com.huawei.hms.support.account.request.AccountAuthParams;
/* compiled from: AccountAuthHmsClientBuilder.java */
/* loaded from: classes5.dex */
public class w extends AbstractClientBuilder<v, AccountAuthParams> {
    @Override // com.huawei.hms.common.internal.AbstractClientBuilder
    /* renamed from: a */
    public v buildClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        return new v(context, clientSettings, onConnectionFailedListener, connectionCallbacks);
    }
}
