package io.ktor.utils.io.jvm.javaio;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Writing.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.jvm.javaio.WritingKt", f = "Writing.kt", l = {22}, m = "copyTo")
/* loaded from: classes8.dex */
public final class WritingKt$copyTo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59616h;

    /* renamed from: i  reason: collision with root package name */
    Object f59617i;

    /* renamed from: j  reason: collision with root package name */
    Object f59618j;

    /* renamed from: k  reason: collision with root package name */
    long f59619k;

    /* renamed from: l  reason: collision with root package name */
    long f59620l;

    /* renamed from: m  reason: collision with root package name */
    long f59621m;

    /* renamed from: n  reason: collision with root package name */
    /* synthetic */ Object f59622n;

    /* renamed from: o  reason: collision with root package name */
    int f59623o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WritingKt$copyTo$1(rs.c<? super WritingKt$copyTo$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59622n = obj;
        this.f59623o |= Integer.MIN_VALUE;
        return WritingKt.a(null, null, 0L, this);
    }
}
