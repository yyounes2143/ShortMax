package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.firebase.sessions.settings.SessionsSettings;
import gt.g0;
import j9.i0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FirebaseSessions.kt */
@Metadata
/* loaded from: classes5.dex */
public final class FirebaseSessions {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f21491c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f21492a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SessionsSettings f21493b;

    /* compiled from: FirebaseSessions.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {51, 55}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nFirebaseSessions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseSessions.kt\ncom/google/firebase/sessions/FirebaseSessions$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n2632#2,3:85\n*S KotlinDebug\n*F\n+ 1 FirebaseSessions.kt\ncom/google/firebase/sessions/FirebaseSessions$1\n*L\n52#1:85,3\n*E\n"})
    /* renamed from: com.google.firebase.sessions.FirebaseSessions$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f21494h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ i0 f21496j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(i0 i0Var, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f21496j = i0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f21496j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f21494h
                java.lang.String r2 = "FirebaseSessions"
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L20
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L14
                kotlin.f.b(r6)
                goto L69
            L14:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1c:
                kotlin.f.b(r6)
                goto L2e
            L20:
                kotlin.f.b(r6)
                com.google.firebase.sessions.api.FirebaseSessionsDependencies r6 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f21590a
                r5.f21494h = r4
                java.lang.Object r6 = r6.c(r5)
                if (r6 != r0) goto L2e
                return r0
            L2e:
                java.util.Map r6 = (java.util.Map) r6
                java.util.Collection r6 = r6.values()
                java.lang.Iterable r6 = (java.lang.Iterable) r6
                boolean r1 = r6 instanceof java.util.Collection
                if (r1 == 0) goto L44
                r1 = r6
                java.util.Collection r1 = (java.util.Collection) r1
                boolean r1 = r1.isEmpty()
                if (r1 == 0) goto L44
                goto L92
            L44:
                java.util.Iterator r6 = r6.iterator()
            L48:
                boolean r1 = r6.hasNext()
                if (r1 == 0) goto L92
                java.lang.Object r1 = r6.next()
                com.google.firebase.sessions.api.SessionSubscriber r1 = (com.google.firebase.sessions.api.SessionSubscriber) r1
                boolean r1 = r1.a()
                if (r1 == 0) goto L48
                com.google.firebase.sessions.FirebaseSessions r6 = com.google.firebase.sessions.FirebaseSessions.this
                com.google.firebase.sessions.settings.SessionsSettings r6 = com.google.firebase.sessions.FirebaseSessions.b(r6)
                r5.f21494h = r3
                java.lang.Object r6 = r6.f(r5)
                if (r6 != r0) goto L69
                return r0
            L69:
                com.google.firebase.sessions.FirebaseSessions r6 = com.google.firebase.sessions.FirebaseSessions.this
                com.google.firebase.sessions.settings.SessionsSettings r6 = com.google.firebase.sessions.FirebaseSessions.b(r6)
                boolean r6 = r6.c()
                if (r6 != 0) goto L7f
                java.lang.String r6 = "Sessions SDK disabled. Not listening to lifecycle events."
                int r6 = android.util.Log.d(r2, r6)
                kotlin.coroutines.jvm.internal.a.d(r6)
                goto L9b
            L7f:
                com.google.firebase.sessions.FirebaseSessions r6 = com.google.firebase.sessions.FirebaseSessions.this
                com.google.firebase.f r6 = com.google.firebase.sessions.FirebaseSessions.a(r6)
                j9.i0 r0 = r5.f21496j
                j9.i r1 = new j9.i
                r1.<init>()
                r6.h(r1)
                kotlin.Unit r6 = kotlin.Unit.f60915a
                goto L9b
            L92:
                java.lang.String r6 = "No Sessions subscribers. Not listening to lifecycle events."
                int r6 = android.util.Log.d(r2, r6)
                kotlin.coroutines.jvm.internal.a.d(r6)
            L9b:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.FirebaseSessions.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: FirebaseSessions.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public FirebaseSessions(@NotNull com.google.firebase.f firebaseApp, @NotNull SessionsSettings settings, @o7.a @NotNull CoroutineContext backgroundDispatcher, @NotNull i0 sessionsActivityLifecycleCallbacks) {
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.checkNotNullParameter(sessionsActivityLifecycleCallbacks, "sessionsActivityLifecycleCallbacks");
        this.f21492a = firebaseApp;
        this.f21493b = settings;
        Log.d("FirebaseSessions", "Initializing Firebase Sessions 3.0.3.");
        Context applicationContext = firebaseApp.l().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(sessionsActivityLifecycleCallbacks);
            gt.g.d(kotlinx.coroutines.i.a(backgroundDispatcher), null, null, new AnonymousClass1(sessionsActivityLifecycleCallbacks, null), 3, null);
            return;
        }
        Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }
}
