package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Calendar;
/* loaded from: classes.dex */
class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TwilightState {
        boolean isNight;
        long nextUpdate;

        TwilightState() {
        }
    }

    @VisibleForTesting
    TwilightManager(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TwilightManager getInstance(@NonNull Context context) {
        if (sInstance == null) {
            Context applicationContext = context.getApplicationContext();
            sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return sInstance;
    }

    @SuppressLint({"MissingPermission"})
    private Location getLastKnownLocation() {
        Location location;
        Location location2 = null;
        if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            location = getLastKnownLocationForProvider("network");
        } else {
            location = null;
        }
        if (PermissionChecker.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location2 = getLastKnownLocationForProvider("gps");
        }
        if (location2 != null && location != null) {
            if (location2.getTime() > location.getTime()) {
                return location2;
            }
            return location;
        } else if (location2 != null) {
            return location2;
        } else {
            return location;
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    private Location getLastKnownLocationForProvider(String str) {
        try {
            if (this.mLocationManager.isProviderEnabled(str)) {
                return this.mLocationManager.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e10) {
            Log.d(TAG, "Failed to get last known location", e10);
            return null;
        }
    }

    private boolean isStateValid() {
        if (this.mTwilightState.nextUpdate > System.currentTimeMillis()) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    static void setInstance(TwilightManager twilightManager) {
        sInstance = twilightManager;
    }

    private void updateState(@NonNull Location location) {
        long j10;
        TwilightState twilightState = this.mTwilightState;
        long currentTimeMillis = System.currentTimeMillis();
        TwilightCalculator twilightCalculator = TwilightCalculator.getInstance();
        twilightCalculator.calculateTwilight(currentTimeMillis - SignalManager.TWENTY_FOUR_HOURS_MILLIS, location.getLatitude(), location.getLongitude());
        twilightCalculator.calculateTwilight(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = true;
        if (twilightCalculator.state != 1) {
            z10 = false;
        }
        boolean z11 = z10;
        long j11 = twilightCalculator.sunrise;
        long j12 = twilightCalculator.sunset;
        twilightCalculator.calculateTwilight(currentTimeMillis + SignalManager.TWENTY_FOUR_HOURS_MILLIS, location.getLatitude(), location.getLongitude());
        long j13 = twilightCalculator.sunrise;
        if (j11 != -1 && j12 != -1) {
            if (currentTimeMillis <= j12) {
                if (currentTimeMillis > j11) {
                    j13 = j12;
                } else {
                    j13 = j11;
                }
            }
            j10 = j13 + ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        } else {
            j10 = currentTimeMillis + 43200000;
        }
        twilightState.isNight = z11;
        twilightState.nextUpdate = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNight() {
        TwilightState twilightState = this.mTwilightState;
        if (isStateValid()) {
            return twilightState.isNight;
        }
        Location lastKnownLocation = getLastKnownLocation();
        if (lastKnownLocation != null) {
            updateState(lastKnownLocation);
            return twilightState.isNight;
        }
        Log.i(TAG, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i10 = Calendar.getInstance().get(11);
        if (i10 >= 6 && i10 < 22) {
            return false;
        }
        return true;
    }
}
