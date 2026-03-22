package com.moloco.sdk.internal.services.init;

import android.net.Uri;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.MetricsRequest$SDKInitFailureTrackingRequest;
import com.moloco.sdk.MetricsRequest$SDKInitSuccessTrackingRequest;
import com.moloco.sdk.MetricsRequest$SDKInitTrackingRequest;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.init.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f;
import io.ktor.http.a;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class n implements m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33501a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f f33502b;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f33503a;

        static {
            int[] iArr = new int[b.values().length];
            try {
                iArr[b.f33416f.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[b.f33411a.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[b.f33412b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[b.f33413c.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[b.f33414d.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[b.f33415e.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f33503a = iArr;
        }
    }

    public n(@NotNull String endpoint, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f httpRequestClient) {
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        Intrinsics.checkNotNullParameter(httpRequestClient, "httpRequestClient");
        this.f33501a = endpoint;
        this.f33502b = httpRequestClient;
    }

    @Override // com.moloco.sdk.internal.services.init.m
    @Nullable
    public Object a(long j10, @NotNull rs.c<? super Unit> cVar) {
        MolocoLogger molocoLogger;
        try {
            molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debug$default(molocoLogger, "InitTrackingApi", "Reporting InitTracking success", false, 4, null);
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "InitTrackingApi", "Failed to send notifySuccess post request", e10, false, 8, null);
        }
        if (this.f33501a.length() == 0) {
            MolocoLogger.debug$default(molocoLogger, "InitTrackingApi", "SDK InitTracking disabled", false, 4, null);
            return Unit.f60915a;
        }
        Uri build = Uri.parse(this.f33501a).buildUpon().build();
        com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f fVar = this.f33502b;
        String uri = build.toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        f.a.a(fVar, uri, d(j10), a.C0827a.f59224a.b(), null, 8, null);
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.internal.services.init.m
    @Nullable
    public Object b(@NotNull i iVar, long j10, @NotNull rs.c<? super Unit> cVar) {
        try {
            if (iVar instanceof i.a) {
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.debug$default(molocoLogger, "InitTrackingApi", "Reporting InitTracking client failure: " + ((i.a) iVar).a(), false, 4, null);
            } else if (iVar instanceof i.b) {
                MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                MolocoLogger.debug$default(molocoLogger2, "InitTrackingApi", "Reporting InitTracking server failure: " + ((i.b) iVar).a(), false, 4, null);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "InitTrackingApi", "Failed to send notifyFailure post request", e10, false, 8, null);
        }
        if (this.f33501a.length() == 0) {
            MolocoLogger.debug$default(MolocoLogger.INSTANCE, "InitTrackingApi", "SDK InitTracking disabled", false, 4, null);
            return Unit.f60915a;
        }
        Uri build = Uri.parse(this.f33501a).buildUpon().build();
        byte[] e11 = e(iVar, j10);
        com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f fVar = this.f33502b;
        String uri = build.toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        f.a.a(fVar, uri, e11, a.C0827a.f59224a.b(), null, 8, null);
        return Unit.f60915a;
    }

    public final MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes c(b bVar) {
        switch (a.f33503a[bVar.ordinal()]) {
            case 1:
                return MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes.UNKNOWN;
            case 2:
                return MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes.HTTP_REQUEST_TIMEOUT;
            case 3:
                return MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes.HTTP_UKNOWN_HOST;
            case 4:
                return MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes.HTTP_SOCKET;
            case 5:
                return MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes.HTTP_SSL_ERROR;
            case 6:
                return MetricsRequest$SDKInitFailureTrackingRequest.ClientError.ClientErrorTypes.ANDROID_WORK_MANAGER_ISSUE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final byte[] d(long j10) {
        MetricsRequest$SDKInitTrackingRequest.a newBuilder = MetricsRequest$SDKInitTrackingRequest.newBuilder();
        newBuilder.b(j10);
        newBuilder.c(MetricsRequest$SDKInitSuccessTrackingRequest.newBuilder().build());
        byte[] byteArray = newBuilder.build().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }

    public final byte[] e(i iVar, long j10) {
        MetricsRequest$SDKInitTrackingRequest.a newBuilder = MetricsRequest$SDKInitTrackingRequest.newBuilder();
        MetricsRequest$SDKInitFailureTrackingRequest.a newBuilder2 = MetricsRequest$SDKInitFailureTrackingRequest.newBuilder();
        if (iVar instanceof i.a) {
            MetricsRequest$SDKInitFailureTrackingRequest.ClientError.a newBuilder3 = MetricsRequest$SDKInitFailureTrackingRequest.ClientError.newBuilder();
            newBuilder3.a(c(((i.a) iVar).a()));
            newBuilder2.a(newBuilder3.build());
        } else if (iVar instanceof i.b) {
            MetricsRequest$SDKInitFailureTrackingRequest.ServerError.a newBuilder4 = MetricsRequest$SDKInitFailureTrackingRequest.ServerError.newBuilder();
            newBuilder4.a(((i.b) iVar).a());
            newBuilder2.b(newBuilder4.build());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        newBuilder.a(newBuilder2.build());
        newBuilder.b(j10);
        byte[] byteArray = newBuilder.build().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }
}
