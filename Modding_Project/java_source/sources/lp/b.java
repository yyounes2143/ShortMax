package lp;

import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.TrackEventType;
import io.bidmachine.core.i;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.rendering.Rendering;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import xq.k;
/* compiled from: AdObjectParams.java */
/* loaded from: classes8.dex */
public abstract class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final i f62291a = new i();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<TrackEventType, List<String>> f62292b = new EnumMap(TrackEventType.class);
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final xq.a f62293c = new xq.a();

    public b(@NonNull Ad ad2) {
        AdExtension f10 = fr.e.f(ad2);
        if (f10 != null) {
            h(f10);
        }
        i(ad2.getExt().getFieldsMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@NonNull TrackEventType trackEventType, @Nullable String str) {
        fr.e.a(this.f62292b, trackEventType, str);
    }

    @NonNull
    public Map<String, Object> b() {
        return this.f62293c.s();
    }

    @NonNull
    public k c() {
        return this.f62293c;
    }

    @Nullable
    public List<String> d(@NonNull TrackEventType trackEventType) {
        return this.f62292b.get(trackEventType);
    }

    @NonNull
    public i e() {
        return this.f62291a;
    }

    public abstract boolean f();

    /* JADX INFO: Access modifiers changed from: protected */
    public void g(@Nullable List<Ad.Event> list) {
        fr.e.p(this.f62292b, list);
    }

    @CallSuper
    protected void h(@NonNull AdExtension adExtension) {
        this.f62291a.i(io.bidmachine.core.g.B(adExtension.getViewabilityTimeThreshold(), AdExtension.getDefaultInstance().getViewabilityTimeThreshold(), 1L));
        this.f62291a.g(io.bidmachine.core.g.A(adExtension.getViewabilityPixelThreshold(), AdExtension.getDefaultInstance().getViewabilityPixelThreshold(), 1.0f));
        this.f62291a.f(adExtension.getViewabilityIgnoreWindowFocus());
        this.f62291a.e(adExtension.getViewabilityIgnoreOverlap());
        g(adExtension.getEventList());
        b().put("viewability_time_threshold_sec", Integer.valueOf(adExtension.getViewabilityTimeThreshold()));
        b().put("viewability_pixel_threshold", Float.valueOf(adExtension.getViewabilityPixelThreshold()));
        b().put("viewability_ignore_window_focus", Boolean.valueOf(adExtension.getViewabilityIgnoreWindowFocus()));
        b().put("viewability_ignore_overlap", Boolean.valueOf(adExtension.getViewabilityIgnoreOverlap()));
        b().put("useNativeClose", Boolean.valueOf(adExtension.getUseNativeClose()));
        b().put("cacheControl", adExtension.getCreativeLoadingMethod());
        b().put("placeholderTimeoutSec", Float.valueOf(adExtension.getPlaceholderTimeout()));
        b().put("skipOffset", Integer.valueOf(adExtension.getSkipoffset()));
        b().put("companionSkipOffset", Integer.valueOf(adExtension.getCompanionSkipoffset()));
        b().put("r1", Boolean.valueOf(adExtension.getR1()));
        b().put("r2", Boolean.valueOf(adExtension.getR2()));
        b().put("store_url", adExtension.getStoreUrl());
        b().put("progress_duration", Integer.valueOf(adExtension.getProgressDuration()));
        AdExtension.ControlAsset closeButton = adExtension.getCloseButton();
        if (closeButton != null && closeButton != AdExtension.ControlAsset.getDefaultInstance()) {
            b().put("close_button_control_asset", closeButton);
        }
        AdExtension.ControlAsset countdown = adExtension.getCountdown();
        if (countdown != null && countdown != AdExtension.ControlAsset.getDefaultInstance()) {
            b().put("countdown_control_asset", countdown);
        }
        AdExtension.ControlAsset progress = adExtension.getProgress();
        if (progress != null && progress != AdExtension.ControlAsset.getDefaultInstance()) {
            b().put("progress_control_asset", progress);
        }
        Rendering renderingConfiguration = adExtension.getRenderingConfiguration();
        if (renderingConfiguration != null && renderingConfiguration != Rendering.getDefaultInstance()) {
            b().put("rendering_configuration", renderingConfiguration);
        }
    }

    @CallSuper
    protected void i(@NonNull Map<String, Value> map) {
        Value value = map.get("omsdk_enabled");
        if (value != null) {
            b().put("omsdk_enabled", Boolean.valueOf(value.getBoolValue()));
        }
    }
}
