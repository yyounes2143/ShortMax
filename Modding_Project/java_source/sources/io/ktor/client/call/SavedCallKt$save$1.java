package io.ktor.client.call;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SavedCall.kt */
@Metadata
@d(c = "io.ktor.client.call.SavedCallKt", f = "SavedCall.kt", l = {73}, m = "save")
/* loaded from: classes8.dex */
public final class SavedCallKt$save$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58803h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f58804i;

    /* renamed from: j  reason: collision with root package name */
    int f58805j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SavedCallKt$save$1(c<? super SavedCallKt$save$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f58804i = obj;
        this.f58805j |= Integer.MIN_VALUE;
        return SavedCallKt.a(null, this);
    }
}
