package com.amazonaws.mobile.auth.core.signin;

import android.app.Activity;
import android.view.View;
import com.amazonaws.mobile.auth.core.IdentityProvider;
/* loaded from: classes2.dex */
public interface SignInProvider extends IdentityProvider {
    View.OnClickListener b(Activity activity, View view, SignInProviderResultHandler signInProviderResultHandler);
}
