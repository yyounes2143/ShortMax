package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.common.collect.g;
import h7.h;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes4.dex */
public final class SlowMotionData implements Metadata.Entry {
    public static final Parcelable.Creator<SlowMotionData> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final List<Segment> f18079a;

    /* loaded from: classes4.dex */
    public static final class Segment implements Parcelable {

        /* renamed from: a  reason: collision with root package name */
        public final long f18081a;

        /* renamed from: b  reason: collision with root package name */
        public final long f18082b;

        /* renamed from: c  reason: collision with root package name */
        public final int f18083c;

        /* renamed from: d  reason: collision with root package name */
        public static final Comparator<Segment> f18080d = new Comparator() { // from class: l6.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = SlowMotionData.Segment.b((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
                return b10;
            }
        };
        public static final Parcelable.Creator<Segment> CREATOR = new a();

        /* loaded from: classes4.dex */
        class a implements Parcelable.Creator<Segment> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Segment createFromParcel(Parcel parcel) {
                return new Segment(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Segment[] newArray(int i10) {
                return new Segment[i10];
            }
        }

        public Segment(long j10, long j11, int i10) {
            boolean z10;
            if (j10 < j11) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.a(z10);
            this.f18081a = j10;
            this.f18082b = j11;
            this.f18083c = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(Segment segment, Segment segment2) {
            return g.j().e(segment.f18081a, segment2.f18081a).e(segment.f18082b, segment2.f18082b).d(segment.f18083c, segment2.f18083c).i();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Segment.class != obj.getClass()) {
                return false;
            }
            Segment segment = (Segment) obj;
            if (this.f18081a == segment.f18081a && this.f18082b == segment.f18082b && this.f18083c == segment.f18083c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return h.b(Long.valueOf(this.f18081a), Long.valueOf(this.f18082b), Integer.valueOf(this.f18083c));
        }

        public String toString() {
            return s0.z("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f18081a), Long.valueOf(this.f18082b), Integer.valueOf(this.f18083c));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f18081a);
            parcel.writeLong(this.f18082b);
            parcel.writeInt(this.f18083c);
        }
    }

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<SlowMotionData> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SlowMotionData createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, Segment.class.getClassLoader());
            return new SlowMotionData(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SlowMotionData[] newArray(int i10) {
            return new SlowMotionData[i10];
        }
    }

    public SlowMotionData(List<Segment> list) {
        this.f18079a = list;
        b7.a.a(!a(list));
    }

    private static boolean a(List<Segment> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j10 = list.get(0).f18082b;
        for (int i10 = 1; i10 < list.size(); i10++) {
            if (list.get(i10).f18081a < j10) {
                return true;
            }
            j10 = list.get(i10).f18082b;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SlowMotionData.class == obj.getClass()) {
            return this.f18079a.equals(((SlowMotionData) obj).f18079a);
        }
        return false;
    }

    public int hashCode() {
        return this.f18079a.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f18079a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(this.f18079a);
    }
}
