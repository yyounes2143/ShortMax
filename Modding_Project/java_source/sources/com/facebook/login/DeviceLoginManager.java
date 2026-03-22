package com.facebook.login;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceLoginManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDeviceLoginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceLoginManager.kt\ncom/facebook/login/DeviceLoginManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"})
/* loaded from: classes3.dex */
public final class DeviceLoginManager extends LoginManager {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f16433o = new a(null);
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final ms.i<DeviceLoginManager> f16434p = kotlin.c.b(new Function0<DeviceLoginManager>() { // from class: com.facebook.login.DeviceLoginManager$Companion$instance$2
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final DeviceLoginManager invoke() {
            return new DeviceLoginManager();
        }
    });
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Uri f16435n;

    /* compiled from: DeviceLoginManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DeviceLoginManager a() {
            return (DeviceLoginManager) DeviceLoginManager.O().getValue();
        }

        private a() {
        }
    }

    public static final /* synthetic */ ms.i O() {
        if (o4.a.d(DeviceLoginManager.class)) {
            return null;
        }
        try {
            return f16434p;
        } catch (Throwable th2) {
            o4.a.b(th2, DeviceLoginManager.class);
            return null;
        }
    }

    public final void P(@Nullable Uri uri) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            this.f16435n = uri;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
