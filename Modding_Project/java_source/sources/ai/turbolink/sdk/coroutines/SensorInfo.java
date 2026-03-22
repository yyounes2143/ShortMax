package ai.turbolink.sdk.coroutines;

import ai.turbolink.sdk.TurboLink;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SensorInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class SensorInfo {
    @NotNull
    public static final SensorInfo INSTANCE = new SensorInfo();
    @NotNull
    private static final SensorInfo$gravityListener$1 gravityListener = new SensorEventListener() { // from class: ai.turbolink.sdk.coroutines.SensorInfo$gravityListener$1
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(@Nullable SensorEvent sensorEvent) {
            if (sensorEvent == null || sensorEvent.sensor.getType() != 9) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[2];
            float f13 = f12 * f12;
            double atan2 = Math.atan2(f10, Math.sqrt((f11 * f11) + f13));
            double atan22 = Math.atan2(f11, Math.sqrt((f10 * f10) + f13));
            double abs = Math.abs(Math.toDegrees(atan22));
            double abs2 = Math.abs(Math.toDegrees(atan2));
            TurboLink.RiskManager riskManager = TurboLink.RiskManager.INSTANCE;
            riskManager.setHumanScoreDetail("roll:" + Math.toDegrees(atan22) + ", pitch:" + Math.toDegrees(atan2));
            if (abs >= 1.0d && abs2 >= 1.0d) {
                if (abs > 2.0d && abs2 > 2.0d) {
                    riskManager.setHumanScore(100);
                    return;
                } else {
                    riskManager.setHumanScore(50);
                    return;
                }
            }
            riskManager.setHumanScore(1);
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(@Nullable Sensor sensor, int i10) {
        }
    };
    @Nullable
    private static Sensor gravitySensor;
    @Nullable
    private static SensorManager sensorManager;

    private SensorInfo() {
    }

    public final boolean getGravityStatus() {
        if (gravitySensor == null) {
            return false;
        }
        return true;
    }

    public final void initGravity(@NotNull Context context) {
        Sensor sensor;
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        SensorManager sensorManager2 = (SensorManager) systemService;
        sensorManager = sensorManager2;
        if (sensorManager2 != null) {
            sensor = sensorManager2.getDefaultSensor(9);
        } else {
            sensor = null;
        }
        gravitySensor = sensor;
    }

    public final void registerListener() {
        SensorManager sensorManager2;
        Sensor sensor = gravitySensor;
        if (sensor != null && (sensorManager2 = sensorManager) != null) {
            sensorManager2.registerListener(gravityListener, sensor, 2);
        }
    }

    public final void unRegisterListener() {
        SensorManager sensorManager2 = sensorManager;
        if (sensorManager2 != null) {
            sensorManager2.unregisterListener(gravityListener);
        }
    }
}
