package com.facebook.share.model;

import android.os.Parcel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareMessengerActionButton.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class ShareMessengerActionButton implements ShareModel {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f16773a;

    public ShareMessengerActionButton(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16773a = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.f16773a);
    }
}
