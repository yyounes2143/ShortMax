package com.google.firebase.sessions;

import android.util.Log;
import com.google.firebase.sessions.settings.SessionsSettings;
import j9.b0;
import j9.d0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SessionFirelogPublisher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSessionFirelogPublisher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionFirelogPublisher.kt\ncom/google/firebase/sessions/SessionFirelogPublisherImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n2632#2,3:130\n*S KotlinDebug\n*F\n+ 1 SessionFirelogPublisher.kt\ncom/google/firebase/sessions/SessionFirelogPublisherImpl\n*L\n99#1:130,3\n*E\n"})
/* loaded from: classes5.dex */
public final class SessionFirelogPublisherImpl implements d0 {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f21505f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final double f21506g = Math.random();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f21507a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final x8.e f21508b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SessionsSettings f21509c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final j9.g f21510d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final CoroutineContext f21511e;

    /* compiled from: SessionFirelogPublisher.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SessionFirelogPublisherImpl(@NotNull com.google.firebase.f firebaseApp, @NotNull x8.e firebaseInstallations, @NotNull SessionsSettings sessionSettings, @NotNull j9.g eventGDTLogger, @o7.a @NotNull CoroutineContext backgroundDispatcher) {
        Intrinsics.checkNotNullParameter(firebaseApp, "firebaseApp");
        Intrinsics.checkNotNullParameter(firebaseInstallations, "firebaseInstallations");
        Intrinsics.checkNotNullParameter(sessionSettings, "sessionSettings");
        Intrinsics.checkNotNullParameter(eventGDTLogger, "eventGDTLogger");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.f21507a = firebaseApp;
        this.f21508b = firebaseInstallations;
        this.f21509c = sessionSettings;
        this.f21510d = eventGDTLogger;
        this.f21511e = backgroundDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(b0 b0Var) {
        try {
            this.f21510d.a(b0Var);
            Log.d("FirebaseSessions", "Successfully logged Session Start event.");
        } catch (RuntimeException e10) {
            Log.e("FirebaseSessions", "Error logging Session Start event to DataTransport: ", e10);
        }
    }

    private final boolean h() {
        if (f21506g <= this.f21509c.a()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(rs.c<? super java.lang.Boolean> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1
            if (r0 == 0) goto L13
            r0 = r9
            com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1 r0 = (com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1) r0
            int r1 = r0.f21524k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f21524k = r1
            goto L18
        L13:
            com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1 r0 = new com.google.firebase.sessions.SessionFirelogPublisherImpl$shouldLogSession$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f21522i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f21524k
            r3 = 2
            r4 = 0
            java.lang.String r5 = "FirebaseSessions"
            r6 = 1
            if (r2 == 0) goto L43
            if (r2 == r6) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.f21521h
            com.google.firebase.sessions.SessionFirelogPublisherImpl r0 = (com.google.firebase.sessions.SessionFirelogPublisherImpl) r0
            kotlin.f.b(r9)
            goto L8e
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3b:
            java.lang.Object r2 = r0.f21521h
            com.google.firebase.sessions.SessionFirelogPublisherImpl r2 = (com.google.firebase.sessions.SessionFirelogPublisherImpl) r2
            kotlin.f.b(r9)
            goto L54
        L43:
            kotlin.f.b(r9)
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r9 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f21590a
            r0.f21521h = r8
            r0.f21524k = r6
            java.lang.Object r9 = r9.c(r0)
            if (r9 != r1) goto L53
            return r1
        L53:
            r2 = r8
        L54:
            java.util.Map r9 = (java.util.Map) r9
            java.util.Collection r9 = r9.values()
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            boolean r7 = r9 instanceof java.util.Collection
            if (r7 == 0) goto L6a
            r7 = r9
            java.util.Collection r7 = (java.util.Collection) r7
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L6a
            goto Lb5
        L6a:
            java.util.Iterator r9 = r9.iterator()
        L6e:
            boolean r7 = r9.hasNext()
            if (r7 == 0) goto Lb5
            java.lang.Object r7 = r9.next()
            com.google.firebase.sessions.api.SessionSubscriber r7 = (com.google.firebase.sessions.api.SessionSubscriber) r7
            boolean r7 = r7.a()
            if (r7 == 0) goto L6e
            com.google.firebase.sessions.settings.SessionsSettings r9 = r2.f21509c
            r0.f21521h = r2
            r0.f21524k = r3
            java.lang.Object r9 = r9.f(r0)
            if (r9 != r1) goto L8d
            return r1
        L8d:
            r0 = r2
        L8e:
            com.google.firebase.sessions.settings.SessionsSettings r9 = r0.f21509c
            boolean r9 = r9.c()
            if (r9 != 0) goto La0
            java.lang.String r9 = "Sessions SDK disabled through settings API. Events will not be sent."
            android.util.Log.d(r5, r9)
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.a.a(r4)
            return r9
        La0:
            boolean r9 = r0.h()
            if (r9 != 0) goto Lb0
            java.lang.String r9 = "Sessions SDK has dropped this session due to sampling."
            android.util.Log.d(r5, r9)
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.a.a(r4)
            return r9
        Lb0:
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.a.a(r6)
            return r9
        Lb5:
            java.lang.String r9 = "Sessions SDK disabled through data collection. Events will not be sent."
            android.util.Log.d(r5, r9)
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.a.a(r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SessionFirelogPublisherImpl.i(rs.c):java.lang.Object");
    }

    @Override // j9.d0
    public void a(@NotNull j sessionDetails) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        gt.g.d(kotlinx.coroutines.i.a(this.f21511e), null, null, new SessionFirelogPublisherImpl$mayLogSession$1(this, sessionDetails, null), 3, null);
    }
}
