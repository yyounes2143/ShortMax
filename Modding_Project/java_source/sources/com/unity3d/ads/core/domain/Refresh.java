package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Refresh.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Refresh {
    @Nullable
    Object invoke(@NotNull ByteString byteString, @NotNull ByteString byteString2, @NotNull c<? super AdDataRefreshResponseOuterClass.AdDataRefreshResponse> cVar);
}
