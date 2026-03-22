package com.vungle.ads.internal.model;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import kotlinx.serialization.json.a;
import kotlinx.serialization.json.s;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import st.t;
import vt.f;
import vt.r2;
import vt.v0;
import vt.w2;
import ws.b;
/* compiled from: BidPayload.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class BidPayload {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: ad  reason: collision with root package name */
    private final AdPayload f49614ad;
    @Nullable
    private final String adunit;
    @Nullable
    private final List<String> impression;
    @NotNull
    private final a json;
    @Nullable
    private final Integer version;

    /* compiled from: BidPayload.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<BidPayload> serializer() {
            return BidPayload$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public BidPayload() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BidPayload copy$default(BidPayload bidPayload, Integer num, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = bidPayload.version;
        }
        if ((i10 & 2) != 0) {
            str = bidPayload.adunit;
        }
        if ((i10 & 4) != 0) {
            list = bidPayload.impression;
        }
        return bidPayload.copy(num, str, list);
    }

    private final String gzipDecode(byte[] bArr) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream, 1024);
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    Unit unit = Unit.f60915a;
                    b.a(gZIPInputStream, null);
                    b.a(byteArrayInputStream, null);
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString();
                    Intrinsics.checkNotNullExpressionValue(byteArrayOutputStream2, "result.toString()");
                    return byteArrayOutputStream2;
                }
            }
        } finally {
        }
    }

    public static final void write$Self(@NotNull BidPayload self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        String decodedAdsResponse;
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.version != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, v0.f69529a, self.version);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.adunit != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.adunit);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.impression != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, new f(w2.f69539a), self.impression);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 3)) {
            AdPayload adPayload = self.f49614ad;
            AdPayload adPayload2 = null;
            if (self.adunit != null && (decodedAdsResponse = self.getDecodedAdsResponse()) != null) {
                a aVar = self.json;
                KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(AdPayload.class));
                Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                adPayload2 = (AdPayload) aVar.b(c10, decodedAdsResponse);
            }
            if (Intrinsics.areEqual(adPayload, adPayload2)) {
                return;
            }
        }
        output.encodeNullableSerializableElement(serialDesc, 3, AdPayload$$serializer.INSTANCE, self.f49614ad);
    }

    @Nullable
    public final Integer component1() {
        return this.version;
    }

    @Nullable
    public final String component2() {
        return this.adunit;
    }

    @Nullable
    public final List<String> component3() {
        return this.impression;
    }

    @NotNull
    public final BidPayload copy(@Nullable Integer num, @Nullable String str, @Nullable List<String> list) {
        return new BidPayload(num, str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BidPayload)) {
            return false;
        }
        BidPayload bidPayload = (BidPayload) obj;
        if (Intrinsics.areEqual(this.version, bidPayload.version) && Intrinsics.areEqual(this.adunit, bidPayload.adunit) && Intrinsics.areEqual(this.impression, bidPayload.impression)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AdPayload getAdPayload() {
        return this.f49614ad;
    }

    @Nullable
    public final String getAdunit() {
        return this.adunit;
    }

    @Nullable
    public final String getCreativeId() {
        AdPayload adPayload = this.f49614ad;
        if (adPayload != null) {
            return adPayload.getCreativeId();
        }
        return null;
    }

    @Nullable
    public final String getDecodedAdsResponse() throws Throwable {
        byte[] decode = Base64.decode(this.adunit, 0);
        if (decode != null) {
            return gzipDecode(decode);
        }
        return null;
    }

    @Nullable
    public final String getEventId() {
        AdPayload adPayload = this.f49614ad;
        if (adPayload != null) {
            return adPayload.eventId();
        }
        return null;
    }

    @Nullable
    public final List<String> getImpression() {
        return this.impression;
    }

    @Nullable
    public final String getPlacementId() {
        AdPayload adPayload = this.f49614ad;
        if (adPayload != null) {
            return adPayload.placementId();
        }
        return null;
    }

    @Nullable
    public final Integer getVersion() {
        return this.version;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.version;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.adunit;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        List<String> list = this.impression;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "BidPayload(version=" + this.version + ", adunit=" + this.adunit + ", impression=" + this.impression + ')';
    }

    @c
    public /* synthetic */ BidPayload(int i10, Integer num, String str, List list, AdPayload adPayload, r2 r2Var) {
        String decodedAdsResponse;
        AdPayload adPayload2 = null;
        if ((i10 & 1) == 0) {
            this.version = null;
        } else {
            this.version = num;
        }
        if ((i10 & 2) == 0) {
            this.adunit = null;
        } else {
            this.adunit = str;
        }
        if ((i10 & 4) == 0) {
            this.impression = null;
        } else {
            this.impression = list;
        }
        a b10 = s.b(null, new Function1<kotlinx.serialization.json.c, Unit>() { // from class: com.vungle.ads.internal.model.BidPayload.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(kotlinx.serialization.json.c cVar) {
                invoke2(cVar);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull kotlinx.serialization.json.c Json) {
                Intrinsics.checkNotNullParameter(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.json = b10;
        if ((i10 & 8) != 0) {
            this.f49614ad = adPayload;
            return;
        }
        if (this.adunit != null && (decodedAdsResponse = getDecodedAdsResponse()) != null) {
            KSerializer<Object> c10 = t.c(b10.getSerializersModule(), Reflection.typeOf(AdPayload.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            adPayload2 = (AdPayload) b10.b(c10, decodedAdsResponse);
        }
        this.f49614ad = adPayload2;
    }

    public BidPayload(@Nullable Integer num, @Nullable String str, @Nullable List<String> list) {
        String decodedAdsResponse;
        this.version = num;
        this.adunit = str;
        this.impression = list;
        AdPayload adPayload = null;
        a b10 = s.b(null, new Function1<kotlinx.serialization.json.c, Unit>() { // from class: com.vungle.ads.internal.model.BidPayload$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(kotlinx.serialization.json.c cVar) {
                invoke2(cVar);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull kotlinx.serialization.json.c Json) {
                Intrinsics.checkNotNullParameter(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.json = b10;
        if (str != null && (decodedAdsResponse = getDecodedAdsResponse()) != null) {
            KSerializer<Object> c10 = t.c(b10.getSerializersModule(), Reflection.typeOf(AdPayload.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            adPayload = (AdPayload) b10.b(c10, decodedAdsResponse);
        }
        this.f49614ad = adPayload;
    }

    private static /* synthetic */ void getJson$annotations() {
    }

    public /* synthetic */ BidPayload(Integer num, String str, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : list);
    }
}
