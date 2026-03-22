package com.startshorts.androidplayer.manager.event;

import af.h;
import com.startshorts.androidplayer.bean.event.EventInfo;
import gt.g0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.EventManager$logEvents$1", f = "EventManager.kt", l = {256}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvents$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1804:1\n1863#2,2:1805\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvents$1\n*L\n254#1:1805,2\n*E\n"})
/* loaded from: classes6.dex */
public final class EventManager$logEvents$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42495h;

    /* renamed from: i  reason: collision with root package name */
    Object f42496i;

    /* renamed from: j  reason: collision with root package name */
    Object f42497j;

    /* renamed from: k  reason: collision with root package name */
    int f42498k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int[] f42499l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ List<EventInfo> f42500m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventManager$logEvents$1(int[] iArr, List<EventInfo> list, c<? super EventManager$logEvents$1> cVar) {
        super(2, cVar);
        this.f42499l = iArr;
        this.f42500m = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventManager$logEvents$1(this.f42499l, this.f42500m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventManager$logEvents$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List list;
        List<EventInfo> list2;
        int[] iArr;
        Iterator it;
        Object f10 = a.f();
        int i10 = this.f42498k;
        if (i10 != 0) {
            if (i10 == 1) {
                it = (Iterator) this.f42497j;
                list2 = (List) this.f42496i;
                iArr = (int[]) this.f42495h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            list = EventManager.f42464b;
            int[] iArr2 = this.f42499l;
            list2 = this.f42500m;
            iArr = iArr2;
            it = list.iterator();
        }
        while (it.hasNext()) {
            h hVar = (h) it.next();
            if (n.d0(iArr, hVar.c())) {
                this.f42495h = iArr;
                this.f42496i = list2;
                this.f42497j = it;
                this.f42498k = 1;
                if (hVar.f(list2, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
