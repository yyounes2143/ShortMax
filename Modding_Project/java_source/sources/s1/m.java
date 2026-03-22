package s1;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewIndexingTrigger.kt */
@Metadata
/* loaded from: classes3.dex */
public final class m implements SensorEventListener {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f66250b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private b f66251a;

    /* compiled from: ViewIndexingTrigger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ViewIndexingTrigger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    public final void a(@Nullable b bVar) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            this.f66251a = bVar;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(@NotNull Sensor sensor, int i10) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(sensor, "sensor");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(@NotNull SensorEvent event) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(event, "event");
            b bVar = this.f66251a;
            if (bVar != null) {
                float[] fArr = event.values;
                double d10 = fArr[0] / 9.80665f;
                double d11 = fArr[1] / 9.80665f;
                double d12 = fArr[2] / 9.80665f;
                if (Math.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12)) > 2.3d) {
                    bVar.a();
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
