package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetAdPlayerConfigRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetAdPlayerConfigRequest {
    @Nullable
    Object invoke(@NotNull String str, @NotNull ByteString byteString, @NotNull ByteString byteString2, @Nullable InitializationResponseOuterClass.AdFormat adFormat, @NotNull c<? super UniversalRequestOuterClass.UniversalRequest> cVar);
}
