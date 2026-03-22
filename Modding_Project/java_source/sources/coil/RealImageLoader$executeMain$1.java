package coil;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealImageLoader.kt */
@Metadata
@d(c = "coil.RealImageLoader", f = "RealImageLoader.kt", l = {169, 180, 184}, m = "executeMain")
/* loaded from: classes2.dex */
public final class RealImageLoader$executeMain$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f3765h;

    /* renamed from: i  reason: collision with root package name */
    Object f3766i;

    /* renamed from: j  reason: collision with root package name */
    Object f3767j;

    /* renamed from: k  reason: collision with root package name */
    Object f3768k;

    /* renamed from: l  reason: collision with root package name */
    Object f3769l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f3770m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ RealImageLoader f3771n;

    /* renamed from: o  reason: collision with root package name */
    int f3772o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$executeMain$1(RealImageLoader realImageLoader, c<? super RealImageLoader$executeMain$1> cVar) {
        super(cVar);
        this.f3771n = realImageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object g10;
        this.f3770m = obj;
        this.f3772o |= Integer.MIN_VALUE;
        g10 = this.f3771n.g(null, 0, this);
        return g10;
    }
}
