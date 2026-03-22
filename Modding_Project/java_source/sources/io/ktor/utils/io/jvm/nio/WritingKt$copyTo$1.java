package io.ktor.utils.io.jvm.nio;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Writing.kt */
@Metadata
@d(c = "io.ktor.utils.io.jvm.nio.WritingKt", f = "Writing.kt", l = {50}, m = "copyTo")
/* loaded from: classes8.dex */
public final class WritingKt$copyTo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59628h;

    /* renamed from: i  reason: collision with root package name */
    Object f59629i;

    /* renamed from: j  reason: collision with root package name */
    Object f59630j;

    /* renamed from: k  reason: collision with root package name */
    long f59631k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f59632l;

    /* renamed from: m  reason: collision with root package name */
    int f59633m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WritingKt$copyTo$1(c<? super WritingKt$copyTo$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59632l = obj;
        this.f59633m |= Integer.MIN_VALUE;
        return WritingKt.a(null, null, 0L, this);
    }
}
