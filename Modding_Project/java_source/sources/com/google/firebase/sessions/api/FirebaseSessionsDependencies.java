package com.google.firebase.sessions.api;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.a;
import qt.d;
/* compiled from: FirebaseSessionsDependencies.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFirebaseSessionsDependencies.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseSessionsDependencies.kt\ncom/google/firebase/sessions/api/FirebaseSessionsDependencies\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,100:1\n462#2:101\n412#2:102\n1246#3,2:103\n1249#3:116\n116#4,11:105\n*S KotlinDebug\n*F\n+ 1 FirebaseSessionsDependencies.kt\ncom/google/firebase/sessions/api/FirebaseSessionsDependencies\n*L\n75#1:101\n75#1:102\n75#1:103,2\n75#1:116\n76#1:105,11\n*E\n"})
/* loaded from: classes5.dex */
public final class FirebaseSessionsDependencies {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final FirebaseSessionsDependencies f21590a = new FirebaseSessionsDependencies();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<SessionSubscriber.Name, a> f21591b = Collections.synchronizedMap(new LinkedHashMap());

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirebaseSessionsDependencies.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final qt.a f21592a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private SessionSubscriber f21593b;

        public a(@NotNull qt.a mutex, @Nullable SessionSubscriber sessionSubscriber) {
            Intrinsics.checkNotNullParameter(mutex, "mutex");
            this.f21592a = mutex;
            this.f21593b = sessionSubscriber;
        }

        @NotNull
        public final qt.a a() {
            return this.f21592a;
        }

        @Nullable
        public final SessionSubscriber b() {
            return this.f21593b;
        }

        public final void c(@Nullable SessionSubscriber sessionSubscriber) {
            this.f21593b = sessionSubscriber;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f21592a, aVar.f21592a) && Intrinsics.areEqual(this.f21593b, aVar.f21593b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f21592a.hashCode() * 31;
            SessionSubscriber sessionSubscriber = this.f21593b;
            if (sessionSubscriber == null) {
                hashCode = 0;
            } else {
                hashCode = sessionSubscriber.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "Dependency(mutex=" + this.f21592a + ", subscriber=" + this.f21593b + ')';
        }

        public /* synthetic */ a(qt.a aVar, SessionSubscriber sessionSubscriber, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(aVar, (i10 & 2) != 0 ? null : sessionSubscriber);
        }
    }

    private FirebaseSessionsDependencies() {
    }

    public static final void a(@NotNull SessionSubscriber.Name subscriberName) {
        Intrinsics.checkNotNullParameter(subscriberName, "subscriberName");
        Map<SessionSubscriber.Name, a> dependencies = f21591b;
        if (dependencies.containsKey(subscriberName)) {
            Log.d("FirebaseSessions", "Dependency " + subscriberName + " already added.");
            return;
        }
        Intrinsics.checkNotNullExpressionValue(dependencies, "dependencies");
        dependencies.put(subscriberName, new a(d.a(true), null, 2, null));
        Log.d("FirebaseSessions", "Dependency to " + subscriberName + " added.");
    }

    private final a b(SessionSubscriber.Name name) {
        Map<SessionSubscriber.Name, a> dependencies = f21591b;
        Intrinsics.checkNotNullExpressionValue(dependencies, "dependencies");
        a aVar = dependencies.get(name);
        if (aVar != null) {
            Intrinsics.checkNotNullExpressionValue(aVar, "getOrElse(...)");
            return aVar;
        }
        throw new IllegalStateException("Cannot get dependency " + name + ". Dependencies should be added at class load time.");
    }

    public static final void e(@NotNull SessionSubscriber subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        SessionSubscriber.Name b10 = subscriber.b();
        a b11 = f21590a.b(b10);
        if (b11.b() != null) {
            Log.d("FirebaseSessions", "Subscriber " + b10 + " already registered.");
            return;
        }
        b11.c(subscriber);
        Log.d("FirebaseSessions", "Subscriber " + b10 + " registered.");
        a.C0910a.c(b11.a(), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5 A[RETURN] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.util.Map] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00a1 -> B:27:0x00a2). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super java.util.Map<com.google.firebase.sessions.api.SessionSubscriber.Name, ? extends com.google.firebase.sessions.api.SessionSubscriber>> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            if (r0 == 0) goto L13
            r0 = r11
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1) r0
            int r1 = r0.f21602p
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f21602p = r1
            goto L18
        L13:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = new com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.f21600n
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f21602p
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L48
            if (r2 != r3) goto L40
            java.lang.Object r2 = r0.f21599m
            java.lang.Object r5 = r0.f21598l
            java.util.Map r5 = (java.util.Map) r5
            java.lang.Object r6 = r0.f21597k
            qt.a r6 = (qt.a) r6
            java.lang.Object r7 = r0.f21596j
            com.google.firebase.sessions.api.SessionSubscriber$Name r7 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r7
            java.lang.Object r8 = r0.f21595i
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.f21594h
            java.util.Map r9 = (java.util.Map) r9
            kotlin.f.b(r11)
            goto La2
        L40:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L48:
            kotlin.f.b(r11)
            java.util.Map<com.google.firebase.sessions.api.SessionSubscriber$Name, com.google.firebase.sessions.api.FirebaseSessionsDependencies$a> r11 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f21591b
            java.lang.String r2 = "dependencies"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r2)
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r5 = r11.size()
            int r5 = kotlin.collections.p0.e(r5)
            r2.<init>(r5)
            java.util.Set r11 = r11.entrySet()
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            java.util.Iterator r11 = r11.iterator()
            r8 = r11
            r5 = r2
        L6b:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto Lb5
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r2 = r11.getKey()
            java.lang.Object r6 = r11.getKey()
            r7 = r6
            com.google.firebase.sessions.api.SessionSubscriber$Name r7 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r7
            java.lang.Object r11 = r11.getValue()
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$a r11 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies.a) r11
            qt.a r6 = r11.a()
            r0.f21594h = r5
            r0.f21595i = r8
            r0.f21596j = r7
            r0.f21597k = r6
            r0.f21598l = r5
            r0.f21599m = r2
            r0.f21602p = r3
            java.lang.Object r11 = r6.lock(r4, r0)
            if (r11 != r1) goto La1
            return r1
        La1:
            r9 = r5
        La2:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r11 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f21590a     // Catch: java.lang.Throwable -> Lb0
            com.google.firebase.sessions.api.SessionSubscriber r11 = r11.d(r7)     // Catch: java.lang.Throwable -> Lb0
            r6.unlock(r4)
            r5.put(r2, r11)
            r5 = r9
            goto L6b
        Lb0:
            r11 = move-exception
            r6.unlock(r4)
            throw r11
        Lb5:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.api.FirebaseSessionsDependencies.c(rs.c):java.lang.Object");
    }

    @VisibleForTesting
    @NotNull
    public final SessionSubscriber d(@NotNull SessionSubscriber.Name subscriberName) {
        Intrinsics.checkNotNullParameter(subscriberName, "subscriberName");
        SessionSubscriber b10 = b(subscriberName).b();
        if (b10 != null) {
            return b10;
        }
        throw new IllegalStateException("Subscriber " + subscriberName + " has not been registered.");
    }
}
