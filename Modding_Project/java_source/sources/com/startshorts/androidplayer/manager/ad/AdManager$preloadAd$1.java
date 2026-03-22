package com.startshorts.androidplayer.manager.ad;

import com.startshorts.androidplayer.bean.ad.AdScene;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.ad.AdManager$preloadAd$1", f = "AdManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1973:1\n774#2:1974\n865#2,2:1975\n*S KotlinDebug\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1\n*L\n357#1:1974\n357#1:1975,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AdManager$preloadAd$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41690h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AdScene f41691i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdManager$preloadAd$1(AdScene adScene, c<? super AdManager$preloadAd$1> cVar) {
        super(2, cVar);
        this.f41691i = adScene;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdManager$preloadAd$1(this.f41691i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AdManager$preloadAd$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0182  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.ad.AdManager$preloadAd$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
