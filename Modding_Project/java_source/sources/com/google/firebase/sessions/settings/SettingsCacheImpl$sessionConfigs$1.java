package com.google.firebase.sessions.settings;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SettingsCache.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$sessionConfigs$1", f = "SettingsCache.kt", l = {64}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class SettingsCacheImpl$sessionConfigs$1 extends SuspendLambda implements Function2<g0, c<? super a>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21674h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SettingsCacheImpl f21675i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsCacheImpl$sessionConfigs$1(SettingsCacheImpl settingsCacheImpl, c<? super SettingsCacheImpl$sessionConfigs$1> cVar) {
        super(2, cVar);
        this.f21675i = settingsCacheImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SettingsCacheImpl$sessionConfigs$1(this.f21675i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super a> cVar) {
        return ((SettingsCacheImpl$sessionConfigs$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f21674h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            b data = this.f21675i.f21669c.getData();
            this.f21674h = 1;
            obj = kotlinx.coroutines.flow.c.y(data, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
