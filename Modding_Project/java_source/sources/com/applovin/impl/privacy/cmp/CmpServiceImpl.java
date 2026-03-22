package com.applovin.impl.privacy.cmp;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.applovin.impl.k0;
import com.applovin.impl.k7;
import com.applovin.impl.privacy.cmp.a;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinCmpService;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes2.dex */
public class CmpServiceImpl implements AppLovinCmpService, a.InterfaceC0116a {

    /* renamed from: a  reason: collision with root package name */
    private final k f9242a;

    /* renamed from: e  reason: collision with root package name */
    private AppLovinCmpError f9246e;

    /* renamed from: f  reason: collision with root package name */
    private e f9247f;

    /* renamed from: g  reason: collision with root package name */
    private f f9248g;

    /* renamed from: c  reason: collision with root package name */
    private final Object f9244c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private d f9245d = d.NONE;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.privacy.cmp.a f9243b = c();

    /* loaded from: classes2.dex */
    class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppLovinCmpService.OnCompletedListener f9249a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f9250b;

        /* renamed from: com.applovin.impl.privacy.cmp.CmpServiceImpl$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0115a implements f {
            C0115a() {
            }

            @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.f
            public void a(AppLovinCmpError appLovinCmpError) {
                a.this.f9249a.onCompleted(appLovinCmpError);
            }
        }

        a(AppLovinCmpService.OnCompletedListener onCompletedListener, Activity activity) {
            this.f9249a = onCompletedListener;
            this.f9250b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            if (appLovinCmpError != null) {
                this.f9249a.onCompleted(appLovinCmpError);
            } else {
                CmpServiceImpl.this.showCmp(this.f9250b, new C0115a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f9253a;

        b(Activity activity) {
            this.f9253a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            CmpServiceImpl.this.f9243b.b(this.f9253a, CmpServiceImpl.this.a(), CmpServiceImpl.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f9255a;

        c(Activity activity) {
            this.f9255a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            CmpServiceImpl.this.f9243b.a(this.f9255a, CmpServiceImpl.this.a(), CmpServiceImpl.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum d {
        NONE,
        LOADING,
        COMPLETED
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(AppLovinCmpError appLovinCmpError);
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(AppLovinCmpError appLovinCmpError);
    }

    public CmpServiceImpl(k kVar) {
        this.f9242a = kVar;
    }

    private com.applovin.impl.privacy.cmp.a c() {
        if (k7.a("com.google.android.ump.ConsentForm")) {
            return new com.applovin.impl.privacy.cmp.a(this.f9242a);
        }
        if (this.f9242a.y().j()) {
            o.h("AppLovinSdk", "Could not load Google UMP. Please add the Google User Messaging Platform SDK into your application. Instructions can be found here: https://developers.applovin.com/en/android/overview/terms-and-privacy-policy-flow#enabling-google-ump");
            return null;
        }
        return null;
    }

    private void d() {
        if (!hasSupportedCmp()) {
            return;
        }
        this.f9243b.c();
    }

    @Override // com.applovin.sdk.AppLovinCmpService
    public boolean hasSupportedCmp() {
        if (this.f9243b != null) {
            return true;
        }
        return false;
    }

    public void loadCmp(Activity activity, e eVar) {
        a(activity, eVar);
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0116a
    public void onFlowHidden(Bundle bundle) {
        b((AppLovinCmpError) null);
        b();
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0116a
    public void onFlowLoadFailed(CmpErrorImpl cmpErrorImpl) {
        b();
        synchronized (this.f9244c) {
            try {
                if (this.f9247f == null) {
                    this.f9245d = d.COMPLETED;
                    this.f9246e = cmpErrorImpl;
                    return;
                }
                this.f9245d = d.NONE;
                a(cmpErrorImpl);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0116a
    public void onFlowLoaded(Bundle bundle) {
        synchronized (this.f9244c) {
            try {
                if (this.f9247f == null) {
                    this.f9245d = d.COMPLETED;
                    return;
                }
                this.f9245d = d.NONE;
                a((AppLovinCmpError) null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0116a
    public void onFlowShowFailed(CmpErrorImpl cmpErrorImpl) {
        b(cmpErrorImpl);
        b();
    }

    public void preloadCmp(Activity activity) {
        a(activity, null);
    }

    public void showCmp(Activity activity, f fVar) {
        b bVar = new b(activity);
        this.f9248g = fVar;
        if (this.f9243b.e()) {
            AppLovinSdkUtils.runOnUiThread(bVar);
        } else {
            bVar.run();
        }
    }

    @Override // com.applovin.sdk.AppLovinCmpService
    public void showCmpForExistingUser(@NonNull Activity activity, @NonNull AppLovinCmpService.OnCompletedListener onCompletedListener) {
        this.f9242a.O();
        if (o.a()) {
            o O = this.f9242a.O();
            O.a("AppLovinCmpService", "showCmpForExistingUser(activity=" + activity + ", completedListener=" + onCompletedListener + ")");
        }
        if (!hasSupportedCmp()) {
            onCompletedListener.onCompleted(new CmpErrorImpl(AppLovinCmpError.Code.INTEGRATION_ERROR, "A supported CMP is not integrated"));
            return;
        }
        d();
        loadCmp(activity, new a(onCompletedListener, activity));
    }

    @NonNull
    public String toString() {
        return "[CmpService]";
    }

    private void a(AppLovinCmpError appLovinCmpError) {
        e eVar = this.f9247f;
        if (eVar == null) {
            return;
        }
        eVar.a(appLovinCmpError);
        this.f9247f = null;
        this.f9246e = null;
    }

    private void b(AppLovinCmpError appLovinCmpError) {
        f fVar = this.f9248g;
        if (fVar == null) {
            return;
        }
        fVar.a(appLovinCmpError);
        this.f9248g = null;
    }

    private void b() {
        com.applovin.impl.privacy.cmp.a aVar = this.f9243b;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }

    private void a(Activity activity, e eVar) {
        boolean z10;
        if (!hasSupportedCmp()) {
            if (eVar != null) {
                eVar.a(new CmpErrorImpl(AppLovinCmpError.Code.INTEGRATION_ERROR, "A supported CMP is not integrated"));
                return;
            }
            return;
        }
        synchronized (this.f9244c) {
            if (eVar != null) {
                try {
                    this.f9247f = eVar;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            d dVar = this.f9245d;
            d dVar2 = d.NONE;
            if (dVar == dVar2) {
                this.f9245d = d.LOADING;
                z10 = false;
            } else if (dVar == d.LOADING) {
                return;
            } else {
                this.f9245d = dVar2;
                z10 = true;
            }
            if (z10) {
                a(this.f9246e);
                return;
            }
            c cVar = new c(activity);
            if (this.f9243b.d()) {
                AppLovinSdkUtils.runOnUiThread(cVar);
            } else {
                cVar.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k0 a() {
        return new k0(this.f9242a.y().d());
    }
}
