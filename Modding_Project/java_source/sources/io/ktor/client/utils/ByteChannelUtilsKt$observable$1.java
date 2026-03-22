package io.ktor.client.utils;

import at.n;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelUtils.kt */
@Metadata
@d(c = "io.ktor.client.utils.ByteChannelUtilsKt$observable$1", f = "ByteChannelUtils.kt", l = {23, 24, 26, 31}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nByteChannelUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelUtils.kt\nio/ktor/client/utils/ByteChannelUtilsKt$observable$1\n+ 2 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n*L\n1#1,35:1\n159#2,5:36\n*S KotlinDebug\n*F\n+ 1 ByteChannelUtils.kt\nio/ktor/client/utils/ByteChannelUtilsKt$observable$1\n*L\n19#1:36,5\n*E\n"})
/* loaded from: classes8.dex */
public final class ByteChannelUtilsKt$observable$1 extends SuspendLambda implements Function2<o, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f59162h;

    /* renamed from: i  reason: collision with root package name */
    Object f59163i;

    /* renamed from: j  reason: collision with root package name */
    Object f59164j;

    /* renamed from: k  reason: collision with root package name */
    Object f59165k;

    /* renamed from: l  reason: collision with root package name */
    Object f59166l;

    /* renamed from: m  reason: collision with root package name */
    long f59167m;

    /* renamed from: n  reason: collision with root package name */
    long f59168n;

    /* renamed from: o  reason: collision with root package name */
    int f59169o;

    /* renamed from: p  reason: collision with root package name */
    int f59170p;

    /* renamed from: q  reason: collision with root package name */
    private /* synthetic */ Object f59171q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ Long f59172r;

    /* renamed from: s  reason: collision with root package name */
    final /* synthetic */ ByteReadChannel f59173s;

    /* renamed from: t  reason: collision with root package name */
    final /* synthetic */ n<Long, Long, c<? super Unit>, Object> f59174t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ByteChannelUtilsKt$observable$1(Long l10, ByteReadChannel byteReadChannel, n<? super Long, ? super Long, ? super c<? super Unit>, ? extends Object> nVar, c<? super ByteChannelUtilsKt$observable$1> cVar) {
        super(2, cVar);
        this.f59172r = l10;
        this.f59173s = byteReadChannel;
        this.f59174t = nVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ByteChannelUtilsKt$observable$1 byteChannelUtilsKt$observable$1 = new ByteChannelUtilsKt$observable$1(this.f59172r, this.f59173s, this.f59174t, cVar);
        byteChannelUtilsKt$observable$1.f59171q = obj;
        return byteChannelUtilsKt$observable$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable c<? super Unit> cVar) {
        return ((ByteChannelUtilsKt$observable$1) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00eb A[Catch: all -> 0x0022, TryCatch #1 {all -> 0x0022, blocks: (B:9:0x001d, B:63:0x01a4, B:39:0x00e5, B:41:0x00eb, B:44:0x0104, B:56:0x0172, B:60:0x0185), top: B:70:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0172 A[Catch: all -> 0x0022, TRY_ENTER, TryCatch #1 {all -> 0x0022, blocks: (B:9:0x001d, B:63:0x01a4, B:39:0x00e5, B:41:0x00eb, B:44:0x0104, B:56:0x0172, B:60:0x0185), top: B:70:0x000c }] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x015e -> B:53:0x016b). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.utils.ByteChannelUtilsKt$observable$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
