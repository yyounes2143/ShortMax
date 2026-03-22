package com.bytedance.applog.exposure;

import com.bytedance.bdtracker.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes3.dex */
public final class ViewExposureData {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f11824a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f11825b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public ViewExposureConfig f11826c;

    public ViewExposureData() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ ViewExposureData copy$default(ViewExposureData viewExposureData, String str, JSONObject jSONObject, ViewExposureConfig viewExposureConfig, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = viewExposureData.f11824a;
        }
        if ((i10 & 2) != 0) {
            jSONObject = viewExposureData.f11825b;
        }
        if ((i10 & 4) != 0) {
            viewExposureConfig = viewExposureData.f11826c;
        }
        return viewExposureData.copy(str, jSONObject, viewExposureConfig);
    }

    @Nullable
    public final String component1() {
        return this.f11824a;
    }

    @Nullable
    public final JSONObject component2() {
        return this.f11825b;
    }

    @Nullable
    public final ViewExposureConfig component3() {
        return this.f11826c;
    }

    @NotNull
    public final ViewExposureData copy(@Nullable String str, @Nullable JSONObject jSONObject, @Nullable ViewExposureConfig viewExposureConfig) {
        return new ViewExposureData(str, jSONObject, viewExposureConfig);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ViewExposureData) {
                ViewExposureData viewExposureData = (ViewExposureData) obj;
                if (!Intrinsics.areEqual(this.f11824a, viewExposureData.f11824a) || !Intrinsics.areEqual(this.f11825b, viewExposureData.f11825b) || !Intrinsics.areEqual(this.f11826c, viewExposureData.f11826c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final ViewExposureConfig getConfig() {
        return this.f11826c;
    }

    @Nullable
    public final String getEventName() {
        return this.f11824a;
    }

    @Nullable
    public final JSONObject getProperties() {
        return this.f11825b;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f11824a;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        JSONObject jSONObject = this.f11825b;
        if (jSONObject != null) {
            i11 = jSONObject.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        ViewExposureConfig viewExposureConfig = this.f11826c;
        if (viewExposureConfig != null) {
            i12 = viewExposureConfig.hashCode();
        }
        return i14 + i12;
    }

    public final void setConfig(@Nullable ViewExposureConfig viewExposureConfig) {
        this.f11826c = viewExposureConfig;
    }

    @NotNull
    public String toString() {
        StringBuilder a10 = a.a("ViewExposureData(eventName=");
        a10.append(this.f11824a);
        a10.append(", properties=");
        a10.append(this.f11825b);
        a10.append(", config=");
        a10.append(this.f11826c);
        a10.append(")");
        return a10.toString();
    }

    public ViewExposureData(@Nullable String str, @Nullable JSONObject jSONObject, @Nullable ViewExposureConfig viewExposureConfig) {
        this.f11824a = str;
        this.f11825b = jSONObject;
        this.f11826c = viewExposureConfig;
    }

    public /* synthetic */ ViewExposureData(String str, JSONObject jSONObject, ViewExposureConfig viewExposureConfig, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : jSONObject, (i10 & 4) != 0 ? null : viewExposureConfig);
    }
}
