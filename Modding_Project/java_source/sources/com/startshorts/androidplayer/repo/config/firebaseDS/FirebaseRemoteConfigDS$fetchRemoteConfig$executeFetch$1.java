package com.startshorts.androidplayer.repo.config.firebaseDS;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.repo.config.QueryDeferredDelegate;
import f9.i;
import f9.j;
import gt.g0;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseRemoteConfigDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.firebaseDS.FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1", f = "FirebaseRemoteConfigDS.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nFirebaseRemoteConfigDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,88:1\n216#2,2:89\n*S KotlinDebug\n*F\n+ 1 FirebaseRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1\n*L\n47#1:89,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43878h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Function1<String, Unit>> f43879i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ FirebaseRemoteConfigDS f43880j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1(Ref.ObjectRef<Function1<String, Unit>> objectRef, FirebaseRemoteConfigDS firebaseRemoteConfigDS, c<? super FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1> cVar) {
        super(2, cVar);
        this.f43879i = objectRef;
        this.f43880j = firebaseRemoteConfigDS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(FirebaseRemoteConfigDS firebaseRemoteConfigDS, Ref.ObjectRef objectRef, Task task) {
        Object obj = null;
        if (task.isSuccessful()) {
            ConcurrentHashMap<String, RemoteConfigValue> concurrentHashMap = new ConcurrentHashMap<>();
            Map<String, j> i10 = com.google.firebase.remoteconfig.a.j().i();
            Intrinsics.checkNotNullExpressionValue(i10, "getAll(...)");
            for (Map.Entry<String, j> entry : i10.entrySet()) {
                String key = entry.getKey();
                String tag = firebaseRemoteConfigDS.tag();
                String a10 = entry.getValue().a();
                Intrinsics.checkNotNullExpressionValue(a10, "asString(...)");
                concurrentHashMap.put(key, new RemoteConfigValue(tag, a10, 0L, 4, null));
            }
            firebaseRemoteConfigDS.o(concurrentHashMap);
            b.f68412a.I3(true);
            firebaseRemoteConfigDS.k("query_succeed");
            QueryDeferredDelegate a11 = firebaseRemoteConfigDS.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("configSize = ");
            ConcurrentHashMap<String, RemoteConfigValue> e10 = firebaseRemoteConfigDS.e();
            if (e10 != null) {
                obj = Integer.valueOf(e10.size());
            }
            sb2.append(obj);
            a11.e(sb2.toString());
            return;
        }
        Function1 function1 = (Function1) objectRef.element;
        Exception exception = task.getException();
        if (exception != null) {
            obj = exception.getMessage();
        }
        function1.invoke(obj);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1(this.f43879i, this.f43880j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43878h == 0) {
            f.b(obj);
            try {
                com.google.firebase.remoteconfig.a.j().s(new i.b().d(TimeUnit.HOURS.toSeconds(2L)).c());
                Task<Boolean> h10 = com.google.firebase.remoteconfig.a.j().h();
                final FirebaseRemoteConfigDS firebaseRemoteConfigDS = this.f43880j;
                final Ref.ObjectRef<Function1<String, Unit>> objectRef = this.f43879i;
                Intrinsics.checkNotNull(h10.addOnCompleteListener(new OnCompleteListener() { // from class: com.startshorts.androidplayer.repo.config.firebaseDS.a
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        FirebaseRemoteConfigDS$fetchRemoteConfig$executeFetch$1.j(FirebaseRemoteConfigDS.this, objectRef, task);
                    }
                }));
            } catch (Exception e10) {
                this.f43879i.element.invoke(e10.getMessage());
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
