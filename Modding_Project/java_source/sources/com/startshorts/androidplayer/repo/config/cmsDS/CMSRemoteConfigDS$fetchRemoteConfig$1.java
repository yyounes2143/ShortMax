package com.startshorts.androidplayer.repo.config.cmsDS;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CMSRemoteConfigDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS$fetchRemoteConfig$1", f = "CMSRemoteConfigDS.kt", l = {48, 61}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCMSRemoteConfigDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CMSRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,126:1\n216#2,2:127\n216#2,2:129\n*S KotlinDebug\n*F\n+ 1 CMSRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1\n*L\n98#1:127,2\n101#1:129,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CMSRemoteConfigDS$fetchRemoteConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f43869h;

    /* renamed from: i  reason: collision with root package name */
    Object f43870i;

    /* renamed from: j  reason: collision with root package name */
    int f43871j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ CMSRemoteConfigDS f43872k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CMSRemoteConfigDS$fetchRemoteConfig$1(CMSRemoteConfigDS cMSRemoteConfigDS, c<? super CMSRemoteConfigDS$fetchRemoteConfig$1> cVar) {
        super(2, cVar);
        this.f43872k = cMSRemoteConfigDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CMSRemoteConfigDS$fetchRemoteConfig$1(this.f43872k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CMSRemoteConfigDS$fetchRemoteConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        if (r5.isEmpty() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0083, code lost:
        if (r5 == null) goto L104;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f2  */
    /* JADX WARN: Type inference failed for: r15v16, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v25, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.startshorts.androidplayer.bean.configure.CMSConfigResult, T] */
    /* JADX WARN: Type inference failed for: r7v8, types: [com.startshorts.androidplayer.bean.configure.CMSConfigResult, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS$fetchRemoteConfig$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
