package com.huawei.hms.support.hwid;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.auth.Scope;
import com.huawei.hms.support.hwid.common.HuaweiIdAuthException;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthExtendedParams;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import com.huawei.hms.support.hwid.result.HuaweiIdAuthResult;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthService;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthServiceImpl;
import ib.q;
import ib.q0;
import ib.t;
import java.util.List;
import ua.f;
import ua.g;
/* loaded from: classes5.dex */
public final class HuaweiIdAuthManager {
    private static Intent a(Activity activity, List<Scope> list) {
        return getService(activity, q0.b(list)).getSignInIntent();
    }

    public static void addAuthScopes(Activity activity, int i10, HuaweiIdAuthExtendedParams huaweiIdAuthExtendedParams) {
        if (huaweiIdAuthExtendedParams != null) {
            addAuthScopes(activity, i10, huaweiIdAuthExtendedParams.getExtendedScopes());
            return;
        }
        throw new NullPointerException("HuaweiIdAuthExtendedParams should not be null");
    }

    public static boolean containScopes(AuthHuaweiId authHuaweiId, HuaweiIdAuthExtendedParams huaweiIdAuthExtendedParams) {
        if (huaweiIdAuthExtendedParams == null) {
            return false;
        }
        return containScopes(authHuaweiId, huaweiIdAuthExtendedParams.getExtendedScopes());
    }

    public static AuthHuaweiId getAuthResult() {
        return q0.f();
    }

    public static AuthHuaweiId getAuthResultWithScopes(List<Scope> list) throws HuaweiIdAuthException {
        if (!q.a(list).booleanValue()) {
            AuthHuaweiId f10 = q0.f();
            if (f10 == null) {
                f10 = new AuthHuaweiId();
            }
            f10.requestExtraScopes(list);
            return f10;
        }
        throw new HuaweiIdAuthException("ScopeList should not be empty");
    }

    public static AuthHuaweiId getExtendedAuthResult(HuaweiIdAuthExtendedParams huaweiIdAuthExtendedParams) {
        if (huaweiIdAuthExtendedParams != null) {
            List<Scope> extendedScopes = huaweiIdAuthExtendedParams.getExtendedScopes();
            AuthHuaweiId f10 = q0.f();
            if (f10 == null) {
                f10 = new AuthHuaweiId();
            }
            return f10.requestExtraScopes(extendedScopes);
        }
        throw new NullPointerException("HuaweiIdAuthExtendedParams should not be null");
    }

    public static HuaweiIdAuthService getService(Context context, HuaweiIdAuthParams huaweiIdAuthParams) {
        return new HuaweiIdAuthServiceImpl(context, huaweiIdAuthParams, 60900100);
    }

    public static f<AuthHuaweiId> parseAuthResultFromIntent(Intent intent) {
        g gVar = new g();
        HuaweiIdAuthResult c10 = q0.c(intent);
        if (c10 == null) {
            gVar.b(new ApiException(new Status(8)));
        } else if (c10.isSuccess() && c10.getHuaweiId() != null) {
            gVar.c(c10.getHuaweiId());
        } else {
            gVar.b(new ApiException(c10.getStatus()));
        }
        return gVar.a();
    }

    public static HuaweiIdAuthService getService(Activity activity, HuaweiIdAuthParams huaweiIdAuthParams) {
        return new HuaweiIdAuthServiceImpl(activity, huaweiIdAuthParams, 60900100);
    }

    public static boolean containScopes(AuthHuaweiId authHuaweiId, List<Scope> list) {
        if (authHuaweiId == null) {
            return false;
        }
        if (q.a(list).booleanValue()) {
            return true;
        }
        return authHuaweiId.getAuthorizedScopes().containsAll(list);
    }

    public static void addAuthScopes(Fragment fragment, int i10, HuaweiIdAuthExtendedParams huaweiIdAuthExtendedParams) {
        if (huaweiIdAuthExtendedParams != null) {
            addAuthScopes(fragment, i10, huaweiIdAuthExtendedParams.getExtendedScopes());
            return;
        }
        throw new NullPointerException("HuaweiIdAuthExtendedParams should not be null");
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
                t.d("HuaweiIdAuthManager", "Exception：" + e10.getClass().getSimpleName(), true);
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
                t.d("HuaweiIdAuthManager", "Exception：" + e10.getClass().getSimpleName(), true);
                return;
            }
        }
        throw new NullPointerException("ScopeList should not be null");
    }
}
