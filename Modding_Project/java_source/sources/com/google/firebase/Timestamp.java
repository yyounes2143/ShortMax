package com.google.firebase;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Timestamp.kt */
@Metadata
/* loaded from: classes5.dex */
public final class Timestamp implements Comparable<Timestamp>, Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final long f20319a;

    /* renamed from: b  reason: collision with root package name */
    private final int f20320b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final b f20318c = new b(null);
    @NotNull
    public static final Parcelable.Creator<Timestamp> CREATOR = new a();

    /* compiled from: Timestamp.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator<Timestamp> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Timestamp createFromParcel(Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new Timestamp(source.readLong(), source.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Timestamp[] newArray(int i10) {
            return new Timestamp[i10];
        }
    }

    /* compiled from: Timestamp.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(long j10, int i10) {
            if (i10 >= 0 && i10 < 1000000000) {
                if (-62135596800L <= j10 && j10 < 253402300800L) {
                    return;
                }
                throw new IllegalArgumentException(("Timestamp seconds out of range: " + j10).toString());
            }
            throw new IllegalArgumentException(("Timestamp nanoseconds out of range: " + i10).toString());
        }

        private b() {
        }
    }

    public Timestamp(long j10, int i10) {
        f20318c.b(j10, i10);
        this.f20319a = j10;
        this.f20320b = i10;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(@NotNull Timestamp other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return ps.a.b(this, other, new PropertyReference1Impl() { // from class: com.google.firebase.Timestamp$compareTo$1
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object obj) {
                return Long.valueOf(((Timestamp) obj).c());
            }
        }, new PropertyReference1Impl() { // from class: com.google.firebase.Timestamp$compareTo$2
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object obj) {
                return Integer.valueOf(((Timestamp) obj).b());
            }
        });
    }

    public final int b() {
        return this.f20320b;
    }

    public final long c() {
        return this.f20319a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != this && (!(obj instanceof Timestamp) || compareTo((Timestamp) obj) != 0)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j10 = this.f20319a;
        return (((((int) j10) * 1369) + ((int) (j10 >> 32))) * 37) + this.f20320b;
    }

    @NotNull
    public String toString() {
        return "Timestamp(seconds=" + this.f20319a + ", nanoseconds=" + this.f20320b + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.f20319a);
        dest.writeInt(this.f20320b);
    }
}
