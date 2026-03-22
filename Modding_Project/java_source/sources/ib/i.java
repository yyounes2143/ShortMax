package ib;

import android.content.Context;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.ClientSettings;
/* compiled from: ReadSmsClientBuilder.java */
/* loaded from: classes5.dex */
public class i extends AbstractClientBuilder<j, Api.ApiOptions.NoOptions> {
    @Override // com.huawei.hms.common.internal.AbstractClientBuilder
    /* renamed from: a */
    public j buildClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        return new j(context, clientSettings, onConnectionFailedListener, connectionCallbacks);
    }
}
