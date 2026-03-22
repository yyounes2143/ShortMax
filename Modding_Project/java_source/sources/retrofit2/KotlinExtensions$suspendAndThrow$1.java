package retrofit2;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KotlinExtensions.kt */
@Metadata
@d(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", l = {119}, m = "suspendAndThrow")
/* loaded from: classes8.dex */
public final class KotlinExtensions$suspendAndThrow$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f65817h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f65818i;

    /* renamed from: j  reason: collision with root package name */
    int f65819j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KotlinExtensions$suspendAndThrow$1(c<? super KotlinExtensions$suspendAndThrow$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f65818i = obj;
        this.f65819j |= Integer.MIN_VALUE;
        return KotlinExtensions.e(null, this);
    }
}
