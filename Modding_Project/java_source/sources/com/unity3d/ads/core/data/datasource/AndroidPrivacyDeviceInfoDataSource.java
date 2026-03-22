package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.core.device.AdvertisingId;
import com.unity3d.services.core.device.OpenAdvertisingId;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.PiiKt;
import gatewayprotocol.v1.PiiOuterClass;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPrivacyDeviceInfoDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidPrivacyDeviceInfoDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPrivacyDeviceInfoDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidPrivacyDeviceInfoDataSource\n+ 2 PiiKt.kt\ngatewayprotocol/v1/PiiKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n10#2:53\n1#3:54\n1#3:55\n*S KotlinDebug\n*F\n+ 1 AndroidPrivacyDeviceInfoDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidPrivacyDeviceInfoDataSource\n*L\n29#1:53\n29#1:54\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidPrivacyDeviceInfoDataSource implements PrivacyDeviceInfoDataSource {
    @NotNull
    private final Context context;
    @NotNull
    private final FIdDataSource fIdDataSource;
    @NotNull
    private final e<Boolean> idfaInitialized;

    public AndroidPrivacyDeviceInfoDataSource(@NotNull Context context, @NotNull FIdDataSource fIdDataSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fIdDataSource, "fIdDataSource");
        this.context = context;
        this.fIdDataSource = fIdDataSource;
        this.idfaInitialized = o.a(Boolean.FALSE);
    }

    private final String getAdvertisingTrackingId() {
        String advertisingTrackingId = AdvertisingId.getAdvertisingTrackingId();
        if (advertisingTrackingId == null) {
            return "";
        }
        return advertisingTrackingId;
    }

    private final String getOpenAdvertisingTrackingId() {
        String openAdvertisingTrackingId = OpenAdvertisingId.getOpenAdvertisingTrackingId();
        if (openAdvertisingTrackingId == null) {
            return "";
        }
        return openAdvertisingTrackingId;
    }

    @Override // com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource
    @NotNull
    public PiiOuterClass.Pii fetch(@NotNull AllowedPiiOuterClass.AllowedPii allowed) {
        String invoke;
        Intrinsics.checkNotNullParameter(allowed, "allowed");
        if (!this.idfaInitialized.getValue().booleanValue()) {
            this.idfaInitialized.setValue(Boolean.TRUE);
            AdvertisingId.init(this.context);
            OpenAdvertisingId.init(this.context);
        }
        PiiKt.Dsl.Companion companion = PiiKt.Dsl.Companion;
        PiiOuterClass.Pii.Builder newBuilder = PiiOuterClass.Pii.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        final PiiKt.Dsl _create = companion._create(newBuilder);
        if (allowed.getIdfa()) {
            String advertisingTrackingId = getAdvertisingTrackingId();
            if (advertisingTrackingId.length() > 0) {
                UUID fromString = UUID.fromString(advertisingTrackingId);
                Intrinsics.checkNotNullExpressionValue(fromString, "fromString(adId)");
                _create.setAdvertisingId(ProtobufExtensionsKt.toByteString(fromString));
            }
            String openAdvertisingTrackingId = getOpenAdvertisingTrackingId();
            if (openAdvertisingTrackingId.length() > 0) {
                UUID fromString2 = UUID.fromString(openAdvertisingTrackingId);
                Intrinsics.checkNotNullExpressionValue(fromString2, "fromString(openAdId)");
                _create.setOpenAdvertisingTrackingId(ProtobufExtensionsKt.toByteString(fromString2));
            }
        }
        if (allowed.getFid() && (invoke = this.fIdDataSource.invoke()) != null) {
            if (invoke.length() <= 0) {
                invoke = null;
            }
            if (invoke != null) {
                new MutablePropertyReference0Impl(_create) { // from class: com.unity3d.ads.core.data.datasource.AndroidPrivacyDeviceInfoDataSource$fetch$1$3
                    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                    @Nullable
                    public Object get() {
                        return ((PiiKt.Dsl) this.receiver).getFid();
                    }

                    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
                    public void set(@Nullable Object obj) {
                        ((PiiKt.Dsl) this.receiver).setFid((String) obj);
                    }
                }.set(invoke);
            }
        }
        return _create._build();
    }
}
