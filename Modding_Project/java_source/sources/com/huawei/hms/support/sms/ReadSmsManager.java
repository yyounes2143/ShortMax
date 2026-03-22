package com.huawei.hms.support.sms;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import ib.i;
import ib.k;
import ua.f;
/* loaded from: classes5.dex */
public class ReadSmsManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Api<Api.ApiOptions.NoOptions> f22329a = new Api<>(HuaweiApiAvailability.HMS_API_NAME_ID);

    /* renamed from: b  reason: collision with root package name */
    private static final i f22330b = new i();

    public static f<Void> start(Activity activity) {
        return new k(activity, f22329a, (Api.ApiOptions.NoOptions) null, (AbstractClientBuilder) f22330b).d();
    }

    public static f<Void> startConsent(Activity activity, String str) {
        return new k(activity, f22329a, (Api.ApiOptions.NoOptions) null, (AbstractClientBuilder) f22330b).e(str);
    }

    public static f<Void> start(Context context) {
        return new k(context, f22329a, (Api.ApiOptions.NoOptions) null, f22330b).d();
    }
}
