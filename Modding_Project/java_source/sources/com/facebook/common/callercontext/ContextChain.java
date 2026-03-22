package com.facebook.common.callercontext;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
/* loaded from: classes3.dex */
public class ContextChain implements Parcelable {
    public static final Parcelable.Creator<ContextChain> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f15294a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15295b;

    /* renamed from: c  reason: collision with root package name */
    private final ContextChain f15296c;

    /* renamed from: d  reason: collision with root package name */
    private String f15297d;

    /* renamed from: e  reason: collision with root package name */
    private String f15298e;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<ContextChain> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ContextChain createFromParcel(Parcel parcel) {
            return new ContextChain(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ContextChain[] newArray(int i10) {
            return new ContextChain[i10];
        }
    }

    protected ContextChain(Parcel parcel) {
        this.f15294a = parcel.readString();
        this.f15295b = parcel.readString();
        this.f15298e = parcel.readString();
        this.f15296c = (ContextChain) parcel.readParcelable(ContextChain.class.getClassLoader());
    }

    protected String a() {
        return this.f15298e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ContextChain contextChain = (ContextChain) obj;
        if (Objects.equals(a(), contextChain.a()) && Objects.equals(this.f15296c, contextChain.f15296c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f15296c, a());
    }

    public String toString() {
        if (this.f15297d == null) {
            this.f15297d = a();
            if (this.f15296c != null) {
                this.f15297d = this.f15296c.toString() + '/' + this.f15297d;
            }
        }
        return this.f15297d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f15294a);
        parcel.writeString(this.f15295b);
        parcel.writeString(a());
        parcel.writeParcelable(this.f15296c, i10);
    }
}
