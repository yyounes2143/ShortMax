package com.facebook.imagepipeline.producers;

import com.facebook.common.memory.PooledByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RemoveImageTransformMetaDataProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h1 implements b1<o2.a<PooledByteBuffer>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b1<y3.k> f15785a;

    /* compiled from: RemoveImageTransformMetaDataProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private final class a extends u<y3.k, o2.a<PooledByteBuffer>> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h1 f15786c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull h1 h1Var, n<o2.a<PooledByteBuffer>> consumer) {
            super(consumer);
            Intrinsics.checkNotNullParameter(consumer, "consumer");
            this.f15786c = h1Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(@Nullable y3.k kVar, int i10) {
            o2.a<PooledByteBuffer> aVar = null;
            try {
                if (y3.k.T(kVar) && kVar != null) {
                    aVar = kVar.l();
                }
                o().b(aVar, i10);
                o2.a.r(aVar);
            } catch (Throwable th2) {
                o2.a.r(aVar);
                throw th2;
            }
        }
    }

    public h1(@NotNull b1<y3.k> inputProducer) {
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
        this.f15785a = inputProducer;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(@NotNull n<o2.a<PooledByteBuffer>> consumer, @NotNull c1 context) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(context, "context");
        this.f15785a.b(new a(this, consumer), context);
    }
}
