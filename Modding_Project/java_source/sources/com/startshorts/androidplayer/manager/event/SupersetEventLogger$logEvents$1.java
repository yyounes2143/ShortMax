package com.startshorts.androidplayer.manager.event;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SupersetEventLogger.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.SupersetEventLogger", f = "SupersetEventLogger.kt", l = {218, 223}, m = "logEvents")
/* loaded from: classes6.dex */
public final class SupersetEventLogger$logEvents$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42522h;

    /* renamed from: i  reason: collision with root package name */
    Object f42523i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f42524j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ SupersetEventLogger f42525k;

    /* renamed from: l  reason: collision with root package name */
    int f42526l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupersetEventLogger$logEvents$1(SupersetEventLogger supersetEventLogger, c<? super SupersetEventLogger$logEvents$1> cVar) {
        super(cVar);
        this.f42525k = supersetEventLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42524j = obj;
        this.f42526l |= Integer.MIN_VALUE;
        return this.f42525k.f(null, this);
    }
}
