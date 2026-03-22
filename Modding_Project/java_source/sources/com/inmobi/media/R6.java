package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes5.dex */
public final class R6 implements Parcelable {
    @NotNull
    public static final P6 CREATOR = new P6();

    /* renamed from: a  reason: collision with root package name */
    public final S6 f24060a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24061b;

    /* renamed from: c  reason: collision with root package name */
    public final int f24062c;

    /* renamed from: d  reason: collision with root package name */
    public final long f24063d;

    /* renamed from: e  reason: collision with root package name */
    public final ms.i f24064e;

    /* renamed from: f  reason: collision with root package name */
    public int f24065f;

    /* renamed from: g  reason: collision with root package name */
    public String f24066g;

    public R6(S6 landingPageTelemetryMetaData, String urlType, int i10, long j10) {
        Intrinsics.checkNotNullParameter(landingPageTelemetryMetaData, "landingPageTelemetryMetaData");
        Intrinsics.checkNotNullParameter(urlType, "urlType");
        this.f24060a = landingPageTelemetryMetaData;
        this.f24061b = urlType;
        this.f24062c = i10;
        this.f24063d = j10;
        this.f24064e = kotlin.c.b(Q6.f24040a);
        this.f24065f = -1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof R6)) {
            return false;
        }
        R6 r62 = (R6) obj;
        if (Intrinsics.areEqual(this.f24060a, r62.f24060a) && Intrinsics.areEqual(this.f24061b, r62.f24061b) && this.f24062c == r62.f24062c && this.f24063d == r62.f24063d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f24061b.hashCode();
        int hashCode2 = Integer.hashCode(this.f24062c);
        return Long.hashCode(this.f24063d) + ((hashCode2 + ((hashCode + (this.f24060a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LandingPageTelemetryControlInfo(landingPageTelemetryMetaData=" + this.f24060a + ", urlType=" + this.f24061b + ", counter=" + this.f24062c + ", startTime=" + this.f24063d + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeLong(this.f24060a.f24136a);
        parcel.writeString(this.f24060a.f24137b);
        parcel.writeString(this.f24060a.f24138c);
        parcel.writeString(this.f24060a.f24139d);
        parcel.writeString(this.f24060a.f24140e);
        parcel.writeString(this.f24060a.f24141f);
        parcel.writeString(this.f24060a.f24142g);
        parcel.writeByte(this.f24060a.f24143h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f24060a.f24144i);
        parcel.writeString(this.f24061b);
        parcel.writeInt(this.f24062c);
        parcel.writeLong(this.f24063d);
        parcel.writeInt(this.f24065f);
        parcel.writeString(this.f24066g);
    }

    public /* synthetic */ R6(S6 s62, String str, int i10, int i11) {
        this(s62, str, (i11 & 4) != 0 ? 0 : i10, SystemClock.elapsedRealtime());
    }
}
