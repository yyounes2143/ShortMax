package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalAssetFetchProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g0 extends k0 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15777d = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final AssetManager f15778c;

    /* compiled from: LocalAssetFetchProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(ImageRequest imageRequest) {
            String path = imageRequest.w().getPath();
            Intrinsics.checkNotNull(path);
            String substring = path.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(@NotNull Executor executor, @NotNull n2.g pooledByteBufferFactory, @NotNull AssetManager assetManager) {
        super(executor, pooledByteBufferFactory);
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
        Intrinsics.checkNotNullParameter(assetManager, "assetManager");
        this.f15778c = assetManager;
    }

    private final int g(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f15778c.openFd(f15777d.b(imageRequest));
            int length = (int) assetFileDescriptor.getLength();
            try {
                assetFileDescriptor.close();
                return length;
            } catch (IOException unused) {
                return length;
            }
        } catch (IOException unused2) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused3) {
                }
            }
            return -1;
        } catch (Throwable th2) {
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused4) {
                }
            }
            throw th2;
        }
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @Nullable
    protected y3.k d(@NotNull ImageRequest imageRequest) throws IOException {
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        return e(this.f15778c.open(f15777d.b(imageRequest), 2), g(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @NotNull
    protected String f() {
        return "LocalAssetFetchProducer";
    }
}
