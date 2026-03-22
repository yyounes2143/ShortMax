package com.facebook.imagepipeline.producers;

import com.facebook.fresco.middleware.HasExtraData;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProducerContext.kt */
@Metadata
/* loaded from: classes3.dex */
public interface c1 extends HasExtraData {
    @NotNull
    Object d();

    @NotNull
    String getId();

    @NotNull
    t3.t k();

    @NotNull
    e1 l();

    @NotNull
    Priority m();

    @NotNull
    ImageRequest o();

    void p(@NotNull d1 d1Var);

    void q(@Nullable String str, @Nullable String str2);

    @Nullable
    String r();

    void s(@Nullable String str);

    boolean t();

    boolean u();

    @NotNull
    ImageRequest.RequestLevel v();
}
