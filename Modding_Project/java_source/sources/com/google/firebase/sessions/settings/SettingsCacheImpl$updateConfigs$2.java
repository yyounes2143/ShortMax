package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: SettingsCache.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class SettingsCacheImpl$updateConfigs$2 extends SuspendLambda implements Function2<a, c<? super a>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21679h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ a f21680i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsCacheImpl$updateConfigs$2(a aVar, c<? super SettingsCacheImpl$updateConfigs$2> cVar) {
        super(2, cVar);
        this.f21680i = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SettingsCacheImpl$updateConfigs$2(this.f21680i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(a aVar, c<? super a> cVar) {
        return ((SettingsCacheImpl$updateConfigs$2) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f21679h == 0) {
            f.b(obj);
            return this.f21680i;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
