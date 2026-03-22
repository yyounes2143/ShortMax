package com.startshorts.androidplayer.repo.search;

import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SearchLocalDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.search.SearchLocalDS$addKeyword$2", f = "SearchLocalDS.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nSearchLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchLocalDS.kt\ncom/startshorts/androidplayer/repo/search/SearchLocalDS$addKeyword$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"})
/* loaded from: classes7.dex */
public final class SearchLocalDS$addKeyword$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44555h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44556i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchLocalDS$addKeyword$2(String str, c<? super SearchLocalDS$addKeyword$2> cVar) {
        super(2, cVar);
        this.f44556i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SearchLocalDS$addKeyword$2(this.f44556i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SearchLocalDS$addKeyword$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44555h == 0) {
            f.b(obj);
            if (StringsKt.t0(this.f44556i)) {
                return Unit.f60915a;
            }
            List<String> arrayList = new ArrayList<>();
            b bVar = b.f68412a;
            arrayList.addAll(bVar.C1());
            if (arrayList.contains(this.f44556i)) {
                arrayList.remove(this.f44556i);
            }
            arrayList.add(0, this.f44556i);
            if (arrayList.size() >= 35) {
                arrayList = arrayList.subList(0, 35);
            }
            bVar.P4(arrayList);
            Logger logger = Logger.f41511a;
            logger.h("SearchLocalDS", "addKeyword -> total count=" + arrayList.size());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
