package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.datastore.core.MultiProcessDataStoreFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.sessions.FirebaseSessions;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import com.google.firebase.sessions.b;
import gt.c0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.q;
/* compiled from: FirebaseSessionsRegistrar.kt */
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {
    @NotNull
    private static final a Companion = new a(null);
    @Deprecated
    @NotNull
    public static final String LIBRARY_NAME = "fire-sessions";
    @NotNull
    private static final a0<Context> appContext;
    @NotNull
    private static final a0<c0> backgroundDispatcher;
    @NotNull
    private static final a0<c0> blockingDispatcher;
    @NotNull
    private static final a0<com.google.firebase.f> firebaseApp;
    @NotNull
    private static final a0<x8.e> firebaseInstallationsApi;
    @NotNull
    private static final a0<b> firebaseSessionsComponent;
    @NotNull
    private static final a0<a5.i> transportFactory;

    /* compiled from: FirebaseSessionsRegistrar.kt */
    @Metadata
    /* loaded from: classes5.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        a0<Context> b10 = a0.b(Context.class);
        Intrinsics.checkNotNullExpressionValue(b10, "unqualified(...)");
        appContext = b10;
        a0<com.google.firebase.f> b11 = a0.b(com.google.firebase.f.class);
        Intrinsics.checkNotNullExpressionValue(b11, "unqualified(...)");
        firebaseApp = b11;
        a0<x8.e> b12 = a0.b(x8.e.class);
        Intrinsics.checkNotNullExpressionValue(b12, "unqualified(...)");
        firebaseInstallationsApi = b12;
        a0<c0> a10 = a0.a(o7.a.class, c0.class);
        Intrinsics.checkNotNullExpressionValue(a10, "qualified(...)");
        backgroundDispatcher = a10;
        a0<c0> a11 = a0.a(o7.b.class, c0.class);
        Intrinsics.checkNotNullExpressionValue(a11, "qualified(...)");
        blockingDispatcher = a11;
        a0<a5.i> b13 = a0.b(a5.i.class);
        Intrinsics.checkNotNullExpressionValue(b13, "unqualified(...)");
        transportFactory = b13;
        a0<b> b14 = a0.b(b.class);
        Intrinsics.checkNotNullExpressionValue(b14, "unqualified(...)");
        firebaseSessionsComponent = b14;
        try {
            MultiProcessDataStoreFactory.INSTANCE.getClass();
        } catch (NoClassDefFoundError unused) {
            Log.w("FirebaseSessions", "Your app is experiencing a known issue in the Android Gradle plugin, see https://issuetracker.google.com/328687152\n\nIt affects Java-only apps using AGP version 8.3.2 and under. To avoid the issue, either:\n\n1. Upgrade Android Gradle plugin to 8.4.0+\n   Follow the guide at https://developer.android.com/build/agp-upgrade-assistant\n\n2. Or, add the Kotlin plugin to your app\n   Follow the guide at https://developer.android.com/kotlin/add-kotlin\n\n3. Or, do the technical workaround described in https://issuetracker.google.com/issues/328687152#comment3");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseSessions getComponents$lambda$0(w7.d dVar) {
        return ((b) dVar.h(firebaseSessionsComponent)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b getComponents$lambda$1(w7.d dVar) {
        b.a a10 = com.google.firebase.sessions.a.a();
        Object h10 = dVar.h(appContext);
        Intrinsics.checkNotNullExpressionValue(h10, "get(...)");
        b.a c10 = a10.c((Context) h10);
        Object h11 = dVar.h(backgroundDispatcher);
        Intrinsics.checkNotNullExpressionValue(h11, "get(...)");
        b.a d10 = c10.d((CoroutineContext) h11);
        Object h12 = dVar.h(blockingDispatcher);
        Intrinsics.checkNotNullExpressionValue(h12, "get(...)");
        b.a f10 = d10.f((CoroutineContext) h12);
        Object h13 = dVar.h(firebaseApp);
        Intrinsics.checkNotNullExpressionValue(h13, "get(...)");
        b.a b10 = f10.b((com.google.firebase.f) h13);
        Object h14 = dVar.h(firebaseInstallationsApi);
        Intrinsics.checkNotNullExpressionValue(h14, "get(...)");
        b.a a11 = b10.a((x8.e) h14);
        w8.b<a5.i> d11 = dVar.d(transportFactory);
        Intrinsics.checkNotNullExpressionValue(d11, "getProvider(...)");
        return a11.e(d11).build();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<w7.c<? extends Object>> getComponents() {
        return CollectionsKt.q(w7.c.c(FirebaseSessions.class).h(LIBRARY_NAME).b(q.l(firebaseSessionsComponent)).f(new w7.g() { // from class: j9.p
            @Override // w7.g
            public final Object a(w7.d dVar) {
                FirebaseSessions components$lambda$0;
                components$lambda$0 = FirebaseSessionsRegistrar.getComponents$lambda$0(dVar);
                return components$lambda$0;
            }
        }).e().d(), w7.c.c(b.class).h("fire-sessions-component").b(q.l(appContext)).b(q.l(backgroundDispatcher)).b(q.l(blockingDispatcher)).b(q.l(firebaseApp)).b(q.l(firebaseInstallationsApi)).b(q.n(transportFactory)).f(new w7.g() { // from class: j9.q
            @Override // w7.g
            public final Object a(w7.d dVar) {
                com.google.firebase.sessions.b components$lambda$1;
                components$lambda$1 = FirebaseSessionsRegistrar.getComponents$lambda$1(dVar);
                return components$lambda$1;
            }
        }).d(), e9.h.b(LIBRARY_NAME, "3.0.3"));
    }
}
