package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalFileFetchProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class l0 extends k0 {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f15849c = new a(null);

    /* compiled from: LocalFileFetchProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(@NotNull Executor executor, @NotNull n2.g pooledByteBufferFactory) {
        super(executor, pooledByteBufferFactory);
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @Nullable
    protected y3.k d(@NotNull ImageRequest imageRequest) throws IOException {
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        return e(new FileInputStream(imageRequest.v().toString()), (int) imageRequest.v().length());
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @NotNull
    protected String f() {
        return "LocalFileFetchProducer";
    }
}
