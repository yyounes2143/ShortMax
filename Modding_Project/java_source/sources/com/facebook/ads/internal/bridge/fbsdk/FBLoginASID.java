package com.facebook.ads.internal.bridge.fbsdk;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
@Keep
/* loaded from: classes3.dex */
public class FBLoginASID {
    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public static String getFBLoginASID() {
        try {
            AccessToken.c cVar = AccessToken.f14731l;
            Object invoke = AccessToken.class.getDeclaredMethod("getCurrentAccessToken", new Class[0]).invoke(null, new Object[0]);
            if (invoke != null) {
                return (String) AccessToken.class.getDeclaredMethod("getUserId", new Class[0]).invoke(invoke, new Object[0]);
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
