package io.bidmachine.rendering.measurer;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes8.dex */
public class CompositeVideoMeasurer extends BaseCompositeMeasurer<VideoMeasurer, View> implements VideoMeasurer {
    public CompositeVideoMeasurer(@NonNull List<VideoMeasurer> list) {
        super(list);
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void D0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.D0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void F0(float f10) {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.F0(f10);
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void b0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.b0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void c0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.c0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void d0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.d0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void e0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.e0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void m0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.m0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void n0() {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.n0();
        }
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurer
    public void z0(float f10, float f11) {
        for (MeasurerType measurertype : this.f58516a) {
            measurertype.z0(f10, f11);
        }
    }
}
