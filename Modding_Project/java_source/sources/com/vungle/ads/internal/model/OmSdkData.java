package com.vungle.ads.internal.model;

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
import vt.w2;
/* compiled from: OmSdkData.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class OmSdkData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final String params;
    @Nullable
    private final String vendorKey;
    @Nullable
    private final String vendorURL;

    /* compiled from: OmSdkData.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<OmSdkData> serializer() {
            return OmSdkData$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public OmSdkData() {
        this((String) null, (String) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ OmSdkData copy$default(OmSdkData omSdkData, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = omSdkData.params;
        }
        if ((i10 & 2) != 0) {
            str2 = omSdkData.vendorKey;
        }
        if ((i10 & 4) != 0) {
            str3 = omSdkData.vendorURL;
        }
        return omSdkData.copy(str, str2, str3);
    }

    public static final void write$Self(@NotNull OmSdkData self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.params != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, w2.f69539a, self.params);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.vendorKey != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.vendorKey);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.vendorURL != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.vendorURL);
        }
    }

    @Nullable
    public final String component1() {
        return this.params;
    }

    @Nullable
    public final String component2() {
        return this.vendorKey;
    }

    @Nullable
    public final String component3() {
        return this.vendorURL;
    }

    @NotNull
    public final OmSdkData copy(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new OmSdkData(str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OmSdkData)) {
            return false;
        }
        OmSdkData omSdkData = (OmSdkData) obj;
        if (Intrinsics.areEqual(this.params, omSdkData.params) && Intrinsics.areEqual(this.vendorKey, omSdkData.vendorKey) && Intrinsics.areEqual(this.vendorURL, omSdkData.vendorURL)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getParams() {
        return this.params;
    }

    @Nullable
    public final String getVendorKey() {
        return this.vendorKey;
    }

    @Nullable
    public final String getVendorURL() {
        return this.vendorURL;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.params;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.vendorKey;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.vendorURL;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "OmSdkData(params=" + this.params + ", vendorKey=" + this.vendorKey + ", vendorURL=" + this.vendorURL + ')';
    }

    @c
    public /* synthetic */ OmSdkData(int i10, String str, String str2, String str3, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.params = null;
        } else {
            this.params = str;
        }
        if ((i10 & 2) == 0) {
            this.vendorKey = null;
        } else {
            this.vendorKey = str2;
        }
        if ((i10 & 4) == 0) {
            this.vendorURL = null;
        } else {
            this.vendorURL = str3;
        }
    }

    public OmSdkData(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.params = str;
        this.vendorKey = str2;
        this.vendorURL = str3;
    }

    public /* synthetic */ OmSdkData(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3);
    }
}
