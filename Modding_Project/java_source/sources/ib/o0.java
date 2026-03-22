package ib;

import android.content.Context;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.ClientSettings;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
/* compiled from: HuaweiIdAuthHmsClientBuilder.java */
/* loaded from: classes5.dex */
public class o0 extends AbstractClientBuilder<n0, HuaweiIdAuthParams> {
    @Override // com.huawei.hms.common.internal.AbstractClientBuilder
    /* renamed from: a */
    public n0 buildClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        return new n0(context, clientSettings, onConnectionFailedListener, connectionCallbacks);
    }
}
