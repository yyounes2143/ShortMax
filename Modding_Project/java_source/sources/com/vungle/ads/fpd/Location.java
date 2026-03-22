package com.vungle.ads.fpd;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: Location.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class Location {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private String country;
    @Nullable
    private Integer dma;
    @Nullable
    private String regionState;

    /* compiled from: Location.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<Location> serializer() {
            return Location$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public Location() {
    }

    public static final void write$Self(@NotNull Location self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.country != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.country);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.regionState != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.regionState);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.dma != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, v0.f69529a, self.dma);
        }
    }

    @NotNull
    public final Location setCountry(@NotNull String country) {
        Intrinsics.checkNotNullParameter(country, "country");
        this.country = country;
        return this;
    }

    @NotNull
    public final Location setDma(int i10) {
        this.dma = Integer.valueOf(i10);
        return this;
    }

    @NotNull
    public final Location setRegionState(@NotNull String regionState) {
        Intrinsics.checkNotNullParameter(regionState, "regionState");
        this.regionState = regionState;
        return this;
    }

    @c
    public /* synthetic */ Location(int i10, String str, String str2, Integer num, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.country = null;
        } else {
            this.country = str;
        }
        if ((i10 & 2) == 0) {
            this.regionState = null;
        } else {
            this.regionState = str2;
        }
        if ((i10 & 4) == 0) {
            this.dma = null;
        } else {
            this.dma = num;
        }
    }

    private static /* synthetic */ void getCountry$annotations() {
    }

    private static /* synthetic */ void getDma$annotations() {
    }

    private static /* synthetic */ void getRegionState$annotations() {
    }
}
