package com.huawei.hms.support.hwid.service;

import android.content.Intent;
import com.huawei.hms.support.feature.service.AuthService;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import ua.f;
/* loaded from: classes5.dex */
public interface HuaweiIdAuthService extends AuthService {
    Intent getSignInIntent(String str);

    f<AuthHuaweiId> silentSignIn();

    f<AuthHuaweiId> silentSignIn(String str);
}
