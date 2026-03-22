package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareHashtag.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareHashtag implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f16764a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final c f16763b = new c(null);
    @NotNull
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new b();

    /* compiled from: ShareHashtag.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f16765a;

        @NotNull
        public ShareHashtag a() {
            return new ShareHashtag(this, null);
        }

        @Nullable
        public final String b() {
            return this.f16765a;
        }

        @NotNull
        public a c(@Nullable ShareHashtag shareHashtag) {
            if (shareHashtag == null) {
                return this;
            }
            return e(shareHashtag.a());
        }

        @NotNull
        public final a d(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return c((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
        }

        @NotNull
        public final a e(@Nullable String str) {
            this.f16765a = str;
            return this;
        }
    }

    /* compiled from: ShareHashtag.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<ShareHashtag> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareHashtag createFromParcel(@NotNull Parcel source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new ShareHashtag(source);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareHashtag[] newArray(int i10) {
            return new ShareHashtag[i10];
        }
    }

    /* compiled from: ShareHashtag.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public /* synthetic */ ShareHashtag(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @Nullable
    public final String a() {
        return this.f16764a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f16764a);
    }

    private ShareHashtag(a aVar) {
        this.f16764a = aVar.b();
    }

    public ShareHashtag(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16764a = parcel.readString();
    }
}
