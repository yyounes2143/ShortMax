package coil.util;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Lifecycles.kt */
@Metadata
@d(c = "coil.util.-Lifecycles", f = "Lifecycles.kt", l = {44}, m = "awaitStarted")
/* renamed from: coil.util.-Lifecycles$awaitStarted$1  reason: invalid class name */
/* loaded from: classes2.dex */
public final class Lifecycles$awaitStarted$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f4108h;

    /* renamed from: i  reason: collision with root package name */
    Object f4109i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f4110j;

    /* renamed from: k  reason: collision with root package name */
    int f4111k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Lifecycles$awaitStarted$1(c<? super Lifecycles$awaitStarted$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f4110j = obj;
        this.f4111k |= Integer.MIN_VALUE;
        return Lifecycles.a(null, this);
    }
}
