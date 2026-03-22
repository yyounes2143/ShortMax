package io.ktor.utils.io.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SequentialCopyTo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.internal.SequentialCopyToKt", f = "SequentialCopyTo.kt", l = {26, 31, 39}, m = "copyToSequentialImpl")
/* loaded from: classes8.dex */
public final class SequentialCopyToKt$copyToSequentialImpl$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59525h;

    /* renamed from: i  reason: collision with root package name */
    Object f59526i;

    /* renamed from: j  reason: collision with root package name */
    long f59527j;

    /* renamed from: k  reason: collision with root package name */
    long f59528k;

    /* renamed from: l  reason: collision with root package name */
    long f59529l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f59530m;

    /* renamed from: n  reason: collision with root package name */
    int f59531n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SequentialCopyToKt$copyToSequentialImpl$1(rs.c<? super SequentialCopyToKt$copyToSequentialImpl$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59530m = obj;
        this.f59531n |= Integer.MIN_VALUE;
        return SequentialCopyToKt.b(null, null, 0L, this);
    }
}
