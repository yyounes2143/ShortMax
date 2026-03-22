package io.ktor.client.engine.android;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidURLConnectionUtils.kt */
@Metadata
@d(c = "io.ktor.client.engine.android.AndroidURLConnectionUtilsKt", f = "AndroidURLConnectionUtils.kt", l = {60}, m = "timeoutAwareConnection")
/* loaded from: classes8.dex */
public final class AndroidURLConnectionUtilsKt$timeoutAwareConnection$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58869h;

    /* renamed from: i  reason: collision with root package name */
    Object f58870i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58871j;

    /* renamed from: k  reason: collision with root package name */
    int f58872k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidURLConnectionUtilsKt$timeoutAwareConnection$1(c<? super AndroidURLConnectionUtilsKt$timeoutAwareConnection$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f58871j = obj;
        this.f58872k |= Integer.MIN_VALUE;
        return AndroidURLConnectionUtilsKt.e(null, null, null, this);
    }
}
