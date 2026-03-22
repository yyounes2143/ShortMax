package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f33208a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final MolocoPrivacy.PrivacySettings f33209b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final s f33210c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final d f33211d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final u f33212e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final h f33213f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.o f33214g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final o f33215h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final f f33216i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final a f33217j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final q f33218k;

    public k(boolean z10, @NotNull MolocoPrivacy.PrivacySettings privacySettings, @NotNull s memoryInfo, @NotNull d appDirInfo, @NotNull u networkInfoSignal, @NotNull h batteryInfoSignal, @NotNull com.moloco.sdk.internal.services.o adDataSignal, @NotNull o deviceSignal, @NotNull f audioSignal, @NotNull a accessibilitySignal, @NotNull q ilrdSignal) {
        Intrinsics.checkNotNullParameter(privacySettings, "privacySettings");
        Intrinsics.checkNotNullParameter(memoryInfo, "memoryInfo");
        Intrinsics.checkNotNullParameter(appDirInfo, "appDirInfo");
        Intrinsics.checkNotNullParameter(networkInfoSignal, "networkInfoSignal");
        Intrinsics.checkNotNullParameter(batteryInfoSignal, "batteryInfoSignal");
        Intrinsics.checkNotNullParameter(adDataSignal, "adDataSignal");
        Intrinsics.checkNotNullParameter(deviceSignal, "deviceSignal");
        Intrinsics.checkNotNullParameter(audioSignal, "audioSignal");
        Intrinsics.checkNotNullParameter(accessibilitySignal, "accessibilitySignal");
        Intrinsics.checkNotNullParameter(ilrdSignal, "ilrdSignal");
        this.f33208a = z10;
        this.f33209b = privacySettings;
        this.f33210c = memoryInfo;
        this.f33211d = appDirInfo;
        this.f33212e = networkInfoSignal;
        this.f33213f = batteryInfoSignal;
        this.f33214g = adDataSignal;
        this.f33215h = deviceSignal;
        this.f33216i = audioSignal;
        this.f33217j = accessibilitySignal;
        this.f33218k = ilrdSignal;
    }

    @NotNull
    public final a a() {
        return this.f33217j;
    }

    @NotNull
    public final com.moloco.sdk.internal.services.o b() {
        return this.f33214g;
    }

    @NotNull
    public final d c() {
        return this.f33211d;
    }

    @NotNull
    public final f d() {
        return this.f33216i;
    }

    @NotNull
    public final h e() {
        return this.f33213f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f33208a == kVar.f33208a && Intrinsics.areEqual(this.f33209b, kVar.f33209b) && Intrinsics.areEqual(this.f33210c, kVar.f33210c) && Intrinsics.areEqual(this.f33211d, kVar.f33211d) && Intrinsics.areEqual(this.f33212e, kVar.f33212e) && Intrinsics.areEqual(this.f33213f, kVar.f33213f) && Intrinsics.areEqual(this.f33214g, kVar.f33214g) && Intrinsics.areEqual(this.f33215h, kVar.f33215h) && Intrinsics.areEqual(this.f33216i, kVar.f33216i) && Intrinsics.areEqual(this.f33217j, kVar.f33217j) && Intrinsics.areEqual(this.f33218k, kVar.f33218k)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final o f() {
        return this.f33215h;
    }

    @NotNull
    public final q g() {
        return this.f33218k;
    }

    @NotNull
    public final s h() {
        return this.f33210c;
    }

    public int hashCode() {
        return (((((((((((((((((((Boolean.hashCode(this.f33208a) * 31) + this.f33209b.hashCode()) * 31) + this.f33210c.hashCode()) * 31) + this.f33211d.hashCode()) * 31) + this.f33212e.hashCode()) * 31) + this.f33213f.hashCode()) * 31) + this.f33214g.hashCode()) * 31) + this.f33215h.hashCode()) * 31) + this.f33216i.hashCode()) * 31) + this.f33217j.hashCode()) * 31) + this.f33218k.hashCode();
    }

    @NotNull
    public final u i() {
        return this.f33212e;
    }

    @NotNull
    public final MolocoPrivacy.PrivacySettings j() {
        return this.f33209b;
    }

    public final boolean k() {
        return this.f33208a;
    }

    @NotNull
    public String toString() {
        return "ClientSignals(sdkInitialized=" + this.f33208a + ", privacySettings=" + this.f33209b + ", memoryInfo=" + this.f33210c + ", appDirInfo=" + this.f33211d + ", networkInfoSignal=" + this.f33212e + ", batteryInfoSignal=" + this.f33213f + ", adDataSignal=" + this.f33214g + ", deviceSignal=" + this.f33215h + ", audioSignal=" + this.f33216i + ", accessibilitySignal=" + this.f33217j + ", ilrdSignal=" + this.f33218k + ')';
    }
}
