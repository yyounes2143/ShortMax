package com.huawei.hms.support.account.service;

import android.content.Intent;
import com.huawei.hms.support.account.result.AccountIcon;
import com.huawei.hms.support.account.result.AssistTokenResult;
import com.huawei.hms.support.account.result.AuthAccount;
import com.huawei.hms.support.api.entity.account.GetAssistTokenRequest;
import com.huawei.hms.support.feature.service.AuthService;
import ua.f;
/* loaded from: classes5.dex */
public interface AccountAuthService extends AuthService {
    f<AssistTokenResult> getAssistToken(GetAssistTokenRequest getAssistTokenRequest);

    f<AccountIcon> getChannel();

    Intent getIndependentSignInIntent(String str);

    f<Void> logout();

    f<AuthAccount> silentSignIn();

    f<Void> startAssistLogin(String str);
}
