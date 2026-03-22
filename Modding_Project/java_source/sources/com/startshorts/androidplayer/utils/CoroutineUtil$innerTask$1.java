package com.startshorts.androidplayer.utils;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.CoroutineUtil", f = "CoroutineUtil.kt", l = {187}, m = "innerTask")
/* loaded from: classes7.dex */
public final class CoroutineUtil$innerTask$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f48136h;

    /* renamed from: i  reason: collision with root package name */
    Object f48137i;

    /* renamed from: j  reason: collision with root package name */
    boolean f48138j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f48139k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ CoroutineUtil f48140l;

    /* renamed from: m  reason: collision with root package name */
    int f48141m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineUtil$innerTask$1(CoroutineUtil coroutineUtil, c<? super CoroutineUtil$innerTask$1> cVar) {
        super(cVar);
        this.f48140l = coroutineUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f48139k = obj;
        this.f48141m |= Integer.MIN_VALUE;
        return this.f48140l.s(null, null, false, null, this);
    }
}
