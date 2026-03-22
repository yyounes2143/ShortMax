package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CameraEffectArguments.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CameraEffectArguments implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f16738a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final c f16737b = new c(null);
    @NotNull
    public static final Parcelable.Creator<CameraEffectArguments> CREATOR = new b();

    /* compiled from: CameraEffectArguments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f16739a = new Bundle();

        @NotNull
        public CameraEffectArguments a() {
            return new CameraEffectArguments(this, null);
        }

        @NotNull
        public final Bundle b() {
            return this.f16739a;
        }

        @NotNull
        public final a c(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return d((CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader()));
        }

        @NotNull
        public a d(@Nullable CameraEffectArguments cameraEffectArguments) {
            if (cameraEffectArguments != null) {
                this.f16739a.putAll(cameraEffectArguments.f16738a);
            }
            return this;
        }
    }

    /* compiled from: CameraEffectArguments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<CameraEffectArguments> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public CameraEffectArguments createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new CameraEffectArguments(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public CameraEffectArguments[] newArray(int i10) {
            return new CameraEffectArguments[i10];
        }
    }

    /* compiled from: CameraEffectArguments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public /* synthetic */ CameraEffectArguments(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeBundle(this.f16738a);
    }

    private CameraEffectArguments(a aVar) {
        this.f16738a = aVar.b();
    }

    public CameraEffectArguments(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16738a = parcel.readBundle(CameraEffectArguments.class.getClassLoader());
    }
}
