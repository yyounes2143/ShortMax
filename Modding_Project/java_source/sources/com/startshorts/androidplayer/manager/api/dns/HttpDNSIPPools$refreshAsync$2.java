package com.startshorts.androidplayer.manager.api.dns;

import com.jiuzhou.cdn.CdnHelper;
import gt.g0;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: HttpDNSIPPools.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools$refreshAsync$2", f = "HttpDNSIPPools.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nHttpDNSIPPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1863#2,2:218\n*S KotlinDebug\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2\n*L\n75#1:218,2\n*E\n"})
/* loaded from: classes6.dex */
final class HttpDNSIPPools$refreshAsync$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41825h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<String> f41826i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpDNSIPPools$refreshAsync$2(List<String> list, c<? super HttpDNSIPPools$refreshAsync$2> cVar) {
        super(2, cVar);
        this.f41826i = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HttpDNSIPPools$refreshAsync$2(this.f41826i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HttpDNSIPPools$refreshAsync$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f41825h == 0) {
            f.b(obj);
            HttpDNSIPPools.f41818a.l(this.f41826i);
            for (String str : zb.f.f71552a.d()) {
                String n10 = v.n(str);
                List<String> e10 = HttpDNSIPPools.f41818a.e(n10);
                if (e10 != null) {
                    CdnHelper.f25532a.e(n10, e10);
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
