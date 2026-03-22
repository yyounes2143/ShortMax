package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiskCacheDecision.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DiskCacheDecision {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DiskCacheDecision f15702a = new DiskCacheDecision();

    /* compiled from: DiskCacheDecision.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DiskCacheDecisionNoDiskCacheChosenException extends Exception {
        public DiskCacheDecisionNoDiskCacheChosenException(@Nullable String str) {
            super(str);
        }
    }

    private DiskCacheDecision() {
    }

    @Nullable
    public static final r3.i a(@NotNull ImageRequest imageRequest, @Nullable r3.i iVar, @Nullable r3.i iVar2, @Nullable Map<String, r3.i> map) {
        String g10;
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        if (imageRequest.d() == ImageRequest.CacheChoice.SMALL) {
            return iVar;
        }
        if (imageRequest.d() == ImageRequest.CacheChoice.DEFAULT) {
            return iVar2;
        }
        if (imageRequest.d() == ImageRequest.CacheChoice.DYNAMIC && map != null && (g10 = imageRequest.g()) != null) {
            return map.get(g10);
        }
        return null;
    }
}
