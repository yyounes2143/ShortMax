package com.amazonaws.mobile.auth.core;

import android.content.Context;
import com.amazonaws.mobile.config.AWSConfiguration;
/* loaded from: classes2.dex */
public interface IdentityProvider {
    void a(Context context, AWSConfiguration aWSConfiguration);

    String c();

    boolean d();

    String e();

    String getToken();
}
