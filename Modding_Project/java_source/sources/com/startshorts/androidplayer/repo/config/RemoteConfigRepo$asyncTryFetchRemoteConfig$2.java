package com.startshorts.androidplayer.repo.config;

import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import mg.f;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo$asyncTryFetchRemoteConfig$2", f = "RemoteConfigRepo.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n774#2:234\n865#2,2:235\n1863#2,2:237\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2\n*L\n141#1:234\n141#1:235,2\n143#1:237,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RemoteConfigRepo$asyncTryFetchRemoteConfig$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43797h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<f> f43798i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43799j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RemoteConfigRepo$asyncTryFetchRemoteConfig$2(List<? extends f> list, String str, c<? super RemoteConfigRepo$asyncTryFetchRemoteConfig$2> cVar) {
        super(2, cVar);
        this.f43798i = list;
        this.f43799j = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence j(f fVar) {
        return fVar.tag();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfigRepo$asyncTryFetchRemoteConfig$2(this.f43798i, this.f43799j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteConfigRepo$asyncTryFetchRemoteConfig$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43797h == 0) {
            kotlin.f.b(obj);
            ArrayList<f> arrayList = new ArrayList();
            for (Object obj2 : this.f43798i) {
                if (!((f) obj2).a().b()) {
                    arrayList.add(obj2);
                }
            }
            Logger logger = Logger.f41511a;
            logger.e("RemoteConfigRepo", "asyncTryFetchRemoteConfig -> start, from=" + this.f43799j + ", ds=" + CollectionsKt.A0(arrayList, ",", null, null, 0, null, new Function1() { // from class: com.startshorts.androidplayer.repo.config.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    CharSequence j10;
                    j10 = RemoteConfigRepo$asyncTryFetchRemoteConfig$2.j((f) obj3);
                    return j10;
                }
            }, 30, null));
            for (f fVar : arrayList) {
                fVar.c();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
