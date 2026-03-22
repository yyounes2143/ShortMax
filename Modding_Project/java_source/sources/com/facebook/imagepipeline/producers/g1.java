package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: QualifiedResourceFetchProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g1 extends k0 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15779d = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f15780c;

    /* compiled from: QualifiedResourceFetchProducer.kt */
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
    public g1(@NotNull Executor executor, @NotNull n2.g pooledByteBufferFactory, @NotNull ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        this.f15780c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @NotNull
    protected y3.k d(@NotNull ImageRequest imageRequest) throws IOException {
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        InputStream openInputStream = this.f15780c.openInputStream(imageRequest.w());
        if (openInputStream != null) {
            y3.k e10 = e(openInputStream, -1);
            Intrinsics.checkNotNullExpressionValue(e10, "getEncodedImage(...)");
            return e10;
        }
        throw new IllegalStateException("ContentResolver returned null InputStream");
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @NotNull
    protected String f() {
        return "QualifiedResourceFetchProducer";
    }
}
