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
@d(c = "io.ktor.client.engine.android.AndroidClientEngine", f = "AndroidClientEngine.kt", l = {35, 79, 82}, m = "execute")
/* loaded from: classes8.dex */
public final class AndroidClientEngine$execute$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58844h;

    /* renamed from: i  reason: collision with root package name */
    Object f58845i;

    /* renamed from: j  reason: collision with root package name */
    Object f58846j;

    /* renamed from: k  reason: collision with root package name */
    Object f58847k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f58848l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ AndroidClientEngine f58849m;

    /* renamed from: n  reason: collision with root package name */
    int f58850n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidClientEngine$execute$1(AndroidClientEngine androidClientEngine, c<? super AndroidClientEngine$execute$1> cVar) {
        super(cVar);
        this.f58849m = androidClientEngine;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f58848l = obj;
        this.f58850n |= Integer.MIN_VALUE;
        return this.f58849m.r0(null, this);
    }
}
