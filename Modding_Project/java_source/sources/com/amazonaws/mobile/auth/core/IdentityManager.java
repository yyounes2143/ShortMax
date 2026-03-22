package com.amazonaws.mobile.auth.core;

import android.content.Context;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.mobile.auth.core.signin.SignInProvider;
import com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler;
import com.amazonaws.mobile.config.AWSConfiguration;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class IdentityManager {

    /* renamed from: l  reason: collision with root package name */
    private static IdentityManager f5070l;

    /* renamed from: a  reason: collision with root package name */
    private final Context f5071a;

    /* renamed from: b  reason: collision with root package name */
    private AWSConfiguration f5072b;

    /* renamed from: c  reason: collision with root package name */
    private final ClientConfiguration f5073c;

    /* renamed from: i  reason: collision with root package name */
    private AWSKeyValueStore f5079i;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f5074d = Executors.newFixedThreadPool(4);

    /* renamed from: e  reason: collision with root package name */
    private final CountDownLatch f5075e = new CountDownLatch(1);

    /* renamed from: f  reason: collision with root package name */
    private final Set<Class<? extends SignInProvider>> f5076f = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    private volatile IdentityProvider f5077g = null;

    /* renamed from: h  reason: collision with root package name */
    private final HashSet<SignInStateChangeListener> f5078h = new HashSet<>();

    /* renamed from: j  reason: collision with root package name */
    private boolean f5080j = true;

    /* renamed from: k  reason: collision with root package name */
    boolean f5081k = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class SignInProviderResultAdapter implements SignInProviderResultHandler {
    }

    public IdentityManager(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f5071a = applicationContext;
        this.f5072b = null;
        this.f5073c = null;
        this.f5079i = new AWSKeyValueStore(applicationContext, "com.amazonaws.android.auth", this.f5080j);
    }

    public static IdentityManager f() {
        return f5070l;
    }

    public static void j(IdentityManager identityManager) {
        f5070l = identityManager;
    }

    public void a(Class<? extends SignInProvider> cls) {
        this.f5076f.add(cls);
    }

    public void b(SignInStateChangeListener signInStateChangeListener) {
        synchronized (this.f5078h) {
            this.f5078h.add(signInStateChangeListener);
        }
    }

    public void c(boolean z10) {
        this.f5081k = z10;
    }

    public AWSConfiguration d() {
        return this.f5072b;
    }

    public AWSCredentialsProvider e() {
        return null;
    }

    public SignInProviderResultAdapter g() {
        return null;
    }

    public Collection<Class<? extends SignInProvider>> h() {
        return this.f5076f;
    }

    public void i(AWSConfiguration aWSConfiguration) {
        this.f5072b = aWSConfiguration;
    }

    public void k(boolean z10) {
        this.f5080j = z10;
        this.f5079i.r(z10);
    }
}
