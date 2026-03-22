package com.unity3d.ads.core.domain.attribution;

import android.adservices.AdServicesState;
import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.os.ext.SdkExtensions;
import android.view.InputEvent;
import androidx.core.os.b;
import androidx.privacysandbox.ads.adservices.measurement.m;
import androidx.privacysandbox.ads.adservices.measurement.n;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.domain.ISDKDispatchers;
import gt.d1;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.f;
/* compiled from: AndroidAttribution.kt */
@Metadata
@SuppressLint({"NewApi", "MissingPermission"})
@SourceDebugExtension({"SMAP\nAndroidAttribution.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAttribution.kt\ncom/unity3d/ads/core/domain/attribution/AndroidAttribution\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,130:1\n29#2:131\n*S KotlinDebug\n*F\n+ 1 AndroidAttribution.kt\ncom/unity3d/ads/core/domain/attribution/AndroidAttribution\n*L\n124#1:131\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidAttribution {
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final i measurementManager$delegate;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidAttribution(@NotNull final Context context, @NotNull ISDKDispatchers dispatchers, @NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.dispatchers = dispatchers;
        this.sessionRepository = sessionRepository;
        this.measurementManager$delegate = c.b(new Function0<MeasurementManager>() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$measurementManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final MeasurementManager invoke() {
                MeasurementManager measurementManager;
                measurementManager = AndroidAttribution.this.getMeasurementManager(context);
                return measurementManager;
            }
        });
    }

    private final MeasurementManager getMeasurementManager() {
        return n.a(this.measurementManager$delegate.getValue());
    }

    private final Uri getUri(String str, AdObject adObject) {
        Uri parse = Uri.parse(str);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
        Uri build = parse.buildUpon().appendQueryParameter("sessionToken", ProtobufExtensionsKt.toBase64$default(this.sessionRepository.getSessionToken(), false, 1, null)).appendQueryParameter(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN, ProtobufExtensionsKt.toBase64$default(adObject.getTrackingToken(), false, 1, null)).build();
        Intrinsics.checkNotNullExpressionValue(build, "baseUrl.toUri()\n        …4())\n            .build()");
        return build;
    }

    @Nullable
    public final Object isAvailable(@NotNull rs.c<? super Boolean> cVar) {
        int extensionVersion;
        boolean isAdServicesStateEnabled;
        Unit unit;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
            if (extensionVersion < 4) {
                return a.a(false);
            }
            if (getMeasurementManager() != null) {
                isAdServicesStateEnabled = AdServicesState.isAdServicesStateEnabled();
                if (!isAdServicesStateEnabled) {
                    return a.a(false);
                }
                final f fVar = new f(kotlin.coroutines.intrinsics.a.c(cVar));
                MeasurementManager measurementManager = getMeasurementManager();
                if (measurementManager != null) {
                    measurementManager.getMeasurementApiStatus(d1.a(this.dispatchers.getDefault()), b.a(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$isAvailable$2$1
                        public /* bridge */ /* synthetic */ void onResult(Object obj) {
                            onResult(((Number) obj).intValue());
                        }

                        public void onError(@NotNull Exception error) {
                            Intrinsics.checkNotNullParameter(error, "error");
                            rs.c<Boolean> cVar2 = fVar;
                            Result.a aVar = Result.f60901b;
                            cVar2.resumeWith(Result.d(Boolean.FALSE));
                        }

                        public void onResult(int i10) {
                            rs.c<Boolean> cVar2 = fVar;
                            Result.a aVar = Result.f60901b;
                            cVar2.resumeWith(Result.d(Boolean.valueOf(i10 == 1)));
                        }
                    }));
                    unit = Unit.f60915a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    Result.a aVar = Result.f60901b;
                    fVar.resumeWith(Result.d(a.a(false)));
                }
                Object a10 = fVar.a();
                if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
            return a.a(false);
        }
        return a.a(false);
    }

    @Nullable
    public final Object registerClick(@NotNull String str, @NotNull AdObject adObject, @NotNull rs.c<? super Boolean> cVar) {
        WebViewContainer webViewContainer;
        kt.i<InputEvent> lastInputEvent;
        InputEvent value;
        Unit unit;
        if (getMeasurementManager() == null) {
            return a.a(false);
        }
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer != null && (webViewContainer = adPlayer.getWebViewContainer()) != null && (lastInputEvent = webViewContainer.getLastInputEvent()) != null && (value = lastInputEvent.getValue()) != null) {
            final f fVar = new f(kotlin.coroutines.intrinsics.a.c(cVar));
            MeasurementManager measurementManager = getMeasurementManager();
            if (measurementManager != null) {
                measurementManager.registerSource(getUri(str, adObject), value, d1.a(this.dispatchers.getDefault()), b.a(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$registerClick$2$1
                    public void onResult(@NotNull Object p02) {
                        Intrinsics.checkNotNullParameter(p02, "p0");
                        rs.c<Boolean> cVar2 = fVar;
                        Result.a aVar = Result.f60901b;
                        cVar2.resumeWith(Result.d(Boolean.TRUE));
                    }

                    public void onError(@NotNull Exception error) {
                        Intrinsics.checkNotNullParameter(error, "error");
                        rs.c<Boolean> cVar2 = fVar;
                        Result.a aVar = Result.f60901b;
                        cVar2.resumeWith(Result.d(Boolean.FALSE));
                    }
                }));
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit == null) {
                Result.a aVar = Result.f60901b;
                fVar.resumeWith(Result.d(a.a(false)));
            }
            Object a10 = fVar.a();
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
            return a10;
        }
        return a.a(false);
    }

    @Nullable
    public final Object registerView(@NotNull String str, @NotNull AdObject adObject, @NotNull rs.c<? super Boolean> cVar) {
        if (getMeasurementManager() == null) {
            return a.a(false);
        }
        final f fVar = new f(kotlin.coroutines.intrinsics.a.c(cVar));
        MeasurementManager measurementManager = getMeasurementManager();
        Unit unit = null;
        if (measurementManager != null) {
            measurementManager.registerSource(getUri(str, adObject), null, d1.a(this.dispatchers.getDefault()), b.a(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$registerView$2$1
                public void onResult(@NotNull Object p02) {
                    Intrinsics.checkNotNullParameter(p02, "p0");
                    rs.c<Boolean> cVar2 = fVar;
                    Result.a aVar = Result.f60901b;
                    cVar2.resumeWith(Result.d(Boolean.TRUE));
                }

                public void onError(@NotNull Exception error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    rs.c<Boolean> cVar2 = fVar;
                    Result.a aVar = Result.f60901b;
                    cVar2.resumeWith(Result.d(Boolean.FALSE));
                }
            }));
            unit = Unit.f60915a;
        }
        if (unit == null) {
            Result.a aVar = Result.f60901b;
            fVar.resumeWith(Result.d(a.a(false)));
        }
        Object a10 = fVar.a();
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MeasurementManager getMeasurementManager(Context context) {
        int extensionVersion;
        if (Device.getApiLevel() < 33) {
            return null;
        }
        extensionVersion = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
        if (extensionVersion < 4) {
            return null;
        }
        return n.a(context.getSystemService(m.a()));
    }
}
