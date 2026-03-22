package com.inmobi.media;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.t3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3171t3 extends CustomTabsServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3203v3 f25293a;

    public C3171t3(C3203v3 c3203v3) {
        this.f25293a = c3203v3;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f25293a.f25352a = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCustomTabsServiceConnected(android.content.ComponentName r5, androidx.browser.customtabs.CustomTabsClient r6) {
        /*
            r4 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r5 = "client"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r5)
            com.inmobi.media.v3 r5 = r4.f25293a
            r5.f25352a = r6
            com.inmobi.media.k2 r5 = r5.f25354c
            if (r5 == 0) goto L99
            r6 = 0
            com.inmobi.media.v3 r0 = r5.f24923e     // Catch: java.lang.Throwable -> L3c
            androidx.browser.customtabs.CustomTabsSession r1 = r0.f25355d     // Catch: java.lang.Throwable -> L3c
            if (r1 != 0) goto L2a
            androidx.browser.customtabs.CustomTabsClient r1 = r0.f25352a     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L27
            com.inmobi.media.u3 r2 = new com.inmobi.media.u3     // Catch: java.lang.Throwable -> L3c
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L3c
            androidx.browser.customtabs.CustomTabsSession r1 = r1.newSession(r2)     // Catch: java.lang.Throwable -> L3c
            goto L28
        L27:
            r1 = r6
        L28:
            r0.f25355d = r1     // Catch: java.lang.Throwable -> L3c
        L2a:
            if (r1 == 0) goto L3c
            android.os.Bundle r0 = android.os.Bundle.EMPTY     // Catch: java.lang.Throwable -> L3c
            boolean r2 = r1.isEngagementSignalsApiAvailable(r0)     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L3c
            com.inmobi.media.j2 r2 = new com.inmobi.media.j2     // Catch: java.lang.Throwable -> L3c
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L3c
            r1.setEngagementSignalsCallback(r2, r0)     // Catch: java.lang.Throwable -> L3c
        L3c:
            java.lang.String r0 = r5.f24919a     // Catch: java.lang.Error -> L4b
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Error -> L4b
            java.lang.String r1 = "parse(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)     // Catch: java.lang.Error -> L4b
            r5.a(r0)     // Catch: java.lang.Error -> L4b
            goto L99
        L4b:
            android.content.Context r0 = r5.f24924f     // Catch: java.lang.Exception -> L61
            java.lang.String r1 = r5.f24919a     // Catch: java.lang.Exception -> L61
            java.lang.ref.WeakReference r2 = r5.f24928j     // Catch: java.lang.Exception -> L61
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Exception -> L61
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L61
            com.inmobi.media.yb r2 = (com.inmobi.media.InterfaceC3259yb) r2     // Catch: java.lang.Exception -> L61
            java.lang.String r3 = r5.f24922d     // Catch: java.lang.Exception -> L61
            int r0 = com.inmobi.media.AbstractC3266z2.a(r0, r1, r2, r3)     // Catch: java.lang.Exception -> L61
            goto L63
        L61:
            r0 = 9
        L63:
            com.inmobi.media.R6 r1 = r5.f24921c
            if (r1 != 0) goto L68
            goto L6c
        L68:
            java.lang.String r2 = "EX_NATIVE"
            r1.f24066g = r2
        L6c:
            if (r0 == 0) goto L88
            r1 = 1
            if (r0 != r1) goto L72
            goto L88
        L72:
            java.lang.ref.WeakReference r6 = r5.f24927i
            java.lang.Object r6 = r6.get()
            com.inmobi.media.e2 r6 = (com.inmobi.media.InterfaceC2931e2) r6
            if (r6 == 0) goto L99
            com.inmobi.media.F6 r1 = com.inmobi.media.F6.f23637g
            com.inmobi.media.R6 r5 = r5.f24921c
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6.a(r1, r5, r0)
            goto L99
        L88:
            java.lang.ref.WeakReference r0 = r5.f24927i
            java.lang.Object r0 = r0.get()
            com.inmobi.media.e2 r0 = (com.inmobi.media.InterfaceC2931e2) r0
            if (r0 == 0) goto L99
            com.inmobi.media.F6 r1 = com.inmobi.media.F6.f23636f
            com.inmobi.media.R6 r5 = r5.f24921c
            r0.a(r1, r5, r6)
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3171t3.onCustomTabsServiceConnected(android.content.ComponentName, androidx.browser.customtabs.CustomTabsClient):void");
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        C3203v3 c3203v3 = this.f25293a;
        c3203v3.f25352a = null;
        C3027k2 c3027k2 = c3203v3.f25354c;
        if (c3027k2 != null) {
            R6 r62 = c3027k2.f24921c;
            if (r62 != null) {
                r62.f24066g = "IN_NATIVE";
            }
            InterfaceC2931e2 interfaceC2931e2 = (InterfaceC2931e2) c3027k2.f24927i.get();
            if (interfaceC2931e2 != null) {
                interfaceC2931e2.a(F6.f23637g, c3027k2.f24921c, Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f25293a.f25352a = null;
    }
}
