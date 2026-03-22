package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetAdDataRefreshRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetAdDataRefreshRequest {
    @Nullable
    Object invoke(@NotNull ByteString byteString, @NotNull ByteString byteString2, @NotNull c<? super UniversalRequestOuterClass.UniversalRequest> cVar);
}
