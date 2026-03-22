package io.ktor.utils.io.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SequentialCopyTo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.internal.SequentialCopyToKt", f = "SequentialCopyTo.kt", l = {60, 66}, m = "copyToTail")
/* loaded from: classes8.dex */
public final class SequentialCopyToKt$copyToTail$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59532h;

    /* renamed from: i  reason: collision with root package name */
    Object f59533i;

    /* renamed from: j  reason: collision with root package name */
    int f59534j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f59535k;

    /* renamed from: l  reason: collision with root package name */
    int f59536l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SequentialCopyToKt$copyToTail$1(rs.c<? super SequentialCopyToKt$copyToTail$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c10;
        this.f59535k = obj;
        this.f59536l |= Integer.MIN_VALUE;
        c10 = SequentialCopyToKt.c(null, null, 0L, this);
        return c10;
    }
}
