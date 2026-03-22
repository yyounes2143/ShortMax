package com.google.firebase.sessions;

import android.util.Log;
import androidx.datastore.core.DataStore;
import at.n;
import com.google.firebase.sessions.settings.SessionsSettings;
import gt.g0;
import j9.d0;
import j9.f0;
import j9.k0;
import j9.m0;
import j9.s;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharedSessionRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharedSessionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedSessionRepository.kt\ncom/google/firebase/sessions/SharedSessionRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,257:1\n1863#2,2:258\n*S KotlinDebug\n*F\n+ 1 SharedSessionRepository.kt\ncom/google/firebase/sessions/SharedSessionRepositoryImpl\n*L\n199#1:258,2\n*E\n"})
/* loaded from: classes5.dex */
public final class SharedSessionRepositoryImpl implements k0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SessionsSettings f21525b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final f0 f21526c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final d0 f21527d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final m0 f21528e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final DataStore<i> f21529f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final s f21530g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final CoroutineContext f21531h;

    /* renamed from: i  reason: collision with root package name */
    public i f21532i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f21533j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private NotificationType f21534k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private String f21535l;

    /* compiled from: SharedSessionRepository.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$1", f = "SharedSessionRepository.kt", l = {94}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f21536h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharedSessionRepository.kt */
        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1", f = "SharedSessionRepository.kt", l = {92}, m = "invokeSuspend")
        /* renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C03111 extends SuspendLambda implements n<kt.c<? super i>, Throwable, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f21538h;

            /* renamed from: i  reason: collision with root package name */
            private /* synthetic */ Object f21539i;

            /* renamed from: j  reason: collision with root package name */
            /* synthetic */ Object f21540j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ SharedSessionRepositoryImpl f21541k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C03111(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, rs.c<? super C03111> cVar) {
                super(3, cVar);
                this.f21541k = sharedSessionRepositoryImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f21538h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    i iVar = new i(this.f21541k.f21526c.a(null), (k) null, (Map) null, 4, (DefaultConstructorMarker) null);
                    Log.d("FirebaseSessions", "Init session datastore failed with exception message: " + ((Throwable) this.f21540j).getMessage() + ". Emit fallback session " + iVar.f().b());
                    this.f21539i = null;
                    this.f21538h = 1;
                    if (((kt.c) this.f21539i).emit(iVar, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }

            @Override // at.n
            public final Object invoke(kt.c<? super i> cVar, Throwable th2, rs.c<? super Unit> cVar2) {
                C03111 c03111 = new C03111(this.f21541k, cVar2);
                c03111.f21539i = cVar;
                c03111.f21540j = th2;
                return c03111.invokeSuspend(Unit.f60915a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharedSessionRepository.kt */
        @Metadata
        /* renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$1$a */
        /* loaded from: classes5.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SharedSessionRepositoryImpl f21542a;

            a(SharedSessionRepositoryImpl sharedSessionRepositoryImpl) {
                this.f21542a = sharedSessionRepositoryImpl;
            }

            @Override // kt.c
            /* renamed from: a */
            public final Object emit(i iVar, rs.c<? super Unit> cVar) {
                this.f21542a.r(iVar);
                Object q10 = this.f21542a.q(iVar.f().b(), NotificationType.GENERAL, cVar);
                if (q10 == kotlin.coroutines.intrinsics.a.f()) {
                    return q10;
                }
                return Unit.f60915a;
            }
        }

        AnonymousClass1(rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f21536h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.b i11 = kotlinx.coroutines.flow.c.i(SharedSessionRepositoryImpl.this.f21529f.getData(), new C03111(SharedSessionRepositoryImpl.this, null));
                a aVar = new a(SharedSessionRepositoryImpl.this);
                this.f21536h = 1;
                if (i11.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: SharedSessionRepository.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class NotificationType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ NotificationType[] $VALUES;
        public static final NotificationType GENERAL = new NotificationType("GENERAL", 0);
        public static final NotificationType FALLBACK = new NotificationType("FALLBACK", 1);

        private static final /* synthetic */ NotificationType[] $values() {
            return new NotificationType[]{GENERAL, FALLBACK};
        }

        static {
            NotificationType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private NotificationType(String str, int i10) {
        }

        @NotNull
        public static ss.a<NotificationType> getEntries() {
            return $ENTRIES;
        }

        public static NotificationType valueOf(String str) {
            return (NotificationType) Enum.valueOf(NotificationType.class, str);
        }

        public static NotificationType[] values() {
            return (NotificationType[]) $VALUES.clone();
        }
    }

    /* compiled from: SharedSessionRepository.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NotificationType.values().length];
            try {
                iArr[NotificationType.GENERAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationType.FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedSessionRepositoryImpl(@NotNull SessionsSettings sessionsSettings, @NotNull f0 sessionGenerator, @NotNull d0 sessionFirelogPublisher, @NotNull m0 timeProvider, @NotNull DataStore<i> sessionDataStore, @NotNull s processDataManager, @o7.a @NotNull CoroutineContext backgroundDispatcher) {
        Intrinsics.checkNotNullParameter(sessionsSettings, "sessionsSettings");
        Intrinsics.checkNotNullParameter(sessionGenerator, "sessionGenerator");
        Intrinsics.checkNotNullParameter(sessionFirelogPublisher, "sessionFirelogPublisher");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(sessionDataStore, "sessionDataStore");
        Intrinsics.checkNotNullParameter(processDataManager, "processDataManager");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.f21525b = sessionsSettings;
        this.f21526c = sessionGenerator;
        this.f21527d = sessionFirelogPublisher;
        this.f21528e = timeProvider;
        this.f21529f = sessionDataStore;
        this.f21530g = processDataManager;
        this.f21531h = backgroundDispatcher;
        this.f21534k = NotificationType.GENERAL;
        this.f21535l = "";
        gt.g.d(kotlinx.coroutines.i.a(backgroundDispatcher), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n(i iVar) {
        Map<String, h> e10 = iVar.e();
        if (e10 != null) {
            boolean c10 = this.f21530g.c(e10);
            if (c10) {
                Log.d("FirebaseSessions", "Cold app start detected");
            }
            return c10;
        }
        Log.d("FirebaseSessions", "No process data map");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(i iVar) {
        Map<String, h> e10 = iVar.e();
        if (e10 != null) {
            boolean b10 = this.f21530g.b(e10);
            if (b10) {
                Log.d("FirebaseSessions", "Process " + this.f21530g.a() + " is stale");
            }
            return b10;
        }
        Log.d("FirebaseSessions", "No process data for " + this.f21530g.a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean p(i iVar) {
        k d10 = iVar.d();
        boolean z10 = false;
        if (d10 != null) {
            if (kotlin.time.b.i(this.f21528e.a().c(d10), this.f21525b.b()) > 0) {
                z10 = true;
            }
            if (z10) {
                Log.d("FirebaseSessions", "Session " + iVar.f().b() + " is expired");
            }
            return z10;
        }
        Log.d("FirebaseSessions", "Session " + iVar.f().b() + " has not backgrounded yet");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.String r6, com.google.firebase.sessions.SharedSessionRepositoryImpl.NotificationType r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1
            if (r0 == 0) goto L13
            r0 = r8
            com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1 r0 = (com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1) r0
            int r1 = r0.f21558l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f21558l = r1
            goto L18
        L13:
            com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1 r0 = new com.google.firebase.sessions.SharedSessionRepositoryImpl$notifySubscribers$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f21556j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f21558l
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r6 = r0.f21555i
            r7 = r6
            com.google.firebase.sessions.SharedSessionRepositoryImpl$NotificationType r7 = (com.google.firebase.sessions.SharedSessionRepositoryImpl.NotificationType) r7
            java.lang.Object r6 = r0.f21554h
            java.lang.String r6 = (java.lang.String) r6
            kotlin.f.b(r8)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r8)
            r5.f21534k = r7
            java.lang.String r8 = r5.f21535l
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r6)
            if (r8 == 0) goto L4a
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L4a:
            r5.f21535l = r6
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r8 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f21590a
            r0.f21554h = r6
            r0.f21555i = r7
            r0.f21558l = r3
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            java.util.Map r8 = (java.util.Map) r8
            java.util.Collection r8 = r8.values()
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
        L67:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto Lcd
            java.lang.Object r0 = r8.next()
            com.google.firebase.sessions.api.SessionSubscriber r0 = (com.google.firebase.sessions.api.SessionSubscriber) r0
            com.google.firebase.sessions.api.SessionSubscriber$a r1 = new com.google.firebase.sessions.api.SessionSubscriber$a
            r1.<init>(r6)
            r0.c(r1)
            int[] r1 = com.google.firebase.sessions.SharedSessionRepositoryImpl.a.$EnumSwitchMapping$0
            int r2 = r7.ordinal()
            r1 = r1[r2]
            java.lang.String r2 = "Notified "
            if (r1 == r3) goto Lac
            r4 = 2
            if (r1 != r4) goto La6
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            com.google.firebase.sessions.api.SessionSubscriber$Name r0 = r0.b()
            r1.append(r0)
            java.lang.String r0 = " of new fallback session "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
            goto Lc7
        La6:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        Lac:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            com.google.firebase.sessions.api.SessionSubscriber$Name r0 = r0.b()
            r1.append(r0)
            java.lang.String r0 = " of new session "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        Lc7:
            java.lang.String r1 = "FirebaseSessions"
            android.util.Log.d(r1, r0)
            goto L67
        Lcd:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SharedSessionRepositoryImpl.q(java.lang.String, com.google.firebase.sessions.SharedSessionRepositoryImpl$NotificationType, rs.c):java.lang.Object");
    }

    @Override // j9.k0
    public void a() {
        this.f21533j = true;
        if (this.f21532i == null) {
            Log.d("FirebaseSessions", "App foregrounded, but local SessionData not initialized");
            return;
        }
        i m10 = m();
        Log.d("FirebaseSessions", "App foregrounded on " + this.f21530g.a());
        if (p(m10) || o(m10)) {
            gt.g.d(kotlinx.coroutines.i.a(this.f21531h), null, null, new SharedSessionRepositoryImpl$appForeground$1(this, m10, null), 3, null);
        }
    }

    @Override // j9.k0
    public boolean b() {
        return this.f21533j;
    }

    @Override // j9.k0
    public void c() {
        this.f21533j = false;
        if (this.f21532i == null) {
            Log.d("FirebaseSessions", "App backgrounded, but local SessionData not initialized");
            return;
        }
        Log.d("FirebaseSessions", "App backgrounded on " + this.f21530g.a());
        gt.g.d(kotlinx.coroutines.i.a(this.f21531h), null, null, new SharedSessionRepositoryImpl$appBackground$1(this, null), 3, null);
    }

    @NotNull
    public final i m() {
        i iVar = this.f21532i;
        if (iVar != null) {
            return iVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localSessionData");
        return null;
    }

    public final void r(@NotNull i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.f21532i = iVar;
    }
}
