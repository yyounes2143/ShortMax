package io.ktor.util;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannels.kt */
@Metadata
@d(c = "io.ktor.util.ByteChannelsKt", f = "ByteChannels.kt", l = {91}, m = "toByteArray")
/* loaded from: classes8.dex */
public final class ByteChannelsKt$toByteArray$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f59286h;

    /* renamed from: i  reason: collision with root package name */
    int f59287i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteChannelsKt$toByteArray$1(c<? super ByteChannelsKt$toByteArray$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59286h = obj;
        this.f59287i |= Integer.MIN_VALUE;
        return ByteChannelsKt.a(null, this);
    }
}
