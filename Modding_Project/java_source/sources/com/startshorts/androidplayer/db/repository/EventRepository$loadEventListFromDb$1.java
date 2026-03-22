package com.startshorts.androidplayer.db.repository;

import com.startshorts.androidplayer.db.model.DbEvent;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
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
/* compiled from: EventRepository.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.db.repository.EventRepository$loadEventListFromDb$1", f = "EventRepository.kt", l = {26}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nEventRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventRepository.kt\ncom/startshorts/androidplayer/db/repository/EventRepository$loadEventListFromDb$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1663#2,8:166\n*S KotlinDebug\n*F\n+ 1 EventRepository.kt\ncom/startshorts/androidplayer/db/repository/EventRepository$loadEventListFromDb$1\n*L\n31#1:166,8\n*E\n"})
/* loaded from: classes6.dex */
public final class EventRepository$loadEventListFromDb$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41483h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventRepository$loadEventListFromDb$1(c<? super EventRepository$loadEventListFromDb$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventRepository$loadEventListFromDb$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventRepository$loadEventListFromDb$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List<DbEvent> list;
        List O;
        List O2;
        EventRepository eventRepository;
        List O3;
        List O4;
        List O5;
        Object f10 = a.f();
        int i10 = this.f41483h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            EventRepository eventRepository2 = EventRepository.f41474b;
            this.f41483h = 1;
            obj = eventRepository2.G(this);
            if (obj == f10) {
                return f10;
            }
        }
        vd.a aVar = (vd.a) obj;
        if (aVar != null) {
            list = aVar.b();
        } else {
            list = null;
        }
        List<DbEvent> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            EventRepository eventRepository3 = EventRepository.f41474b;
            O = eventRepository3.O();
            Intrinsics.checkNotNullExpressionValue(O, "access$getMEventList(...)");
            synchronized (O) {
                try {
                    O2 = eventRepository3.O();
                    Intrinsics.checkNotNullExpressionValue(O2, "access$getMEventList(...)");
                    List g12 = CollectionsKt.g1(CollectionsKt.d1(O2));
                    g12.addAll(list);
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : g12) {
                        if (hashSet.add(((DbEvent) obj2).getEventId())) {
                            arrayList.add(obj2);
                        }
                    }
                    eventRepository = EventRepository.f41474b;
                    O3 = eventRepository.O();
                    O3.clear();
                    O4 = eventRepository.O();
                    O4.addAll(arrayList);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("loadEventListFromDb -> combineSize(");
            O5 = eventRepository.O();
            sb2.append(O5.size());
            sb2.append(')');
            logger.h("EventRepository", sb2.toString());
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }
}
