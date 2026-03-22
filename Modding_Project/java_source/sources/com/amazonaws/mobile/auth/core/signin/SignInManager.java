package com.amazonaws.mobile.auth.core.signin;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import com.amazonaws.mobile.auth.core.IdentityManager;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class SignInManager {

    /* renamed from: c  reason: collision with root package name */
    private static final String f5082c = "SignInManager";

    /* renamed from: d  reason: collision with root package name */
    private static volatile SignInManager f5083d;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<? extends SignInProvider>, SignInProvider> f5084a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<SignInPermissionsHandler> f5085b = new SparseArray<>();

    /* loaded from: classes2.dex */
    private class SignInProviderResultAdapter implements SignInProviderResultHandler {
        static /* synthetic */ Activity a(SignInProviderResultAdapter signInProviderResultAdapter) {
            throw null;
        }
    }

    private SignInManager(Context context) {
        for (Class<? extends SignInProvider> cls : IdentityManager.f().h()) {
            try {
                SignInProvider newInstance = cls.newInstance();
                if (newInstance != null) {
                    newInstance.a(context, IdentityManager.f().d());
                    this.f5084a.put(cls, newInstance);
                    if (newInstance instanceof SignInPermissionsHandler) {
                        SignInPermissionsHandler signInPermissionsHandler = (SignInPermissionsHandler) newInstance;
                        this.f5085b.put(signInPermissionsHandler.a(), signInPermissionsHandler);
                    }
                }
            } catch (IllegalAccessException unused) {
                String str = f5082c;
                Log.e(str, "Unable to instantiate " + cls.getSimpleName() + " . Skipping this provider.");
            } catch (InstantiationException unused2) {
                String str2 = f5082c;
                Log.e(str2, "Unable to instantiate " + cls.getSimpleName() + " . Skipping this provider.");
            }
        }
        f5083d = this;
    }

    private SignInProvider a(Class<? extends SignInProvider> cls) {
        SignInProvider signInProvider = this.f5084a.get(cls);
        if (signInProvider != null) {
            return signInProvider;
        }
        throw new IllegalArgumentException("No such provider : " + cls.getName());
    }

    public static synchronized SignInManager b() {
        SignInManager signInManager;
        synchronized (SignInManager.class) {
            signInManager = f5083d;
        }
        return signInManager;
    }

    public static synchronized SignInManager c(Context context) {
        SignInManager signInManager;
        synchronized (SignInManager.class) {
            try {
                if (f5083d == null) {
                    f5083d = new SignInManager(context);
                }
                signInManager = f5083d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return signInManager;
    }

    public SignInProvider d() {
        String str = f5082c;
        Log.d(str, "Providers: " + Collections.singletonList(this.f5084a));
        for (SignInProvider signInProvider : this.f5084a.values()) {
            if (signInProvider.d()) {
                String str2 = f5082c;
                Log.d(str2, "Refreshing provider: " + signInProvider.c());
                return signInProvider;
            }
        }
        return null;
    }

    public View.OnClickListener e(Class<? extends SignInProvider> cls, View view) {
        SignInProvider a10 = a(cls);
        Activity a11 = SignInProviderResultAdapter.a(null);
        IdentityManager.f().g();
        return a10.b(a11, view, null);
    }
}
