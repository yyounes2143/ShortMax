package com.startshorts.androidplayer.manager.event;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.EventManager$logEvent$2", f = "EventManager.kt", l = {240}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1804:1\n1863#2,2:1805\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvent$2\n*L\n238#1:1805,2\n*E\n"})
/* loaded from: classes6.dex */
public final class EventManager$logEvent$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42484h;

    /* renamed from: i  reason: collision with root package name */
    Object f42485i;

    /* renamed from: j  reason: collision with root package name */
    Object f42486j;

    /* renamed from: k  reason: collision with root package name */
    Object f42487k;

    /* renamed from: l  reason: collision with root package name */
    long f42488l;

    /* renamed from: m  reason: collision with root package name */
    int f42489m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Bundle f42490n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f42491o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ Function0<Map<String, RemoteConfigValue>> f42492p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ int[] f42493q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ long f42494r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public EventManager$logEvent$2(Bundle bundle, String str, Function0<? extends Map<String, RemoteConfigValue>> function0, int[] iArr, long j10, c<? super EventManager$logEvent$2> cVar) {
        super(2, cVar);
        this.f42490n = bundle;
        this.f42491o = str;
        this.f42492p = function0;
        this.f42493q = iArr;
        this.f42494r = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventManager$logEvent$2(this.f42490n, this.f42491o, this.f42492p, this.f42493q, this.f42494r, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventManager$logEvent$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0108  */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.os.Bundle, T] */
    /* JADX WARN: Type inference failed for: r1v19, types: [android.os.Bundle, T] */
    /* JADX WARN: Type inference failed for: r1v26, types: [android.os.Bundle, T] */
    /* JADX WARN: Type inference failed for: r1v31, types: [android.os.Bundle, T] */
    /* JADX WARN: Type inference failed for: r1v36, types: [android.os.Bundle, T] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0133 -> B:53:0x0137). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.event.EventManager$logEvent$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
