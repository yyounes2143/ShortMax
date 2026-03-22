package com.huawei.hms.support.feature.service;

import android.content.Intent;
import com.huawei.hms.common.HuaweiApiInterface;
import ua.f;
/* loaded from: classes5.dex */
public interface AuthService extends HuaweiApiInterface {
    f<Void> cancelAuthorization();

    Intent getSignInIntent();

    f<Void> signOut();
}
