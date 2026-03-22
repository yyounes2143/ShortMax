package com.moloco.sdk.publisher.bidrequest;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c2;
import vt.l0;
import vt.r2;
import vt.w2;
@StabilityInferred(parameters = 1)
@k
@Metadata
/* loaded from: classes6.dex */
public final class Geo {
    public static final int $stable = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String city;
    @Nullable
    private final String country;
    @Nullable
    private final Float latitude;
    @Nullable
    private final Float longitude;
    @Nullable
    private final String region;
    @Nullable
    private final String zipCode;

    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final KSerializer<Geo> serializer() {
            return Geo$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ Geo(int i10, String str, String str2, String str3, String str4, Float f10, Float f11, r2 r2Var) {
        if (63 != (i10 & 63)) {
            c2.a(i10, 63, Geo$$serializer.INSTANCE.getDescriptor());
        }
        this.city = str;
        this.country = str2;
        this.region = str3;
        this.zipCode = str4;
        this.latitude = f10;
        this.longitude = f11;
    }

    public static /* synthetic */ Geo copy$default(Geo geo, String str, String str2, String str3, String str4, Float f10, Float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = geo.city;
        }
        if ((i10 & 2) != 0) {
            str2 = geo.country;
        }
        String str5 = str2;
        if ((i10 & 4) != 0) {
            str3 = geo.region;
        }
        String str6 = str3;
        if ((i10 & 8) != 0) {
            str4 = geo.zipCode;
        }
        String str7 = str4;
        if ((i10 & 16) != 0) {
            f10 = geo.latitude;
        }
        Float f12 = f10;
        if ((i10 & 32) != 0) {
            f11 = geo.longitude;
        }
        return geo.copy(str, str5, str6, str7, f12, f11);
    }

    public static final /* synthetic */ void write$Self$moloco_sdk_release(Geo geo, d dVar, SerialDescriptor serialDescriptor) {
        w2 w2Var = w2.f69539a;
        dVar.encodeNullableSerializableElement(serialDescriptor, 0, w2Var, geo.city);
        dVar.encodeNullableSerializableElement(serialDescriptor, 1, w2Var, geo.country);
        dVar.encodeNullableSerializableElement(serialDescriptor, 2, w2Var, geo.region);
        dVar.encodeNullableSerializableElement(serialDescriptor, 3, w2Var, geo.zipCode);
        l0 l0Var = l0.f69469a;
        dVar.encodeNullableSerializableElement(serialDescriptor, 4, l0Var, geo.latitude);
        dVar.encodeNullableSerializableElement(serialDescriptor, 5, l0Var, geo.longitude);
    }

    @Nullable
    public final String component1() {
        return this.city;
    }

    @Nullable
    public final String component2() {
        return this.country;
    }

    @Nullable
    public final String component3() {
        return this.region;
    }

    @Nullable
    public final String component4() {
        return this.zipCode;
    }

    @Nullable
    public final Float component5() {
        return this.latitude;
    }

    @Nullable
    public final Float component6() {
        return this.longitude;
    }

    @NotNull
    public final Geo copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Float f10, @Nullable Float f11) {
        return new Geo(str, str2, str3, str4, f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Geo)) {
            return false;
        }
        Geo geo = (Geo) obj;
        if (Intrinsics.areEqual(this.city, geo.city) && Intrinsics.areEqual(this.country, geo.country) && Intrinsics.areEqual(this.region, geo.region) && Intrinsics.areEqual(this.zipCode, geo.zipCode) && Intrinsics.areEqual((Object) this.latitude, (Object) geo.latitude) && Intrinsics.areEqual((Object) this.longitude, (Object) geo.longitude)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCity() {
        return this.city;
    }

    @Nullable
    public final String getCountry() {
        return this.country;
    }

    @Nullable
    public final Float getLatitude() {
        return this.latitude;
    }

    @Nullable
    public final Float getLongitude() {
        return this.longitude;
    }

    @Nullable
    public final String getRegion() {
        return this.region;
    }

    @Nullable
    public final String getZipCode() {
        return this.zipCode;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        String str = this.city;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.country;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.region;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str4 = this.zipCode;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        Float f10 = this.latitude;
        if (f10 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = f10.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        Float f11 = this.longitude;
        if (f11 != null) {
            i10 = f11.hashCode();
        }
        return i15 + i10;
    }

    @NotNull
    public String toString() {
        return "Geo(city=" + this.city + ", country=" + this.country + ", region=" + this.region + ", zipCode=" + this.zipCode + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ')';
    }

    public Geo(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Float f10, @Nullable Float f11) {
        this.city = str;
        this.country = str2;
        this.region = str3;
        this.zipCode = str4;
        this.latitude = f10;
        this.longitude = f11;
    }
}
