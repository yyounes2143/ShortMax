package com.inmobi.unification.sdk.model.Initialization;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.inmobi.media.C3071me;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class TimeoutConfigurations$RenderTimeoutByType {
    @NotNull
    public static final C3071me Companion = new C3071me();
    private int audio;
    private int banner;

    /* renamed from: int  reason: not valid java name */
    private int f30int;

    /* renamed from: native  reason: not valid java name */
    private int f31native;

    public /* synthetic */ TimeoutConfigurations$RenderTimeoutByType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final int getAudio$media_release() {
        return this.audio;
    }

    public final int getBanner$media_release() {
        return this.banner;
    }

    public final int getInt$media_release() {
        return this.f30int;
    }

    public final int getNative$media_release() {
        return this.f31native;
    }

    public final int getTimeoutByType$media_release(@NotNull String adType, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Intrinsics.checkNotNullParameter(adType, "adType");
        int hashCode = adType.hashCode();
        if (hashCode != -1396342996) {
            if (hashCode != -1052618729) {
                if (hashCode != 104431) {
                    if (hashCode == 93166550 && adType.equals("audio") && (i14 = this.audio) > 0) {
                        return i14;
                    }
                } else if (adType.equals("int") && (i13 = this.f30int) > 0) {
                    return i13;
                }
            } else if (adType.equals("native") && (i12 = this.f31native) > 0) {
                return i12;
            }
        } else if (adType.equals("banner") && (i11 = this.banner) > 0) {
            return i11;
        }
        return i10;
    }

    public final void setAudio$media_release(int i10) {
        this.audio = i10;
    }

    public final void setBanner$media_release(int i10) {
        this.banner = i10;
    }

    public final void setInt$media_release(int i10) {
        this.f30int = i10;
    }

    public final void setNative$media_release(int i10) {
        this.f31native = i10;
    }

    @VisibleForTesting(otherwise = 5)
    public final void setTimeoutByType(@NotNull String adType, int i10) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        int hashCode = adType.hashCode();
        if (hashCode != -1396342996) {
            if (hashCode != -1052618729) {
                if (hashCode != 104431) {
                    if (hashCode == 93166550 && adType.equals("audio")) {
                        this.audio = i10;
                    }
                } else if (adType.equals("int")) {
                    this.f30int = i10;
                }
            } else if (adType.equals("native")) {
                this.f31native = i10;
            }
        } else if (adType.equals("banner")) {
            this.banner = i10;
        }
    }

    private TimeoutConfigurations$RenderTimeoutByType() {
    }
}
