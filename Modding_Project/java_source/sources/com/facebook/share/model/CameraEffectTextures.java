package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CameraEffectTextures.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CameraEffectTextures implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f16741a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final c f16740b = new c(null);
    @NotNull
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new b();

    /* compiled from: CameraEffectTextures.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f16742a = new Bundle();

        @NotNull
        public CameraEffectTextures a() {
            return new CameraEffectTextures(this, null);
        }

        @NotNull
        public final Bundle b() {
            return this.f16742a;
        }

        @NotNull
        public final a c(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return d((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
        }

        @NotNull
        public a d(@Nullable CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.f16742a.putAll(cameraEffectTextures.f16741a);
            }
            return this;
        }
    }

    /* compiled from: CameraEffectTextures.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements Parcelable.Creator<CameraEffectTextures> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public CameraEffectTextures createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new CameraEffectTextures(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public CameraEffectTextures[] newArray(int i10) {
            return new CameraEffectTextures[i10];
        }
    }

    /* compiled from: CameraEffectTextures.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public /* synthetic */ CameraEffectTextures(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeBundle(this.f16741a);
    }

    private CameraEffectTextures(a aVar) {
        this.f16741a = aVar.b();
    }

    public CameraEffectTextures(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16741a = parcel.readBundle(CameraEffectTextures.class.getClassLoader());
    }
}
