package com.startshorts.androidplayer.repo.push;

import com.startshorts.androidplayer.bean.push.CustomPush;
import com.startshorts.androidplayer.bean.push.CustomPushList;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import eh.b;
import gt.g0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo$queryCustomPush$1", f = "PushRepo.kt", l = {87}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPushRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushRepo.kt\ncom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,399:1\n1863#2:400\n360#2,7:401\n1864#2:408\n*S KotlinDebug\n*F\n+ 1 PushRepo.kt\ncom/startshorts/androidplayer/repo/push/PushRepo$queryCustomPush$1\n*L\n94#1:400\n95#1:401,7\n94#1:408\n*E\n"})
/* loaded from: classes7.dex */
public final class PushRepo$queryCustomPush$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44406h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PushRepo$queryCustomPush$1(c<? super PushRepo$queryCustomPush$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PushRepo$queryCustomPush$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PushRepo$queryCustomPush$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j10;
        PushRemoteDS q10;
        Object c10;
        List<CustomPush> list;
        b p10;
        Object f10 = a.f();
        int i10 = this.f44406h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                c10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            long L = DeviceUtil.f48146a.L();
            j10 = PushRepo.f44383j;
            if (L - j10 >= qe.a.f65321a.value().getCustomPushQueryInterval() * 1000) {
                PushRepo.f44383j = L;
                q10 = PushRepo.f44374a.q();
                this.f44406h = 1;
                c10 = q10.c(this);
                if (c10 == f10) {
                    return f10;
                }
            } else {
                return Unit.f60915a;
            }
        }
        if (Result.j(c10)) {
            CustomPushList customPushList = (CustomPushList) c10;
            List<CustomPush> list2 = null;
            if (customPushList != null) {
                list = customPushList.getPushList();
            } else {
                list = null;
            }
            List<CustomPush> list3 = list;
            if (list3 != null && !list3.isEmpty()) {
                p10 = PushRepo.f44374a.p();
                List<CustomPush> d10 = p10.d();
                if (d10 != null) {
                    list2 = CollectionsKt.g1(d10);
                }
                List<CustomPush> list4 = list2;
                if (list4 != null && !list4.isEmpty()) {
                    for (CustomPush customPush : list) {
                        Iterator<CustomPush> it = list2.iterator();
                        int i11 = 0;
                        while (true) {
                            if (it.hasNext()) {
                                if (Intrinsics.areEqual(customPush.getId(), it.next().getId())) {
                                    break;
                                }
                                i11++;
                            } else {
                                i11 = -1;
                                break;
                            }
                        }
                        if (i11 == -1) {
                            Logger.f41511a.h("PushRepo", "add customPush -> " + customPush);
                            kotlin.coroutines.jvm.internal.a.a(list2.add(customPush));
                        } else {
                            Logger.f41511a.h("PushRepo", "replace customPush -> pushId(" + customPush.getId() + ") newPush(" + customPush + ')');
                            list2.set(i11, customPush);
                        }
                    }
                    ud.b.f68412a.v3(list2);
                } else {
                    ud.b.f68412a.v3(list);
                }
            } else {
                return Unit.f60915a;
            }
        }
        if (Result.g(c10) != null) {
            PushRepo.f44383j = -1L;
        }
        return Unit.f60915a;
    }
}
