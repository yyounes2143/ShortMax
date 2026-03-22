package com.huawei.hms.support.account;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.account.common.AccountAuthException;
import com.huawei.hms.support.account.request.AccountAuthExtendedParams;
import com.huawei.hms.support.account.request.AccountAuthParams;
import com.huawei.hms.support.account.result.AccountAuthResult;
import com.huawei.hms.support.account.result.AuthAccount;
import com.huawei.hms.support.account.service.AccountAuthService;
import com.huawei.hms.support.account.service.AccountAuthServiceImpl;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.auth.Scope;
import ib.q;
import ib.t;
import ib.y;
import java.util.List;
import ua.f;
import ua.g;
/* loaded from: classes5.dex */
public final class AccountAuthManager {
    private static Intent a(Activity activity, List<Scope> list) {
        return getService(activity, y.d(list)).getSignInIntent();
    }

    public static void addAuthScopes(Activity activity, int i10, AccountAuthExtendedParams accountAuthExtendedParams) {
        if (accountAuthExtendedParams != null) {
            addAuthScopes(activity, i10, accountAuthExtendedParams.getExtendedScopes());
            return;
        }
        throw new NullPointerException("AccountAuthExtendedParams should not be null");
    }

    public static boolean containScopes(AuthAccount authAccount, AccountAuthExtendedParams accountAuthExtendedParams) {
        if (accountAuthExtendedParams == null) {
            return false;
        }
        return containScopes(authAccount, accountAuthExtendedParams.getExtendedScopes());
    }

    public static AuthAccount getAuthResult() {
        return y.i();
    }

    public static AuthAccount getAuthResultWithScopes(List<Scope> list) throws AccountAuthException {
        if (!q.a(list).booleanValue()) {
            AuthAccount i10 = y.i();
            if (i10 == null) {
                i10 = new AuthAccount();
            }
            i10.requestExtraScopes(list);
            return i10;
        }
        throw new AccountAuthException("ScopeList should not be empty");
    }

    public static AuthAccount getExtendedAuthResult(AccountAuthExtendedParams accountAuthExtendedParams) {
        if (accountAuthExtendedParams != null) {
            List<Scope> extendedScopes = accountAuthExtendedParams.getExtendedScopes();
            AuthAccount i10 = y.i();
            if (i10 == null) {
                i10 = new AuthAccount();
            }
            return i10.requestExtraScopes(extendedScopes);
        }
        throw new NullPointerException("AccountAuthExtendedParams should not be null");
    }

    public static AccountAuthService getService(Context context, AccountAuthParams accountAuthParams) {
        return new AccountAuthServiceImpl(context, accountAuthParams, 60900100);
    }

    public static f<AuthAccount> parseAuthResultFromIntent(Intent intent) {
        g gVar = new g();
        AccountAuthResult e10 = y.e(intent);
        if (e10 == null) {
            gVar.b(new ApiException(new Status(8)));
        } else if (e10.isSuccess() && e10.getAccount() != null) {
            gVar.c(e10.getAccount());
        } else {
            gVar.b(new ApiException(e10.getStatus()));
        }
        return gVar.a();
    }

    public static AccountAuthService getService(Activity activity, AccountAuthParams accountAuthParams) {
        return new AccountAuthServiceImpl(activity, accountAuthParams, 60900100);
    }

    public static boolean containScopes(AuthAccount authAccount, List<Scope> list) {
        if (authAccount == null) {
            return false;
        }
        if (q.a(list).booleanValue()) {
            return true;
        }
        return authAccount.getAuthorizedScopes().containsAll(list);
    }

    public static void addAuthScopes(Fragment fragment, int i10, AccountAuthExtendedParams accountAuthExtendedParams) {
        if (accountAuthExtendedParams != null) {
            addAuthScopes(fragment, i10, accountAuthExtendedParams.getExtendedScopes());
            return;
        }
        throw new NullPointerException("AccountAuthExtendedParams should not be null");
    }

    public static void addAuthScopes(Activity activity, int i10, List<Scope> list) {
        if (activity == null) {
            throw new NullPointerException("Activity should not be null");
        }
        if (list != null) {
            try {
                activity.startActivityForResult(a(activity, list), i10);
                return;
            } catch (Exception e10) {
                t.d("AccountAuthManager", "Exception：" + e10.getClass().getSimpleName(), true);
                return;
            }
        }
        throw new NullPointerException("ScopeList should not be null");
    }

    public static void addAuthScopes(Fragment fragment, int i10, List<Scope> list) {
        if (fragment == null) {
            throw new NullPointerException("Fragment should not be null");
        }
        if (list != null) {
            try {
                fragment.startActivityForResult(a(fragment.getActivity(), list), i10);
                return;
            } catch (Exception e10) {
                t.d("AccountAuthManager", "Exception：" + e10.getClass().getSimpleName(), true);
                return;
            }
        }
        throw new NullPointerException("ScopeList should not be null");
    }
}
