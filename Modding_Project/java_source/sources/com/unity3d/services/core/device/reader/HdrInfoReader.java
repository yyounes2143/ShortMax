package com.unity3d.services.core.device.reader;

import android.app.Activity;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.unity3d.services.core.configuration.ExperimentsReader;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public class HdrInfoReader implements IHdrInfoReader {
    private static final AtomicBoolean _hdrMetricsCaptured = new AtomicBoolean(false);
    private static volatile HdrInfoReader _instance;
    private final SDKMetricsSender _sdkMetricsSender = (SDKMetricsSender) Utilities.getService(SDKMetricsSender.class);

    private HdrInfoReader() {
    }

    public static HdrInfoReader getInstance() {
        if (_instance == null) {
            synchronized (HdrInfoReader.class) {
                try {
                    if (_instance == null) {
                        _instance = new HdrInfoReader();
                    }
                } finally {
                }
            }
        }
        return _instance;
    }

    @Override // com.unity3d.services.core.device.reader.IHdrInfoReader
    public void captureHDRCapabilityMetrics(Activity activity, ExperimentsReader experimentsReader) {
        int[] supportedHdrTypes;
        if (activity == null || !experimentsReader.getCurrentlyActiveExperiments().isCaptureHDRCapabilitiesEnabled()) {
            return;
        }
        boolean z10 = false;
        if (_hdrMetricsCaptured.compareAndSet(false, true)) {
            ArrayList arrayList = new ArrayList(5);
            Display.HdrCapabilities hdrCapabilities = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getHdrCapabilities();
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            boolean z14 = false;
            for (int i10 : hdrCapabilities.getSupportedHdrTypes()) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                z13 = true;
                            }
                        } else {
                            z14 = true;
                        }
                    } else {
                        z12 = true;
                    }
                } else {
                    z11 = true;
                }
            }
            long round = Math.round(hdrCapabilities.getDesiredMaxAverageLuminance());
            long round2 = Math.round(hdrCapabilities.getDesiredMaxLuminance());
            arrayList.add(new Metric("native_device_hdr_lum_max_average", Long.valueOf(round)));
            arrayList.add(new Metric("native_device_hdr_lum_max", Long.valueOf(round2)));
            arrayList.add(new Metric("native_device_hdr_lum_min", Long.valueOf(Math.round(hdrCapabilities.getDesiredMinLuminance()))));
            if (Build.VERSION.SDK_INT >= 26) {
                z10 = activity.getResources().getConfiguration().isScreenHdr();
            }
            if (z11) {
                arrayList.add(new Metric("native_device_hdr_dolby_vision_success"));
            } else {
                arrayList.add(new Metric("native_device_hdr_dolby_vision_failure"));
            }
            if (z12) {
                arrayList.add(new Metric("native_device_hdr_hdr10_success"));
            } else {
                arrayList.add(new Metric("native_device_hdr_hdr10_failure"));
            }
            if (z13) {
                arrayList.add(new Metric("native_device_hdr_hdr10_plus_success"));
            } else {
                arrayList.add(new Metric("native_device_hdr_hdr10_plus_failure"));
            }
            if (z14) {
                arrayList.add(new Metric("native_device_hdr_hlg_success"));
            } else {
                arrayList.add(new Metric("native_device_hdr_hlg_failure"));
            }
            if (z10) {
                arrayList.add(new Metric("native_device_hdr_screen_hdr_success"));
            } else {
                arrayList.add(new Metric("native_device_hdr_screen_hdr_failure"));
            }
            this._sdkMetricsSender.sendMetrics(arrayList);
        }
    }
}
