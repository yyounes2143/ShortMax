package com.facebook.appevents.ondeviceprocessing;

import a2.h;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.j;
import com.facebook.internal.u0;
import com.facebook.v;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import u4.a;
/* compiled from: RemoteServiceWrapper.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class RemoteServiceWrapper {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final RemoteServiceWrapper f15185a = new RemoteServiceWrapper();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15186b = RemoteServiceWrapper.class.getSimpleName();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f15187c;

    /* compiled from: RemoteServiceWrapper.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum EventType {
        MOBILE_APP_INSTALL("MOBILE_APP_INSTALL"),
        CUSTOM_APP_EVENTS("CUSTOM_APP_EVENTS");
        
        @NotNull
        private final String eventType;

        EventType(String str) {
            this.eventType = str;
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.eventType;
        }
    }

    /* compiled from: RemoteServiceWrapper.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum ServiceResult {
        OPERATION_SUCCESS,
        SERVICE_NOT_AVAILABLE,
        SERVICE_ERROR
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RemoteServiceWrapper.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements ServiceConnection {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final CountDownLatch f15188a = new CountDownLatch(1);
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private IBinder f15189b;

        @Nullable
        public final IBinder a() throws InterruptedException {
            this.f15188a.await(5L, TimeUnit.SECONDS);
            return this.f15189b;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(@NotNull ComponentName name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.f15188a.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@NotNull ComponentName name, @NotNull IBinder serviceBinder) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(serviceBinder, "serviceBinder");
            this.f15189b = serviceBinder;
            this.f15188a.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@NotNull ComponentName name) {
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    private RemoteServiceWrapper() {
    }

    private final Intent a(Context context) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                Intent intent = new Intent("ReceiverService");
                intent.setPackage(FbValidationUtils.FB_PACKAGE);
                if (packageManager.resolveService(intent, 0) != null && j.a(context, FbValidationUtils.FB_PACKAGE)) {
                    return intent;
                }
                Intent intent2 = new Intent("ReceiverService");
                intent2.setPackage(FbValidationUtils.DEBUG_FB_PACKAGE);
                if (packageManager.resolveService(intent2, 0) != null) {
                    if (j.a(context, FbValidationUtils.DEBUG_FB_PACKAGE)) {
                        return intent2;
                    }
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final boolean b() {
        boolean z10;
        if (o4.a.d(RemoteServiceWrapper.class)) {
            return false;
        }
        try {
            if (f15187c == null) {
                if (f15185a.a(v.l()) != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                f15187c = Boolean.valueOf(z10);
            }
            Boolean bool = f15187c;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Throwable th2) {
            o4.a.b(th2, RemoteServiceWrapper.class);
            return false;
        }
    }

    @NotNull
    public static final ServiceResult c(@NotNull String applicationId, @NotNull List<AppEvent> appEvents) {
        if (o4.a.d(RemoteServiceWrapper.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            return f15185a.d(EventType.CUSTOM_APP_EVENTS, applicationId, appEvents);
        } catch (Throwable th2) {
            o4.a.b(th2, RemoteServiceWrapper.class);
            return null;
        }
    }

    private final ServiceResult d(EventType eventType, String str, List<AppEvent> list) {
        ServiceResult serviceResult;
        String str2;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            ServiceResult serviceResult2 = ServiceResult.SERVICE_NOT_AVAILABLE;
            h.b();
            Context l10 = v.l();
            Intent a10 = a(l10);
            if (a10 != null) {
                a aVar = new a();
                if (l10.bindService(a10, aVar, 1)) {
                    try {
                        IBinder a11 = aVar.a();
                        if (a11 != null) {
                            u4.a i10 = a.AbstractBinderC0941a.i(a11);
                            Bundle a12 = b.a(eventType, str, list);
                            if (a12 != null) {
                                i10.g(a12);
                                String str3 = f15186b;
                                u0.k0(str3, "Successfully sent events to the remote service: " + a12);
                            }
                            serviceResult2 = ServiceResult.OPERATION_SUCCESS;
                        }
                        l10.unbindService(aVar);
                        u0.k0(f15186b, "Unbound from the remote service");
                        return serviceResult2;
                    } catch (RemoteException e10) {
                        serviceResult = ServiceResult.SERVICE_ERROR;
                        str2 = f15186b;
                        u0.j0(str2, e10);
                        l10.unbindService(aVar);
                        u0.k0(str2, "Unbound from the remote service");
                        return serviceResult;
                    } catch (InterruptedException e11) {
                        serviceResult = ServiceResult.SERVICE_ERROR;
                        str2 = f15186b;
                        u0.j0(str2, e11);
                        l10.unbindService(aVar);
                        u0.k0(str2, "Unbound from the remote service");
                        return serviceResult;
                    }
                }
                return ServiceResult.SERVICE_ERROR;
            }
            return serviceResult2;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public static final ServiceResult e(@NotNull String applicationId) {
        if (o4.a.d(RemoteServiceWrapper.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            return f15185a.d(EventType.MOBILE_APP_INSTALL, applicationId, CollectionsKt.n());
        } catch (Throwable th2) {
            o4.a.b(th2, RemoteServiceWrapper.class);
            return null;
        }
    }
}
