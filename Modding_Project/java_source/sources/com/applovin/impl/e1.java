package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class e1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7868a;

    /* renamed from: b  reason: collision with root package name */
    private CustomTabsClient f7869b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends CustomTabsServiceConnection {
        a() {
        }

        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
            e1.this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = e1.this.f7868a.O();
                O.a("CustomTabsManager", "Connection successful: " + componentName);
            }
            e1.this.f7869b = customTabsClient;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            e1.this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = e1.this.f7868a.O();
                O.a("CustomTabsManager", "Service disconnected: " + componentName);
            }
            e1.this.f7869b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends CustomTabsCallback {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference f7871a;

        public b(com.applovin.impl.adview.a aVar) {
            this.f7871a = new WeakReference(aVar);
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i10, Bundle bundle) {
            com.applovin.impl.adview.a aVar = (com.applovin.impl.adview.a) this.f7871a.get();
            if (aVar == null) {
                e1.this.f7868a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = e1.this.f7868a.O();
                    O.b("CustomTabsManager", "Unable to track navigation event (" + i10 + "). Controller is null.");
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.ad.b g10 = aVar.g();
            if (g10 == null) {
                e1.this.f7868a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = e1.this.f7868a.O();
                    O2.b("CustomTabsManager", "Unable to track navigation event (" + i10 + "). No ad specified.");
                    return;
                }
                return;
            }
            switch (i10) {
                case 1:
                    if (g10.Y0()) {
                        e1.this.f7868a.k().trackCustomTabsNavigationStarted(g10);
                        return;
                    }
                    return;
                case 2:
                    if (g10.Y0()) {
                        e1.this.f7868a.k().trackCustomTabsNavigationFinished(g10);
                        return;
                    }
                    return;
                case 3:
                    if (g10.Y0()) {
                        e1.this.f7868a.k().trackCustomTabsNavigationFailed(g10);
                        return;
                    }
                    return;
                case 4:
                    if (g10.Y0()) {
                        e1.this.f7868a.k().trackCustomTabsNavigationAborted(g10);
                        return;
                    }
                    return;
                case 5:
                    if (g10.Y0()) {
                        e1.this.f7868a.k().trackCustomTabsTabShown(g10);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_shown"), null);
                    q2.c(aVar.e(), g10, aVar.i());
                    return;
                case 6:
                    if (g10.Y0()) {
                        e1.this.f7868a.k().trackCustomTabsTabHidden(g10);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_hidden"), null);
                    q2.a(aVar.e(), g10, aVar.i());
                    return;
                default:
                    e1.this.f7868a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O3 = e1.this.f7868a.O();
                        O3.a("CustomTabsManager", "Unknown navigation event: " + i10);
                        return;
                    }
                    return;
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i10, Uri uri, boolean z10, Bundle bundle) {
            String str;
            e1.this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = e1.this.f7868a.O();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Validation ");
                if (z10) {
                    str = "succeeded";
                } else {
                    str = "failed";
                }
                sb2.append(str);
                sb2.append(" for session-URL relation(");
                sb2.append(i10);
                sb2.append("), requestedOrigin(");
                sb2.append(uri);
                sb2.append(")");
                O.a("CustomTabsManager", sb2.toString());
            }
        }
    }

    public e1(com.applovin.impl.sdk.k kVar) {
        this.f7868a = kVar;
    }

    public void b(final List list, final CustomTabsSession customTabsSession) {
        if (list.isEmpty()) {
            return;
        }
        if (customTabsSession == null) {
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7868a.O().a("CustomTabsManager", "Custom Tabs session is null, cannot warmup urls");
                return;
            }
            return;
        }
        a("warmup urls", new Runnable() { // from class: com.applovin.impl.y9
            @Override // java.lang.Runnable
            public final void run() {
                e1.this.a(list, customTabsSession);
            }
        });
    }

    public void a() {
        if (((Boolean) this.f7868a.a(v4.Q6)).booleanValue() && this.f7869b == null) {
            String packageName = CustomTabsClient.getPackageName(com.applovin.impl.sdk.k.o(), this.f7868a.c(v4.R6), true);
            String packageName2 = CustomTabsClient.getPackageName(com.applovin.impl.sdk.k.o(), null);
            LinkedList linkedList = new LinkedList();
            if (((Boolean) this.f7868a.a(v4.S6)).booleanValue()) {
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
            } else {
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
            }
            if (linkedList.isEmpty()) {
                this.f7868a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7868a.O().b("CustomTabsManager", "Unable to find a supported Custom Tabs package name");
                    return;
                }
                return;
            }
            a(linkedList);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if (com.applovin.impl.sdk.o.a() != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.LinkedList r7) {
        /*
            r6 = this;
            java.lang.String r0 = "Retrying with next package name..."
            java.lang.String r1 = "CustomTabsManager"
            r2 = 0
            android.content.Context r3 = com.applovin.impl.sdk.k.o()     // Catch: java.lang.Throwable -> L31
            java.lang.Object r4 = r7.poll()     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L31
            com.applovin.impl.e1$a r5 = new com.applovin.impl.e1$a     // Catch: java.lang.Throwable -> L31
            r5.<init>()     // Catch: java.lang.Throwable -> L31
            boolean r2 = androidx.browser.customtabs.CustomTabsClient.bindCustomTabsService(r3, r4, r5)     // Catch: java.lang.Throwable -> L31
            if (r2 != 0) goto L33
            com.applovin.impl.sdk.k r3 = r6.f7868a     // Catch: java.lang.Throwable -> L31
            r3.O()     // Catch: java.lang.Throwable -> L31
            boolean r3 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L33
            com.applovin.impl.sdk.k r3 = r6.f7868a     // Catch: java.lang.Throwable -> L31
            com.applovin.impl.sdk.o r3 = r3.O()     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = "Custom Tabs service not available"
            r3.b(r1, r4)     // Catch: java.lang.Throwable -> L31
            goto L33
        L31:
            r3 = move-exception
            goto L47
        L33:
            if (r2 != 0) goto L7f
            boolean r2 = r7.isEmpty()
            if (r2 != 0) goto L7f
            com.applovin.impl.sdk.k r2 = r6.f7868a
            r2.O()
            boolean r2 = com.applovin.impl.sdk.o.a()
            if (r2 == 0) goto L7c
            goto L73
        L47:
            com.applovin.impl.sdk.k r4 = r6.f7868a     // Catch: java.lang.Throwable -> L5e
            r4.O()     // Catch: java.lang.Throwable -> L5e
            boolean r4 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L5e
            if (r4 == 0) goto L60
            com.applovin.impl.sdk.k r4 = r6.f7868a     // Catch: java.lang.Throwable -> L5e
            com.applovin.impl.sdk.o r4 = r4.O()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r5 = "Failed to bind to service"
            r4.a(r1, r5, r3)     // Catch: java.lang.Throwable -> L5e
            goto L60
        L5e:
            r3 = move-exception
            goto L80
        L60:
            if (r2 != 0) goto L7f
            boolean r2 = r7.isEmpty()
            if (r2 != 0) goto L7f
            com.applovin.impl.sdk.k r2 = r6.f7868a
            r2.O()
            boolean r2 = com.applovin.impl.sdk.o.a()
            if (r2 == 0) goto L7c
        L73:
            com.applovin.impl.sdk.k r2 = r6.f7868a
            com.applovin.impl.sdk.o r2 = r2.O()
            r2.a(r1, r0)
        L7c:
            r6.a(r7)
        L7f:
            return
        L80:
            if (r2 != 0) goto L9f
            boolean r2 = r7.isEmpty()
            if (r2 != 0) goto L9f
            com.applovin.impl.sdk.k r2 = r6.f7868a
            r2.O()
            boolean r2 = com.applovin.impl.sdk.o.a()
            if (r2 == 0) goto L9c
            com.applovin.impl.sdk.k r2 = r6.f7868a
            com.applovin.impl.sdk.o r2 = r2.O()
            r2.a(r1, r0)
        L9c:
            r6.a(r7)
        L9f:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.e1.a(java.util.LinkedList):void");
    }

    public CustomTabsSession a(com.applovin.impl.adview.a aVar) {
        if (this.f7869b == null) {
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7868a.O().a("CustomTabsManager", "Custom Tabs service is not connected, cannot start session");
            }
            return null;
        }
        this.f7868a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f7868a.O().a("CustomTabsManager", "Starting Custom Tabs session");
        }
        try {
            CustomTabsSession newSession = this.f7869b.newSession(new b(aVar));
            a(newSession, aVar.g());
            return newSession;
        } catch (Exception e10) {
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7868a.O().a("CustomTabsManager", "Failed to create Custom Tabs session", e10);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, CustomTabsSession customTabsSession) {
        this.f7868a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f7868a.O();
            O.a("CustomTabsManager", "Warming up URLs: " + list);
        }
        String str = (String) list.remove(0);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(CustomTabsService.KEY_URL, Uri.parse((String) it.next()));
            arrayList.add(bundle);
        }
        boolean mayLaunchUrl = customTabsSession.mayLaunchUrl(Uri.parse(str), null, arrayList);
        this.f7868a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = this.f7868a.O();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Warmup for URLs ");
            sb2.append(mayLaunchUrl ? "succeeded" : "failed");
            O2.a("CustomTabsManager", sb2.toString());
        }
    }

    public void a(final String str, final com.applovin.impl.adview.a aVar, final Activity activity) {
        if (a("launch url", new Runnable() { // from class: com.applovin.impl.w9
            @Override // java.lang.Runnable
            public final void run() {
                e1.this.a(aVar, activity, str);
            }
        })) {
            this.f7868a.n0().pauseForClick();
        } else {
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_failure"), CollectionUtils.map("url", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.adview.a aVar, Activity activity, String str) {
        a(aVar, activity).launchUrl(activity, Uri.parse(str));
    }

    private void a(final CustomTabsSession customTabsSession, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null || !bVar.F0()) {
            return;
        }
        a("client warmup", new Runnable() { // from class: com.applovin.impl.x9
            @Override // java.lang.Runnable
            public final void run() {
                e1.this.a(bVar, customTabsSession);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, CustomTabsSession customTabsSession) {
        this.f7869b.warmup(0L);
        f1 A = bVar.A();
        if (A == null) {
            return;
        }
        Integer e10 = A.e();
        String b10 = A.b();
        if (e10 == null || TextUtils.isEmpty(b10)) {
            return;
        }
        if (customTabsSession == null) {
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7868a.O().b("CustomTabsManager", "Cannot validate session-URL relation because the session is null");
                return;
            }
            return;
        }
        this.f7868a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f7868a.O();
            O.a("CustomTabsManager", "Validating session-URL relation: " + e10 + " with digital asset link: " + b10);
        }
        customTabsSession.validateRelationship(e10.intValue(), Uri.parse(b10), null);
    }

    private CustomTabsIntent a(com.applovin.impl.adview.a aVar, Activity activity) {
        this.f7868a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f7868a.O().a("CustomTabsManager", "Creating Custom Tabs intent");
        }
        com.applovin.impl.sdk.ad.b g10 = aVar.g();
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(aVar.h());
        f1 A = g10 != null ? g10.A() : null;
        if (((Boolean) this.f7868a.a(v4.T6)).booleanValue()) {
            builder.setStartAnimations(activity, R.anim.applovin_slide_up_animation, R.anim.applovin_slide_down_animation);
            builder.setExitAnimations(activity, R.anim.applovin_slide_up_animation, R.anim.applovin_slide_down_animation);
        }
        if (A != null) {
            Integer h10 = A.h();
            if (h10 != null) {
                builder.setDefaultColorSchemeParams(new CustomTabColorSchemeParams.Builder().setToolbarColor(h10.intValue()).build());
            }
            Integer a10 = A.a();
            if (a10 != null) {
                builder.setColorSchemeParams(2, new CustomTabColorSchemeParams.Builder().setToolbarColor(a10.intValue()).build());
            }
            Boolean i10 = A.i();
            if (i10 != null) {
                builder.setUrlBarHidingEnabled(i10.booleanValue());
            }
            Boolean g11 = A.g();
            if (g11 != null) {
                builder.setShowTitle(g11.booleanValue());
            }
            Boolean c10 = A.c();
            if (c10 != null) {
                builder.setInstantAppsEnabled(c10.booleanValue());
            }
            Integer f10 = A.f();
            if (f10 != null) {
                builder.setShareState(f10.intValue());
            }
        }
        CustomTabsIntent build = builder.build();
        if (A != null) {
            String d10 = A.d();
            if (d10 != null) {
                build.intent.putExtra("android.intent.extra.REFERRER", Uri.parse(d10));
            }
            Bundle v10 = g10.v();
            if (!v10.isEmpty()) {
                build.intent.putExtra("com.android.browser.headers", v10);
            }
        }
        return build;
    }

    private boolean a(String str, Runnable runnable) {
        try {
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f7868a.O();
                O.a("CustomTabsManager", "Running operation: " + str);
            }
            runnable.run();
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = this.f7868a.O();
                O2.a("CustomTabsManager", "Finished operation: " + str);
                return true;
            }
            return true;
        } catch (Throwable th2) {
            this.f7868a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O3 = this.f7868a.O();
                O3.a("CustomTabsManager", "Failed to run operation: " + str, th2);
            }
            this.f7868a.E().a("CustomTabsManager", str, th2);
            return false;
        }
    }
}
