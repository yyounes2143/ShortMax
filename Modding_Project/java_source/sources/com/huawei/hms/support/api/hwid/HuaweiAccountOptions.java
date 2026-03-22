package com.huawei.hms.support.api.hwid;

import android.accounts.Account;
import com.huawei.hms.api.Api;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
/* loaded from: classes5.dex */
public interface HuaweiAccountOptions {

    /* loaded from: classes5.dex */
    public interface HasAccountOptions extends Api.ApiOptions.HasOptions, Api.ApiOptions.NotRequiredOptions {
        Account getAccount();
    }

    /* loaded from: classes5.dex */
    public interface HasAuthHuaweiIdOptions extends Api.ApiOptions.HasOptions {
        AuthHuaweiId getAuthHuaweiId();
    }
}
