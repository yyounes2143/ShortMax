package com.vungle.ads.internal.network;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import st.k;
/* compiled from: TpatSender.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public enum HttpMethod {
    GET,
    POST;
    
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: TpatSender.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<HttpMethod> serializer() {
            return HttpMethod$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }
}
