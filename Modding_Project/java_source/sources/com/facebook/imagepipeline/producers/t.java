package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DelayProducer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class t implements b1<o2.a<y3.e>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b1<o2.a<y3.e>> f15945a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f15946b;

    public t(@NotNull b1<o2.a<y3.e>> inputProducer, @Nullable ScheduledExecutorService scheduledExecutorService) {
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
        this.f15945a = inputProducer;
        this.f15946b = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(t this$0, n consumer, c1 context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(consumer, "$consumer");
        Intrinsics.checkNotNullParameter(context, "$context");
        this$0.f15945a.b(consumer, context);
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(@NotNull final n<o2.a<y3.e>> consumer, @NotNull final c1 context) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(context, "context");
        ImageRequest o10 = context.o();
        ScheduledExecutorService scheduledExecutorService = this.f15946b;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.schedule(new Runnable() { // from class: com.facebook.imagepipeline.producers.s
                @Override // java.lang.Runnable
                public final void run() {
                    t.d(t.this, consumer, context);
                }
            }, o10.f(), TimeUnit.MILLISECONDS);
        } else {
            this.f15945a.b(consumer, context);
        }
    }
}
