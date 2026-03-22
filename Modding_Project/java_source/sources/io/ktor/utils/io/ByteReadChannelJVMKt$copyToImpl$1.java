package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteReadChannelJVM.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteReadChannelJVMKt", f = "ByteReadChannelJVM.kt", l = {309, 312}, m = "copyToImpl")
/* loaded from: classes8.dex */
public final class ByteReadChannelJVMKt$copyToImpl$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59479h;

    /* renamed from: i  reason: collision with root package name */
    Object f59480i;

    /* renamed from: j  reason: collision with root package name */
    Object f59481j;

    /* renamed from: k  reason: collision with root package name */
    long f59482k;

    /* renamed from: l  reason: collision with root package name */
    long f59483l;

    /* renamed from: m  reason: collision with root package name */
    int f59484m;

    /* renamed from: n  reason: collision with root package name */
    int f59485n;

    /* renamed from: o  reason: collision with root package name */
    /* synthetic */ Object f59486o;

    /* renamed from: p  reason: collision with root package name */
    int f59487p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteReadChannelJVMKt$copyToImpl$1(rs.c<? super ByteReadChannelJVMKt$copyToImpl$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c10;
        this.f59486o = obj;
        this.f59487p |= Integer.MIN_VALUE;
        c10 = ByteReadChannelJVMKt.c(null, null, 0L, this);
        return c10;
    }
}
