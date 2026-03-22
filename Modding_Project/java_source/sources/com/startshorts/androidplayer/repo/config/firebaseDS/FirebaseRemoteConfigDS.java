package com.startshorts.androidplayer.repo.config.firebaseDS;

import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.config.QueryDeferredDelegate;
import com.startshorts.androidplayer.repo.config.firebaseDS.FirebaseRemoteConfigDS;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import mg.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FirebaseRemoteConfigDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FirebaseRemoteConfigDS implements f {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f43875c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, RemoteConfigValue> f43876a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final QueryDeferredDelegate f43877b = new QueryDeferredDelegate(tag());

    /* compiled from: FirebaseRemoteConfigDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(String str) {
        if (e() == null) {
            o(new ConcurrentHashMap<>());
        }
        ConcurrentHashMap<String, RemoteConfigValue> e10 = e();
        if (e10 != null) {
            e10.put("firebase_fake_key", new RemoteConfigValue(tag(), str, 0L, 4, null));
        }
    }

    private static final void l(FirebaseRemoteConfigDS firebaseRemoteConfigDS, Ref.IntRef intRef, Ref.ObjectRef<Function1<String, Unit>> objectRef, boolean z10) {
        Logger logger = Logger.f41511a;
        String tag = firebaseRemoteConfigDS.tag();
        logger.e(tag, "fetchRemoteConfig executeFetch start,isRetry=" + z10 + ",currentRetryCount=" + intRef.element);
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(firebaseRemoteConfigDS.tag());
        sb2.append(".fetchRemoteConfig");
        CoroutineUtil.l(coroutineUtil, sb2.toString(), false, new FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1(objectRef, firebaseRemoteConfigDS, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(String str) {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(Ref.IntRef intRef, int i10, FirebaseRemoteConfigDS firebaseRemoteConfigDS, Ref.ObjectRef objectRef, String str) {
        ud.a aVar = ud.a.f68411a;
        Integer num = null;
        if (aVar.t() && intRef.element < i10 && str != null && StringsKt.b0(str, "Firebase Installations failed to get installation auth token for fetch", false, 2, null)) {
            Logger logger = Logger.f41511a;
            String tag = firebaseRemoteConfigDS.tag();
            logger.e(tag, "fetchRemoteConfig exception -> onForeground=" + aVar.t() + ",retryCount=" + intRef.element + ",errorMessage=" + str);
            intRef.element = intRef.element + 1;
            l(firebaseRemoteConfigDS, intRef, objectRef, true);
        } else {
            firebaseRemoteConfigDS.k("fetchRemoteConfig exception");
            QueryDeferredDelegate a10 = firebaseRemoteConfigDS.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("configSize = ");
            ConcurrentHashMap<String, RemoteConfigValue> e10 = firebaseRemoteConfigDS.e();
            if (e10 != null) {
                num = Integer.valueOf(e10.size());
            }
            sb2.append(num);
            a10.e(sb2.toString());
        }
        return Unit.f60915a;
    }

    @Override // mg.f
    @NotNull
    public QueryDeferredDelegate a() {
        return this.f43877b;
    }

    @Override // mg.f
    public boolean b() {
        return f.a.c(this);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [sg.a, T] */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, sg.b] */
    @Override // mg.f
    public void c() {
        if (a().b()) {
            return;
        }
        a().d();
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new Function1() { // from class: sg.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m10;
                m10 = FirebaseRemoteConfigDS.m((String) obj);
                return m10;
            }
        };
        objectRef.element = new Function1() { // from class: sg.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n10;
                n10 = FirebaseRemoteConfigDS.n(Ref.IntRef.this, r2, this, objectRef, (String) obj);
                return n10;
            }
        };
        l(this, intRef, objectRef, false);
    }

    @Override // mg.f
    @Nullable
    public Object d(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return f.a.a(this, str, cVar);
    }

    @Override // mg.f
    @Nullable
    public ConcurrentHashMap<String, RemoteConfigValue> e() {
        return this.f43876a;
    }

    @Override // mg.f
    @NotNull
    public ConcurrentHashMap<String, RemoteConfigValue> f() {
        return f.a.b(this);
    }

    @Override // mg.f
    @NotNull
    public f g(@NotNull Function0<Unit> function0) {
        return f.a.d(this, function0);
    }

    public void o(@Nullable ConcurrentHashMap<String, RemoteConfigValue> concurrentHashMap) {
        this.f43876a = concurrentHashMap;
    }

    @Override // mg.f
    @NotNull
    public String tag() {
        return "FirebaseRemoteConfigDS";
    }
}
