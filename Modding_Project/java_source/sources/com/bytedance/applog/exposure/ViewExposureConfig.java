package com.bytedance.applog.exposure;

import com.bytedance.bdtracker.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes3.dex */
public final class ViewExposureConfig {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Float f11822a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f11823b;

    public ViewExposureConfig() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ ViewExposureConfig copy$default(ViewExposureConfig viewExposureConfig, Float f10, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = viewExposureConfig.f11822a;
        }
        if ((i10 & 2) != 0) {
            bool = viewExposureConfig.f11823b;
        }
        return viewExposureConfig.copy(f10, bool);
    }

    @Nullable
    public final Float component1() {
        return this.f11822a;
    }

    @Nullable
    public final Boolean component2() {
        return this.f11823b;
    }

    @NotNull
    public final ViewExposureConfig copy(@Nullable Float f10, @Nullable Boolean bool) {
        return new ViewExposureConfig(f10, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ViewExposureConfig) {
                ViewExposureConfig viewExposureConfig = (ViewExposureConfig) obj;
                if (!Intrinsics.areEqual((Object) this.f11822a, (Object) viewExposureConfig.f11822a) || !Intrinsics.areEqual(this.f11823b, viewExposureConfig.f11823b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final Float getAreaRatio() {
        return this.f11822a;
    }

    @Nullable
    public final Boolean getVisualDiagnosis() {
        return this.f11823b;
    }

    public int hashCode() {
        int i10;
        Float f10 = this.f11822a;
        int i11 = 0;
        if (f10 != null) {
            i10 = f10.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        Boolean bool = this.f11823b;
        if (bool != null) {
            i11 = bool.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        StringBuilder a10 = a.a("ViewExposureConfig(areaRatio=");
        a10.append(this.f11822a);
        a10.append(", visualDiagnosis=");
        a10.append(this.f11823b);
        a10.append(")");
        return a10.toString();
    }

    public ViewExposureConfig(@Nullable Float f10) {
        this(f10, null, 2, null);
    }

    public ViewExposureConfig(@Nullable Float f10, @Nullable Boolean bool) {
        this.f11822a = f10;
        this.f11823b = bool;
    }

    public /* synthetic */ ViewExposureConfig(Float f10, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : f10, (i10 & 2) != 0 ? Boolean.FALSE : bool);
    }
}
