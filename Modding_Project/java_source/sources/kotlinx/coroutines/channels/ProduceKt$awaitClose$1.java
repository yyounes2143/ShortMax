package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Produce.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {302}, m = "awaitClose")
/* loaded from: classes8.dex */
public final class ProduceKt$awaitClose$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61375h;

    /* renamed from: i  reason: collision with root package name */
    Object f61376i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61377j;

    /* renamed from: k  reason: collision with root package name */
    int f61378k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProduceKt$awaitClose$1(rs.c<? super ProduceKt$awaitClose$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61377j = obj;
        this.f61378k |= Integer.MIN_VALUE;
        return ProduceKt.a(null, null, this);
    }
}
