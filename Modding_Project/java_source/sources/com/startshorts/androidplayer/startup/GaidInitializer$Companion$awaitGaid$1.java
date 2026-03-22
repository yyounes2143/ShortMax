package com.startshorts.androidplayer.startup;

import com.startshorts.androidplayer.startup.GaidInitializer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GaidInitializer.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.startup.GaidInitializer$Companion", f = "GaidInitializer.kt", l = {46}, m = "awaitGaid-IoAF18A")
/* loaded from: classes7.dex */
public final class GaidInitializer$Companion$awaitGaid$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44856h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ GaidInitializer.Companion f44857i;

    /* renamed from: j  reason: collision with root package name */
    int f44858j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GaidInitializer$Companion$awaitGaid$1(GaidInitializer.Companion companion, c<? super GaidInitializer$Companion$awaitGaid$1> cVar) {
        super(cVar);
        this.f44857i = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44856h = obj;
        this.f44858j |= Integer.MIN_VALUE;
        Object a10 = this.f44857i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
