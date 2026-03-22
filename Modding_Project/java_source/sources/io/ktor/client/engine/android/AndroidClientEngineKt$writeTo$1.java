package io.ktor.client.engine.android;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidClientEngine.kt */
@Metadata
@d(c = "io.ktor.client.engine.android.AndroidClientEngineKt", f = "AndroidClientEngine.kt", l = {116, 123}, m = "writeTo")
/* loaded from: classes8.dex */
public final class AndroidClientEngineKt$writeTo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58856h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f58857i;

    /* renamed from: j  reason: collision with root package name */
    int f58858j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidClientEngineKt$writeTo$1(c<? super AndroidClientEngineKt$writeTo$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f58857i = obj;
        this.f58858j |= Integer.MIN_VALUE;
        return AndroidClientEngineKt.b(null, null, null, this);
    }
}
