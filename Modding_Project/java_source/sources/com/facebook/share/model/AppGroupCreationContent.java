package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppGroupCreationContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AppGroupCreationContent implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f16734a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f16735b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final AppGroupPrivacy f16736c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final b f16733d = new b(null);
    @NotNull
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new a();

    /* compiled from: AppGroupCreationContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum AppGroupPrivacy {
        Open,
        Closed
    }

    /* compiled from: AppGroupCreationContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<AppGroupCreationContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @Nullable
        /* renamed from: a */
        public AppGroupCreationContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new AppGroupCreationContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public AppGroupCreationContent[] newArray(int i10) {
            return new AppGroupCreationContent[i10];
        }
    }

    /* compiled from: AppGroupCreationContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public AppGroupCreationContent(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16734a = parcel.readString();
        this.f16735b = parcel.readString();
        this.f16736c = (AppGroupPrivacy) parcel.readSerializable();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.f16734a);
        out.writeString(this.f16735b);
        out.writeSerializable(this.f16736c);
    }
}
