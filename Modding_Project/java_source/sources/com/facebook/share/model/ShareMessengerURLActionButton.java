package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareMessengerURLActionButton.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Uri f16775b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Uri f16776c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f16777d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f16778e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final WebviewHeightRatio f16779f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f16774g = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new a();

    /* compiled from: ShareMessengerURLActionButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum WebviewHeightRatio {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact
    }

    /* compiled from: ShareMessengerURLActionButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareMessengerURLActionButton> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareMessengerURLActionButton createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareMessengerURLActionButton(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareMessengerURLActionButton[] newArray(int i10) {
            return new ShareMessengerURLActionButton[i10];
        }
    }

    /* compiled from: ShareMessengerURLActionButton.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareMessengerURLActionButton(@NotNull Parcel parcel) {
        super(parcel);
        boolean z10;
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16775b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        if (parcel.readByte() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f16777d = z10;
        this.f16776c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f16779f = (WebviewHeightRatio) parcel.readSerializable();
        this.f16778e = parcel.readByte() != 0;
    }

    @Override // com.facebook.share.model.ShareMessengerActionButton, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        super.writeToParcel(dest, i10);
        dest.writeParcelable(this.f16775b, 0);
        dest.writeByte(this.f16777d ? (byte) 1 : (byte) 0);
        dest.writeParcelable(this.f16776c, 0);
        dest.writeSerializable(this.f16779f);
        dest.writeByte(this.f16777d ? (byte) 1 : (byte) 0);
    }
}
