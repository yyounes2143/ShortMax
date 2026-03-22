package com.moloco.sdk.publisher.bidrequest;

import com.moloco.sdk.Init$SDKInitResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public final class GeoKt {
    @NotNull
    public static final Geo toGeo(@NotNull Init$SDKInitResponse.Geo geo) {
        Intrinsics.checkNotNullParameter(geo, "<this>");
        return new Geo(geo.getCity(), geo.getCountryIso3Code(), geo.getCountryIso2Code(), geo.getZipCode(), Float.valueOf(geo.getLatitude()), Float.valueOf(geo.getLongitude()));
    }
}
