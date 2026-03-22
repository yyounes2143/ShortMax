package com.vungle.ads.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ViewUtility;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClickCoordinateTracker.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ClickCoordinateTracker {
    @NotNull
    private static final String TAG = "ClickCoordinateTracker";
    @NotNull
    private final AdPayload advertisement;
    @NotNull
    private final Context context;
    @NotNull
    private final ClickCoordinate currentClick;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String MACRO_REQ_WIDTH = Pattern.quote("{{{req_width}}}");
    private static final String MACRO_REQ_HEIGHT = Pattern.quote("{{{req_height}}}");
    private static final String MACRO_WIDTH = Pattern.quote("{{{width}}}");
    private static final String MACRO_HEIGHT = Pattern.quote("{{{height}}}");
    private static final String MACRO_DOWN_X = Pattern.quote("{{{down_x}}}");
    private static final String MACRO_DOWN_Y = Pattern.quote("{{{down_y}}}");
    private static final String MACRO_UP_X = Pattern.quote("{{{up_x}}}");
    private static final String MACRO_UP_Y = Pattern.quote("{{{up_y}}}");

    /* compiled from: ClickCoordinateTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class ClickCoordinate {
        @NotNull
        private Coordinate downCoordinate;
        @NotNull
        private Coordinate upCoordinate;

        public ClickCoordinate(@NotNull Coordinate downCoordinate, @NotNull Coordinate upCoordinate) {
            Intrinsics.checkNotNullParameter(downCoordinate, "downCoordinate");
            Intrinsics.checkNotNullParameter(upCoordinate, "upCoordinate");
            this.downCoordinate = downCoordinate;
            this.upCoordinate = upCoordinate;
        }

        public static /* synthetic */ ClickCoordinate copy$default(ClickCoordinate clickCoordinate, Coordinate coordinate, Coordinate coordinate2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                coordinate = clickCoordinate.downCoordinate;
            }
            if ((i10 & 2) != 0) {
                coordinate2 = clickCoordinate.upCoordinate;
            }
            return clickCoordinate.copy(coordinate, coordinate2);
        }

        @NotNull
        public final Coordinate component1() {
            return this.downCoordinate;
        }

        @NotNull
        public final Coordinate component2() {
            return this.upCoordinate;
        }

        @NotNull
        public final ClickCoordinate copy(@NotNull Coordinate downCoordinate, @NotNull Coordinate upCoordinate) {
            Intrinsics.checkNotNullParameter(downCoordinate, "downCoordinate");
            Intrinsics.checkNotNullParameter(upCoordinate, "upCoordinate");
            return new ClickCoordinate(downCoordinate, upCoordinate);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickCoordinate)) {
                return false;
            }
            ClickCoordinate clickCoordinate = (ClickCoordinate) obj;
            if (Intrinsics.areEqual(this.downCoordinate, clickCoordinate.downCoordinate) && Intrinsics.areEqual(this.upCoordinate, clickCoordinate.upCoordinate)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Coordinate getDownCoordinate() {
            return this.downCoordinate;
        }

        @NotNull
        public final Coordinate getUpCoordinate() {
            return this.upCoordinate;
        }

        public int hashCode() {
            return (this.downCoordinate.hashCode() * 31) + this.upCoordinate.hashCode();
        }

        public final boolean ready() {
            if (this.downCoordinate.getX() != Integer.MIN_VALUE && this.downCoordinate.getY() != Integer.MIN_VALUE && this.upCoordinate.getX() != Integer.MIN_VALUE && this.upCoordinate.getY() != Integer.MIN_VALUE) {
                return true;
            }
            return false;
        }

        public final void setDownCoordinate(@NotNull Coordinate coordinate) {
            Intrinsics.checkNotNullParameter(coordinate, "<set-?>");
            this.downCoordinate = coordinate;
        }

        public final void setUpCoordinate(@NotNull Coordinate coordinate) {
            Intrinsics.checkNotNullParameter(coordinate, "<set-?>");
            this.upCoordinate = coordinate;
        }

        @NotNull
        public String toString() {
            return "ClickCoordinate(downCoordinate=" + this.downCoordinate + ", upCoordinate=" + this.upCoordinate + ')';
        }
    }

    /* compiled from: ClickCoordinateTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: ClickCoordinateTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Coordinate {

        /* renamed from: x  reason: collision with root package name */
        private final int f49566x;

        /* renamed from: y  reason: collision with root package name */
        private final int f49567y;

        public Coordinate(int i10, int i11) {
            this.f49566x = i10;
            this.f49567y = i11;
        }

        public static /* synthetic */ Coordinate copy$default(Coordinate coordinate, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = coordinate.f49566x;
            }
            if ((i12 & 2) != 0) {
                i11 = coordinate.f49567y;
            }
            return coordinate.copy(i10, i11);
        }

        public final int component1() {
            return this.f49566x;
        }

        public final int component2() {
            return this.f49567y;
        }

        @NotNull
        public final Coordinate copy(int i10, int i11) {
            return new Coordinate(i10, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Coordinate)) {
                return false;
            }
            Coordinate coordinate = (Coordinate) obj;
            if (this.f49566x == coordinate.f49566x && this.f49567y == coordinate.f49567y) {
                return true;
            }
            return false;
        }

        public final int getX() {
            return this.f49566x;
        }

        public final int getY() {
            return this.f49567y;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f49566x) * 31) + Integer.hashCode(this.f49567y);
        }

        @NotNull
        public String toString() {
            return "Coordinate(x=" + this.f49566x + ", y=" + this.f49567y + ')';
        }
    }

    /* compiled from: ClickCoordinateTracker.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DeviceScreenInfo {
        @NotNull
        private final Context context;
        @NotNull

        /* renamed from: dm  reason: collision with root package name */
        private final DisplayMetrics f49568dm;

        public DeviceScreenInfo(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.f49568dm = displayMetrics;
            Object systemService = context.getSystemService("window");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        }

        public static /* synthetic */ DeviceScreenInfo copy$default(DeviceScreenInfo deviceScreenInfo, Context context, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                context = deviceScreenInfo.context;
            }
            return deviceScreenInfo.copy(context);
        }

        @NotNull
        public final Context component1() {
            return this.context;
        }

        @NotNull
        public final DeviceScreenInfo copy(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new DeviceScreenInfo(context);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof DeviceScreenInfo) && Intrinsics.areEqual(this.context, ((DeviceScreenInfo) obj).context)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        public final int getDeviceHeight() {
            return this.f49568dm.heightPixels;
        }

        public final int getDeviceWidth() {
            return this.f49568dm.widthPixels;
        }

        public int hashCode() {
            return this.context.hashCode();
        }

        @NotNull
        public String toString() {
            return "DeviceScreenInfo(context=" + this.context + ')';
        }
    }

    public ClickCoordinateTracker(@NotNull Context context, @NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        this.context = context;
        this.advertisement = advertisement;
        this.currentClick = new ClickCoordinate(new Coordinate(Integer.MIN_VALUE, Integer.MIN_VALUE), new Coordinate(Integer.MIN_VALUE, Integer.MIN_VALUE));
    }

    private final int getDeviceHeight() {
        return new DeviceScreenInfo(this.context).getDeviceHeight();
    }

    private final int getDeviceWidth() {
        return new DeviceScreenInfo(this.context).getDeviceWidth();
    }

    private final int getRequestedHeight() {
        int adHeight = this.advertisement.adHeight();
        if (adHeight == 0) {
            return getDeviceHeight();
        }
        return ViewUtility.INSTANCE.dpToPixels(this.context, adHeight);
    }

    private final int getRequestedWidth() {
        int adWidth = this.advertisement.adWidth();
        if (adWidth == 0) {
            return getDeviceWidth();
        }
        return ViewUtility.INSTANCE.dpToPixels(this.context, adWidth);
    }

    private final void sendClickCoordinates() {
        List<String> tpatUrls$default = AdPayload.getTpatUrls$default(this.advertisement, AdPayload.TPAT_CLICK_COORDINATES_URLS, null, null, 6, null);
        List list = tpatUrls$default;
        if (list != null && !list.isEmpty()) {
            int requestedWidth = getRequestedWidth();
            int requestedHeight = getRequestedHeight();
            int requestedWidth2 = getRequestedWidth();
            int requestedHeight2 = getRequestedHeight();
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.ClickCoordinateTracker$sendClickCoordinates$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final TpatSender invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
                }
            });
            for (String str : tpatUrls$default) {
                String MACRO_REQ_WIDTH2 = MACRO_REQ_WIDTH;
                Intrinsics.checkNotNullExpressionValue(MACRO_REQ_WIDTH2, "MACRO_REQ_WIDTH");
                String replace = new Regex(MACRO_REQ_WIDTH2).replace(str, String.valueOf(requestedWidth));
                String MACRO_REQ_HEIGHT2 = MACRO_REQ_HEIGHT;
                Intrinsics.checkNotNullExpressionValue(MACRO_REQ_HEIGHT2, "MACRO_REQ_HEIGHT");
                String replace2 = new Regex(MACRO_REQ_HEIGHT2).replace(replace, String.valueOf(requestedHeight));
                String MACRO_WIDTH2 = MACRO_WIDTH;
                Intrinsics.checkNotNullExpressionValue(MACRO_WIDTH2, "MACRO_WIDTH");
                String replace3 = new Regex(MACRO_WIDTH2).replace(replace2, String.valueOf(requestedWidth2));
                String MACRO_HEIGHT2 = MACRO_HEIGHT;
                Intrinsics.checkNotNullExpressionValue(MACRO_HEIGHT2, "MACRO_HEIGHT");
                String replace4 = new Regex(MACRO_HEIGHT2).replace(replace3, String.valueOf(requestedHeight2));
                String MACRO_DOWN_X2 = MACRO_DOWN_X;
                Intrinsics.checkNotNullExpressionValue(MACRO_DOWN_X2, "MACRO_DOWN_X");
                String replace5 = new Regex(MACRO_DOWN_X2).replace(replace4, String.valueOf(this.currentClick.getDownCoordinate().getX()));
                String MACRO_DOWN_Y2 = MACRO_DOWN_Y;
                Intrinsics.checkNotNullExpressionValue(MACRO_DOWN_Y2, "MACRO_DOWN_Y");
                String replace6 = new Regex(MACRO_DOWN_Y2).replace(replace5, String.valueOf(this.currentClick.getDownCoordinate().getY()));
                String MACRO_UP_X2 = MACRO_UP_X;
                Intrinsics.checkNotNullExpressionValue(MACRO_UP_X2, "MACRO_UP_X");
                String replace7 = new Regex(MACRO_UP_X2).replace(replace6, String.valueOf(this.currentClick.getUpCoordinate().getX()));
                String MACRO_UP_Y2 = MACRO_UP_Y;
                Intrinsics.checkNotNullExpressionValue(MACRO_UP_Y2, "MACRO_UP_Y");
                TpatSender.sendTpat$default(m4771sendClickCoordinates$lambda0(a10), new TpatRequest.Builder(new Regex(MACRO_UP_Y2).replace(replace7, String.valueOf(this.currentClick.getUpCoordinate().getY()))).tpatKey(Constants.COORDINATE).build(), false, 2, null);
            }
            return;
        }
        new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty urls for tpat: video.clickCoordinates").setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* renamed from: sendClickCoordinates$lambda-0  reason: not valid java name */
    private static final TpatSender m4771sendClickCoordinates$lambda0(i<TpatSender> iVar) {
        return iVar.getValue();
    }

    @NotNull
    public final ClickCoordinate getCurrentClick$vungle_ads_release() {
        return this.currentClick;
    }

    public final void trackCoordinate(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!this.advertisement.isClickCoordinatesTrackingEnabled()) {
            return;
        }
        int action = event.getAction();
        if (action != 0) {
            if (action == 1) {
                this.currentClick.setUpCoordinate(new Coordinate((int) event.getX(), (int) event.getY()));
                if (this.currentClick.ready()) {
                    sendClickCoordinates();
                    return;
                }
                return;
            }
            return;
        }
        this.currentClick.setDownCoordinate(new Coordinate((int) event.getX(), (int) event.getY()));
    }

    @VisibleForTesting
    public static /* synthetic */ void getCurrentClick$vungle_ads_release$annotations() {
    }
}
