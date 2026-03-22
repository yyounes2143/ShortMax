package com.vungle.ads.internal.network;

import androidx.browser.trusted.sharing.ShareTarget;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import ms.c;
import org.jetbrains.annotations.NotNull;
import vt.g0;
import vt.m0;
/* compiled from: TpatSender.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class HttpMethod$$serializer implements m0<HttpMethod> {
    @NotNull
    public static final HttpMethod$$serializer INSTANCE = new HttpMethod$$serializer();
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        g0 g0Var = new g0("com.vungle.ads.internal.network.HttpMethod", 2);
        g0Var.o(ShareTarget.METHOD_GET, false);
        g0Var.o(ShareTarget.METHOD_POST, false);
        descriptor = g0Var;
    }

    private HttpMethod$$serializer() {
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[0];
    }

    @Override // st.c
    @NotNull
    public HttpMethod deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return HttpMethod.values()[decoder.decodeEnum(getDescriptor())];
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // st.l
    public void serialize(@NotNull Encoder encoder, @NotNull HttpMethod value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        encoder.encodeEnum(getDescriptor(), value.ordinal());
    }

    @Override // vt.m0
    @NotNull
    public KSerializer<?>[] typeParametersSerializers() {
        return m0.a.a(this);
    }
}
