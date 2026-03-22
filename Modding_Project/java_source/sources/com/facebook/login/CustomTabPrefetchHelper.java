package com.facebook.login;

import android.content.ComponentName;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomTabPrefetchHelper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CustomTabPrefetchHelper extends CustomTabsServiceConnection {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static CustomTabsClient f16402c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static CustomTabsSession f16403d;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f16401b = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ReentrantLock f16404e = new ReentrantLock();

    /* compiled from: CustomTabPrefetchHelper.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCustomTabPrefetchHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabPrefetchHelper.kt\ncom/facebook/login/CustomTabPrefetchHelper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d() {
            CustomTabsClient customTabsClient;
            CustomTabPrefetchHelper.f16404e.lock();
            if (CustomTabPrefetchHelper.f16403d == null && (customTabsClient = CustomTabPrefetchHelper.f16402c) != null) {
                CustomTabPrefetchHelper.f16403d = customTabsClient.newSession(null);
            }
            CustomTabPrefetchHelper.f16404e.unlock();
        }

        @Nullable
        public final CustomTabsSession b() {
            CustomTabPrefetchHelper.f16404e.lock();
            CustomTabsSession customTabsSession = CustomTabPrefetchHelper.f16403d;
            CustomTabPrefetchHelper.f16403d = null;
            CustomTabPrefetchHelper.f16404e.unlock();
            return customTabsSession;
        }

        public final void c(@NotNull Uri url) {
            Intrinsics.checkNotNullParameter(url, "url");
            d();
            CustomTabPrefetchHelper.f16404e.lock();
            CustomTabsSession customTabsSession = CustomTabPrefetchHelper.f16403d;
            if (customTabsSession != null) {
                customTabsSession.mayLaunchUrl(url, null, null);
            }
            CustomTabPrefetchHelper.f16404e.unlock();
        }

        private a() {
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public void onCustomTabsServiceConnected(@NotNull ComponentName name, @NotNull CustomTabsClient newClient) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(newClient, "newClient");
        newClient.warmup(0L);
        f16402c = newClient;
        f16401b.d();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(@NotNull ComponentName componentName) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
    }
}
