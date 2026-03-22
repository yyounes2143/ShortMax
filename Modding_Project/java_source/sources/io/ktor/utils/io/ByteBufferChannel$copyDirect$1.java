package io.ktor.utils.io;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ENABLE_FAST_STOP, 1271, 1279}, m = "copyDirect$ktor_io")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$copyDirect$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59338h;

    /* renamed from: i  reason: collision with root package name */
    Object f59339i;

    /* renamed from: j  reason: collision with root package name */
    Object f59340j;

    /* renamed from: k  reason: collision with root package name */
    Object f59341k;

    /* renamed from: l  reason: collision with root package name */
    Object f59342l;

    /* renamed from: m  reason: collision with root package name */
    Object f59343m;

    /* renamed from: n  reason: collision with root package name */
    Object f59344n;

    /* renamed from: o  reason: collision with root package name */
    Object f59345o;

    /* renamed from: p  reason: collision with root package name */
    Object f59346p;

    /* renamed from: q  reason: collision with root package name */
    Object f59347q;

    /* renamed from: r  reason: collision with root package name */
    long f59348r;

    /* renamed from: s  reason: collision with root package name */
    long f59349s;

    /* renamed from: t  reason: collision with root package name */
    boolean f59350t;

    /* renamed from: u  reason: collision with root package name */
    /* synthetic */ Object f59351u;

    /* renamed from: v  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59352v;

    /* renamed from: w  reason: collision with root package name */
    int f59353w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$copyDirect$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$copyDirect$1> cVar) {
        super(cVar);
        this.f59352v = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59351u = obj;
        this.f59353w |= Integer.MIN_VALUE;
        return this.f59352v.I(null, 0L, null, this);
    }
}
