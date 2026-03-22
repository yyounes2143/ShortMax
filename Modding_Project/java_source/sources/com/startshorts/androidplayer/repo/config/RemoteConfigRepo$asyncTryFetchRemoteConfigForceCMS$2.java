package com.startshorts.androidplayer.repo.config;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2", f = "RemoteConfigRepo.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,233:1\n774#2:234\n865#2,2:235\n1863#2,2:237\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2\n*L\n164#1:234\n164#1:235,2\n166#1:237,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43800h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<CMSRemoteConfigDS> f43801i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43802j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2(List<CMSRemoteConfigDS> list, String str, c<? super RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2> cVar) {
        super(2, cVar);
        this.f43801i = list;
        this.f43802j = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence j(CMSRemoteConfigDS cMSRemoteConfigDS) {
        return cMSRemoteConfigDS.tag();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2(this.f43801i, this.f43802j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f43800h == 0) {
            f.b(obj);
            ArrayList<CMSRemoteConfigDS> arrayList = new ArrayList();
            for (Object obj2 : this.f43801i) {
                if (!((CMSRemoteConfigDS) obj2).a().b()) {
                    arrayList.add(obj2);
                }
            }
            Logger logger = Logger.f41511a;
            logger.e("RemoteConfigRepo", "asyncTryFetchRemoteConfig -> start, from=" + this.f43802j + ", ds=" + CollectionsKt.A0(arrayList, ",", null, null, 0, null, new Function1() { // from class: com.startshorts.androidplayer.repo.config.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    CharSequence j10;
                    j10 = RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2.j((CMSRemoteConfigDS) obj3);
                    return j10;
                }
            }, 30, null));
            for (CMSRemoteConfigDS cMSRemoteConfigDS : arrayList) {
                cMSRemoteConfigDS.l();
                cMSRemoteConfigDS.c();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
