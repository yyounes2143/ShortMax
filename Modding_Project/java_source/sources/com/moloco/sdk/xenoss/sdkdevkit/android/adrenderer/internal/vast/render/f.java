package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class f {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t f36201a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final File f36202b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Integer f36203c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f36204d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f36205e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final h f36206f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final e f36207g;

    public f(@Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t tVar, @NotNull File localMediaResource, @Nullable Integer num, @NotNull String networkMediaResource, @Nullable String str, @NotNull h tracking, @Nullable e eVar) {
        Intrinsics.checkNotNullParameter(localMediaResource, "localMediaResource");
        Intrinsics.checkNotNullParameter(networkMediaResource, "networkMediaResource");
        Intrinsics.checkNotNullParameter(tracking, "tracking");
        this.f36201a = tVar;
        this.f36202b = localMediaResource;
        this.f36203c = num;
        this.f36204d = networkMediaResource;
        this.f36205e = str;
        this.f36206f = tracking;
        this.f36207g = eVar;
    }

    public static /* synthetic */ f b(f fVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t tVar, File file, Integer num, String str, String str2, h hVar, e eVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            tVar = fVar.f36201a;
        }
        if ((i10 & 2) != 0) {
            file = fVar.f36202b;
        }
        File file2 = file;
        if ((i10 & 4) != 0) {
            num = fVar.f36203c;
        }
        Integer num2 = num;
        if ((i10 & 8) != 0) {
            str = fVar.f36204d;
        }
        String str3 = str;
        if ((i10 & 16) != 0) {
            str2 = fVar.f36205e;
        }
        String str4 = str2;
        if ((i10 & 32) != 0) {
            hVar = fVar.f36206f;
        }
        h hVar2 = hVar;
        if ((i10 & 64) != 0) {
            eVar = fVar.f36207g;
        }
        return fVar.a(tVar, file2, num2, str3, str4, hVar2, eVar);
    }

    @NotNull
    public final f a(@Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t tVar, @NotNull File localMediaResource, @Nullable Integer num, @NotNull String networkMediaResource, @Nullable String str, @NotNull h tracking, @Nullable e eVar) {
        Intrinsics.checkNotNullParameter(localMediaResource, "localMediaResource");
        Intrinsics.checkNotNullParameter(networkMediaResource, "networkMediaResource");
        Intrinsics.checkNotNullParameter(tracking, "tracking");
        return new f(tVar, localMediaResource, num, networkMediaResource, str, tracking, eVar);
    }

    @Nullable
    public final String c() {
        return this.f36205e;
    }

    @Nullable
    public final e d() {
        return this.f36207g;
    }

    @NotNull
    public final File e() {
        return this.f36202b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (Intrinsics.areEqual(this.f36201a, fVar.f36201a) && Intrinsics.areEqual(this.f36202b, fVar.f36202b) && Intrinsics.areEqual(this.f36203c, fVar.f36203c) && Intrinsics.areEqual(this.f36204d, fVar.f36204d) && Intrinsics.areEqual(this.f36205e, fVar.f36205e) && Intrinsics.areEqual(this.f36206f, fVar.f36206f) && Intrinsics.areEqual(this.f36207g, fVar.f36207g)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer f() {
        return this.f36203c;
    }

    @NotNull
    public final String g() {
        return this.f36204d;
    }

    @Nullable
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t h() {
        return this.f36201a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t tVar = this.f36201a;
        int i10 = 0;
        if (tVar == null) {
            hashCode = 0;
        } else {
            hashCode = tVar.hashCode();
        }
        int hashCode4 = ((hashCode * 31) + this.f36202b.hashCode()) * 31;
        Integer num = this.f36203c;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int hashCode5 = (((hashCode4 + hashCode2) * 31) + this.f36204d.hashCode()) * 31;
        String str = this.f36205e;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int hashCode6 = (((hashCode5 + hashCode3) * 31) + this.f36206f.hashCode()) * 31;
        e eVar = this.f36207g;
        if (eVar != null) {
            i10 = eVar.hashCode();
        }
        return hashCode6 + i10;
    }

    @NotNull
    public final h i() {
        return this.f36206f;
    }

    @NotNull
    public String toString() {
        return "Linear(skipOffset=" + this.f36201a + ", localMediaResource=" + this.f36202b + ", localMediaResourceBitrate=" + this.f36203c + ", networkMediaResource=" + this.f36204d + ", clickThroughUrl=" + this.f36205e + ", tracking=" + this.f36206f + ", icon=" + this.f36207g + ')';
    }
}
