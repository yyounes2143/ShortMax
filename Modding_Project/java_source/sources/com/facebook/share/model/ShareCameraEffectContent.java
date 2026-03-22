package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.CameraEffectArguments;
import com.facebook.share.model.CameraEffectTextures;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareCameraEffectContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareCameraEffectContent extends ShareContent<ShareCameraEffectContent, Object> {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f16754g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private CameraEffectArguments f16755h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CameraEffectTextures f16756i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final b f16753j = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareCameraEffectContent> CREATOR = new a();

    /* compiled from: ShareCameraEffectContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareCameraEffectContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareCameraEffectContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareCameraEffectContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareCameraEffectContent[] newArray(int i10) {
            return new ShareCameraEffectContent[i10];
        }
    }

    /* compiled from: ShareCameraEffectContent.kt */
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
    public ShareCameraEffectContent(@NotNull Parcel parcel) {
        super(parcel);
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16754g = parcel.readString();
        this.f16755h = new CameraEffectArguments.a().c(parcel).a();
        this.f16756i = new CameraEffectTextures.a().c(parcel).a();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeString(this.f16754g);
        out.writeParcelable(this.f16755h, 0);
        out.writeParcelable(this.f16756i, 0);
    }
}
