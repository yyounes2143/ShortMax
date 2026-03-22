package io.ktor.util.cio;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.core.CloseableJVMKt;
import io.ktor.utils.io.jvm.nio.WritingKt;
import io.ktor.utils.io.m;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FileChannels.kt */
@Metadata
@d(c = "io.ktor.util.cio.FileChannelsKt$writeChannel$1", f = "FileChannels.kt", l = {96}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nFileChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$writeChannel$1\n+ 2 Closeable.kt\nio/ktor/utils/io/core/CloseableKt\n*L\n1#1,100:1\n8#2,4:101\n22#2,4:105\n12#2,9:109\n*S KotlinDebug\n*F\n+ 1 FileChannels.kt\nio/ktor/util/cio/FileChannelsKt$writeChannel$1\n*L\n95#1:101,4\n95#1:105,4\n95#1:109,9\n*E\n"})
/* loaded from: classes8.dex */
final class FileChannelsKt$writeChannel$1 extends SuspendLambda implements Function2<m, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f59298h;

    /* renamed from: i  reason: collision with root package name */
    int f59299i;

    /* renamed from: j  reason: collision with root package name */
    int f59300j;

    /* renamed from: k  reason: collision with root package name */
    private /* synthetic */ Object f59301k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ File f59302l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileChannelsKt$writeChannel$1(File file, c<? super FileChannelsKt$writeChannel$1> cVar) {
        super(2, cVar);
        this.f59302l = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        FileChannelsKt$writeChannel$1 fileChannelsKt$writeChannel$1 = new FileChannelsKt$writeChannel$1(this.f59302l, cVar);
        fileChannelsKt$writeChannel$1.f59301k = obj;
        return fileChannelsKt$writeChannel$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull m mVar, @Nullable c<? super Unit> cVar) {
        return ((FileChannelsKt$writeChannel$1) create(mVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        RandomAccessFile randomAccessFile;
        Object f10 = a.f();
        ?? r12 = this.f59300j;
        try {
            if (r12 != 0) {
                if (r12 == 1) {
                    randomAccessFile = (RandomAccessFile) this.f59298h;
                    Closeable closeable = (Closeable) this.f59301k;
                    f.b(obj);
                    r12 = closeable;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                m mVar = (m) this.f59301k;
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.f59302l, "rw");
                ByteReadChannel channel = mVar.getChannel();
                FileChannel channel2 = randomAccessFile2.getChannel();
                Intrinsics.checkNotNullExpressionValue(channel2, "file.channel");
                this.f59301k = randomAccessFile2;
                this.f59298h = randomAccessFile2;
                this.f59299i = 0;
                this.f59300j = 1;
                obj = WritingKt.b(channel, channel2, 0L, this, 2, null);
                if (obj == f10) {
                    return f10;
                }
                randomAccessFile = randomAccessFile2;
                r12 = randomAccessFile2;
            }
            randomAccessFile.setLength(((Number) obj).longValue());
            Unit unit = Unit.f60915a;
            r12.close();
            return Unit.f60915a;
        } catch (Throwable th2) {
            try {
                r12.close();
            } catch (Throwable th3) {
                CloseableJVMKt.a(th2, th3);
            }
            throw th2;
        }
    }
}
