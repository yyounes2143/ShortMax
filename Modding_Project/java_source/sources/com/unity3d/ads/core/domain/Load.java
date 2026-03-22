package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.LoadResult;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Load.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Load {

    /* compiled from: Load.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(Load load, Context context, String str, ByteString byteString, HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, AdRequestOuterClass.BannerSize bannerSize, UnityAdsLoadOptions unityAdsLoadOptions, c cVar, int i10, Object obj) {
            AdRequestOuterClass.BannerSize bannerSize2;
            if (obj == null) {
                if ((i10 & 16) != 0) {
                    bannerSize2 = null;
                } else {
                    bannerSize2 = bannerSize;
                }
                return load.invoke(context, str, byteString, headerBiddingAdMarkup, bannerSize2, unityAdsLoadOptions, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object invoke(@NotNull Context context, @NotNull String str, @NotNull ByteString byteString, @NotNull HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, @Nullable AdRequestOuterClass.BannerSize bannerSize, @NotNull UnityAdsLoadOptions unityAdsLoadOptions, @NotNull c<? super LoadResult> cVar);
}
