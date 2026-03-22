package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalResourceFetchProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class m0 extends k0 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15852d = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Resources f15853c;

    /* compiled from: LocalResourceFetchProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b(ImageRequest imageRequest) {
            String path = imageRequest.w().getPath();
            if (path != null) {
                String substring = path.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                return Integer.parseInt(substring);
            }
            throw new IllegalStateException("Required value was null.");
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(@NotNull Executor executor, @NotNull n2.g pooledByteBufferFactory, @NotNull Resources resources) {
        super(executor, pooledByteBufferFactory);
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.f15853c = resources;
    }

    private final int g(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            assetFileDescriptor = this.f15853c.openRawResourceFd(f15852d.b(imageRequest));
            int length = (int) assetFileDescriptor.getLength();
            try {
                assetFileDescriptor.close();
                return length;
            } catch (IOException unused) {
                return length;
            }
        } catch (Resources.NotFoundException unused2) {
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
        return e(this.f15853c.openRawResource(f15852d.b(imageRequest)), g(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.k0
    @NotNull
    protected String f() {
        return "LocalResourceFetchProducer";
    }
}
