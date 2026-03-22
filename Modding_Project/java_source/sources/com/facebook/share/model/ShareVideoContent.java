package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShareVideoContent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ShareVideoContent extends ShareContent<ShareVideoContent, Object> implements ShareModel {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f16803g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final String f16804h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final SharePhoto f16805i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final ShareVideo f16806j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final b f16802k = new b(null);
    @NotNull
    public static final Parcelable.Creator<ShareVideoContent> CREATOR = new a();

    /* compiled from: ShareVideoContent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator<ShareVideoContent> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: a */
        public ShareVideoContent createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ShareVideoContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: b */
        public ShareVideoContent[] newArray(int i10) {
            return new ShareVideoContent[i10];
        }
    }

    /* compiled from: ShareVideoContent.kt */
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
    public ShareVideoContent(@NotNull Parcel parcel) {
        super(parcel);
        SharePhoto d10;
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.f16803g = parcel.readString();
        this.f16804h = parcel.readString();
        SharePhoto.a j10 = new SharePhoto.a().j(parcel);
        if (j10.g() == null && j10.e() == null) {
            d10 = null;
        } else {
            d10 = j10.d();
        }
        this.f16805i = d10;
        this.f16806j = new ShareVideo.a().g(parcel).d();
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i10) {
        Intrinsics.checkNotNullParameter(out, "out");
        super.writeToParcel(out, i10);
        out.writeString(this.f16803g);
        out.writeString(this.f16804h);
        out.writeParcelable(this.f16805i, 0);
        out.writeParcelable(this.f16806j, 0);
    }
}
