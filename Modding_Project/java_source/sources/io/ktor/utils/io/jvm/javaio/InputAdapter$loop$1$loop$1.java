package io.ktor.utils.io.jvm.javaio;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Blocking.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.jvm.javaio.InputAdapter$loop$1", f = "Blocking.kt", l = {319, 38}, m = "loop")
/* loaded from: classes8.dex */
public final class InputAdapter$loop$1$loop$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59601h;

    /* renamed from: i  reason: collision with root package name */
    Object f59602i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59603j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ InputAdapter$loop$1 f59604k;

    /* renamed from: l  reason: collision with root package name */
    int f59605l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputAdapter$loop$1$loop$1(InputAdapter$loop$1 inputAdapter$loop$1, rs.c<? super InputAdapter$loop$1$loop$1> cVar) {
        super(cVar);
        this.f59604k = inputAdapter$loop$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59603j = obj;
        this.f59605l |= Integer.MIN_VALUE;
        return this.f59604k.h(this);
    }
}
