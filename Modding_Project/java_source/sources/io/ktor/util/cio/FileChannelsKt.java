package io.ktor.util.cio;

import gt.e1;
import gt.f0;
import gt.q0;
import io.ktor.utils.io.CoroutinesKt;
import io.ktor.utils.io.e;
import java.io.File;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileChannels.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FileChannelsKt {
    @NotNull
    public static final e a(@NotNull File file, @NotNull CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        return CoroutinesKt.b(e1.f52533a, new f0("file-writer").plus(coroutineContext), true, new FileChannelsKt$writeChannel$1(file, null)).mo4947getChannel();
    }

    public static /* synthetic */ e b(File file, CoroutineContext coroutineContext, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = q0.b();
        }
        return a(file, coroutineContext);
    }
}
