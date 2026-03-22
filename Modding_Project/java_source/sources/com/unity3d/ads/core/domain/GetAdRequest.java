package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetAdRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetAdRequest {

    /* compiled from: GetAdRequest.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(GetAdRequest getAdRequest, String str, ByteString byteString, AdRequestOuterClass.BannerSize bannerSize, c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 4) != 0) {
                    bannerSize = null;
                }
                return getAdRequest.invoke(str, byteString, bannerSize, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object invoke(@NotNull String str, @NotNull ByteString byteString, @Nullable AdRequestOuterClass.BannerSize bannerSize, @NotNull c<? super UniversalRequestOuterClass.UniversalRequest> cVar);
}
