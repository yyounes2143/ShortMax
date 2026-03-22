package androidx.work;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.PeriodicWorkRequest;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PeriodicWorkRequest.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PeriodicWorkRequestKt {
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j10, TimeUnit repeatIntervalTimeUnit) {
        Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder(ListenableWorker.class, j10, repeatIntervalTimeUnit);
    }

    @RequiresApi(26)
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration repeatInterval) {
        Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder(ListenableWorker.class, repeatInterval);
    }

    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j10, TimeUnit repeatIntervalTimeUnit, long j11, TimeUnit flexTimeIntervalUnit) {
        Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
        Intrinsics.checkNotNullParameter(flexTimeIntervalUnit, "flexTimeIntervalUnit");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder(ListenableWorker.class, j10, repeatIntervalTimeUnit, j11, flexTimeIntervalUnit);
    }

    @RequiresApi(26)
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration repeatInterval, Duration flexTimeInterval) {
        Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
        Intrinsics.checkNotNullParameter(flexTimeInterval, "flexTimeInterval");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new PeriodicWorkRequest.Builder(ListenableWorker.class, repeatInterval, flexTimeInterval);
    }
}
