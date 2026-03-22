package com.facebook.imagepipeline.producers;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BitmapMemoryCacheGetProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g extends i {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15776d = new a(null);

    /* compiled from: BitmapMemoryCacheGetProducer.kt */
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
    public g(@NotNull r3.w<f2.a, y3.e> memoryCache, @NotNull r3.j cacheKeyFactory, @NotNull b1<o2.a<y3.e>> inputProducer) {
        super(memoryCache, cacheKeyFactory, inputProducer);
        Intrinsics.checkNotNullParameter(memoryCache, "memoryCache");
        Intrinsics.checkNotNullParameter(cacheKeyFactory, "cacheKeyFactory");
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
    }

    @Override // com.facebook.imagepipeline.producers.i
    @NotNull
    protected String d() {
        return "pipe_ui";
    }

    @Override // com.facebook.imagepipeline.producers.i
    @NotNull
    protected String e() {
        return "BitmapMemoryCacheGetProducer";
    }

    @Override // com.facebook.imagepipeline.producers.i
    @NotNull
    protected n<o2.a<y3.e>> g(@NotNull n<o2.a<y3.e>> consumer, @NotNull f2.a cacheKey, boolean z10) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        return consumer;
    }
}
